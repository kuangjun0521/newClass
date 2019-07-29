package com.qst.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/*

@WebServlet(name="VideoAction",urlPatterns = {"/vod"})
public class VideoAction extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        DefaultAcsClient client = initVodClient("LTAIkO5nb47sVrKo", "ItF7gvDRYwSJwXzMb95xLwpvRCdTes");
        GetPlayInfoResponse response = new GetPlayInfoResponse();
        String PlayURL = null;
        try {
            response = getPlayInfo(client);
            List<GetPlayInfoResponse.PlayInfo> playInfoList = response.getPlayInfoList();
            //播放地址
            for (GetPlayInfoResponse.PlayInfo playInfo : playInfoList) {
                PlayURL = playInfo.getPlayURL();
            }
            //Base信息
            System.out.print("VideoBase.Title = " + response.getVideoBase().getTitle() + "\n");
        } catch (Exception e) {
            System.out.print("ErrorMessage = " + e.getLocalizedMessage());
        }
        req.getSession().setAttribute("PlayURL",PlayURL);
        req.getRequestDispatcher("index.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req,resp);
    }

    初始化客户端
    public static DefaultAcsClient initVodClient(String accessKeyId, String accessKeySecret) {
        //点播服务所在的Region，国内请填cn-shanghai，不要填写别的区域
        String regionId = "cn-shanghai";
        DefaultProfile profile = DefaultProfile.getProfile(regionId, accessKeyId, accessKeySecret);
        DefaultAcsClient client = new DefaultAcsClient(profile);
        return client;
    }

    获取播放地址函数
    public static GetPlayInfoResponse getPlayInfo(DefaultAcsClient client) throws Exception {
        GetPlayInfoRequest request = new GetPlayInfoRequest();
        request.setVideoId("2223df59ef6e42dcb7379249390d39c8");
        return client.getAcsResponse(request);
    }
}
*/