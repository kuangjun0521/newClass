package com.qst.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;

import com.aliyun.vod.upload.impl.UploadVideoImpl;
import com.aliyun.vod.upload.req.UploadVideoRequest;
import com.aliyun.vod.upload.resp.UploadVideoResponse;
import com.aliyuncs.DefaultAcsClient;
import com.aliyuncs.profile.DefaultProfile;
import com.aliyuncs.vod.model.v20170321.GetPlayInfoRequest;
import com.aliyuncs.vod.model.v20170321.GetPlayInfoResponse;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.qst.dao.CourseDao;
import com.qst.pojo.Video;

public class VideoAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Autowired
	CourseDao coursedao;
	
	Video video;
	List<Video> videolist;
	public List<Video> getVideolist() {
		return videolist;
	}

	public void setVideolist(List<Video> videolist) {
		this.videolist = videolist;
	}

	public VideoAction() {
		super();
	}

	public Video getVideo() {
		return video;
	}

	public void setVideo(Video video) {
		this.video = video;
	}

	// 账号AK信息请填写(必选)
	private static final String accessKeyId = "LTAIbOlg7PmBMn0D";
	// 账号AK信息请填写(必选)
	private static final String accessKeySecret = "aIx1dbs9FqX7eUkVQST0Tpmq0J6v88";

	public String uploadVideo() {

		// 视频标题(必选)
		String title = video.getVideo_desc();
		System.out.println(title+"=====");
		// 1.本地文件上传和文件流上传时，文件名称为上传文件绝对路径，如:/User/sample/文件名称.mp4 (必选)
		// 任何上传方式文件名必须包含扩展名
		String fileName = video.getVideo_address();
		System.out.println(fileName+"[[[[");
		// 本地文件上传
		testUploadVideo(accessKeyId, accessKeySecret, title, fileName);
		return "success";

	}

	/**
	 * 本地文件上传接口
	 * 
	 * @param accessKeyId
	 * @param accessKeySecret
	 * @param title
	 * @param fileName
	 */
	public void testUploadVideo(String accessKeyId, String accessKeySecret, String title, String fileName) {
		UploadVideoRequest request = new UploadVideoRequest(accessKeyId, accessKeySecret, title, fileName);
		/* 可指定分片上传时每个分片的大小，默认为1M字节 */
		request.setPartSize(1 * 1024 * 1024L);
		/* 可指定分片上传时的并发线程数，默认为1，(注：该配置会占用服务器CPU资源，需根据服务器情况指定） */
		request.setTaskNum(1);
		/*
		 * 是否开启断点续传,
		 * 默认断点续传功能关闭。当网络不稳定或者程序崩溃时，再次发起相同上传请求，可以继续未完成的上传任务，适用于超时3000秒仍不能上传完成的大文件。 注意:
		 * 断点续传开启后，会在上传过程中将上传位置写入本地磁盘文件，影响文件上传速度，请您根据实际情况选择是否开启
		 */
		request.setEnableCheckpoint(false);

		UploadVideoImpl uploader = new UploadVideoImpl();
		UploadVideoResponse response = uploader.uploadVideo(request);
		System.out.print("RequestId=" + response.getRequestId() + "\n"); // 请求视频点播服务的请求ID
		if (response.isSuccess()) {
			video.setVideo_id(response.getVideoId());
			coursedao.insertVideo(video);
			System.out.print("VideoId=" + response.getVideoId() + "\n");
			
		} else {
			/*
			 * 如果设置回调URL无效，不影响视频上传，可以返回VideoId同时会返回错误码。其他情况上传失败时，VideoId为空，
			 * 此时需要根据返回错误码分析具体错误原因
			 */
			System.out.print("VideoId=" + response.getVideoId() + "\n");
			System.out.print("ErrorCode=" + response.getCode() + "\n");
			System.out.print("ErrorMessage=" + response.getMessage() + "\n");
		}
	}

    //查询课程下对应的所有视频
	public String showAllVideo() {
		//将所有信息存入session之中
        HttpServletRequest request = ServletActionContext.getRequest();
        HttpSession session = request.getSession();  //定义session来存放数据
		videolist = coursedao.selectAllVideo(video);
		if(!videolist.isEmpty()) {
			video = coursedao.selectVideo(videolist.get(0));
			session.setAttribute("videolist", videolist);
			showfirstVideo();
			return "success";
		}else {
			JOptionPane.showMessageDialog(null,"还没有上传视频哦！");
			return "error";
		}
	}
	
	/*点击进去先显示第一个视频*/
	public String showfirstVideo() {

		DefaultAcsClient client = initVodClient("LTAIbOlg7PmBMn0D", "aIx1dbs9FqX7eUkVQST0Tpmq0J6v88");
		GetPlayInfoResponse response = new GetPlayInfoResponse();
		String PlayURL = null;
		try {
			response = getPlayInfo1(client);
			List<GetPlayInfoResponse.PlayInfo> playInfoList = response.getPlayInfoList();
			// 播放地址
			for (GetPlayInfoResponse.PlayInfo playInfo : playInfoList) {
				PlayURL = playInfo.getPlayURL();
				ActionContext ac1 = ActionContext.getContext();
				ac1.getSession().put("url", PlayURL);
			}
			// Base信息
			System.out.print("VideoBase.Title = " + response.getVideoBase().getTitle() + "\n");
		} catch (Exception e) {
			System.out.print("ErrorMessage = " + e.getLocalizedMessage());
		}
		/*
		 * req.getSession().setAttribute("PlayURL",PlayURL);
		 * req.getRequestDispatcher("videoVod.jsp").forward(req, resp);
		 */
		return "success";

	}
	
	/* 获取videolist里面第一个播放地址函数 */
	public  GetPlayInfoResponse getPlayInfo1(DefaultAcsClient client) throws Exception {
		GetPlayInfoRequest request = new GetPlayInfoRequest();
		request.setVideoId(videolist.get(0).getVideo_id());
		System.out.println(video.getVideo_desc()+".....video_desc");
		return client.getAcsResponse(request);
	}
	
	public String showVideo() {

		DefaultAcsClient client = initVodClient("LTAIbOlg7PmBMn0D", "aIx1dbs9FqX7eUkVQST0Tpmq0J6v88");
		GetPlayInfoResponse response = new GetPlayInfoResponse();
		String PlayURL = null;
		try {
			response = getPlayInfo(client);
			List<GetPlayInfoResponse.PlayInfo> playInfoList = response.getPlayInfoList();
			// 播放地址
			for (GetPlayInfoResponse.PlayInfo playInfo : playInfoList) {
				PlayURL = playInfo.getPlayURL();
				ActionContext ac1 = ActionContext.getContext();
				ac1.getSession().put("url", PlayURL);
				System.out.println("PlayURL:  "+PlayURL);
			}
			// Base信息
			System.out.print("VideoBase.Title = " + response.getVideoBase().getTitle() + "\n");
		} catch (Exception e) {
			System.out.print("ErrorMessage = " + e.getLocalizedMessage());
		}
		/*
		 * req.getSession().setAttribute("PlayURL",PlayURL);
		 * req.getRequestDispatcher("videoVod.jsp").forward(req, resp);
		 */
		return "success";

	}

	/* 初始化客户端 */
	public static DefaultAcsClient initVodClient(String accessKeyId, String accessKeySecret) {
		// 点播服务所在的Region，国内请填cn-shanghai，不要填写别的区域
		String regionId = "cn-shanghai";
		DefaultProfile profile = DefaultProfile.getProfile(regionId, accessKeyId, accessKeySecret);
		DefaultAcsClient client = new DefaultAcsClient(profile);
		return client;
	}

	/* 获取播放地址函数 */
	public  GetPlayInfoResponse getPlayInfo(DefaultAcsClient client) throws Exception {
		GetPlayInfoRequest request = new GetPlayInfoRequest();
		video = coursedao.selectVideo(video);
		System.out.println(video.getVideo_id()+".....video_id");
		request.setVideoId(video.getVideo_id());
		return client.getAcsResponse(request);
	}
}
