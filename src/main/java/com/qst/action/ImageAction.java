package com.qst.action;

import java.io.File;
import java.util.HashMap;
import java.util.Map;

import javax.swing.JOptionPane;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;
import com.qst.dao.CourseDao;
import com.qst.dao.FirstDao;
import com.qst.pojo.Course;
import com.qst.utils.FileUtil;

public class ImageAction extends ActionSupport{

	/**
	 * 
	 */
	@Autowired
	CourseDao coursedao;
	
	@Autowired
	FirstDao firstdao;
	private static final long serialVersionUID = 1L;
	private File myFile;
	private String myFileFileName;
	private Map<String, Object> map = new HashMap<>();
	Course course;
	public ImageAction() {
		super();
	}
	
	public Course getCourse() {
		return course;
	}

	public void setCourse(Course course) {
		this.course = course;
	}

	public Map<String, Object> getMap() {
		return map;
	}
	public void setMap(Map<String, Object> map) {
		this.map = map;
	}
	public File getMyFile() {
		return myFile;
	}
	public void setMyFile(File myFile) {
		this.myFile = myFile;
	}
	public String getMyFileFileName() {
		return myFileFileName;
	}
	public void setMyFileFileName(String myFileFileName) {
		this.myFileFileName = myFileFileName;
	}
	
	 public String uploadImage() {
		 System.out.println("============");
	    	String path = "E:\\work\\";
			 //String fileName = myFile.getName(); 
			 File dirf = new File(path);
				// 不存在则创建
			 if ( ! dirf.exists()) {
					dirf.mkdirs();
			 }
			 File saveFile = new File(new File(path), myFileFileName);
				if(!saveFile.getParentFile().exists()){     //如果Images文件夹不存在
					saveFile.getParentFile().mkdirs();      //则创建新的多级文件夹
				}
			 FileUtil.copy(myFile, saveFile);
			 String url = "/upload/"+myFileFileName;
			 map.put("src", url);
			 System.out.println(url);
	    	 return url;
	     }
	//添加新的三级课程
			public String addthird() {
				
			course.setCourse_img(uploadImage());
	         System.out.println(course.getCourse_img()+"图片地址");
			  coursedao.addCourse(course);
			  JOptionPane.showMessageDialog(null,"创建成功了哦！");
			  return "success";
			}
			
			//更新一个三级课程
			public String updateOneThird() {
				if(myFile!=null) {//如果重新上传了图片
					course.setCourse_img(uploadImage());
				}
				firstdao.updateOneThird(course);//更新三级课程
				 JOptionPane.showMessageDialog(null,"更新成功了哦！");
				return "success";
			}

}
