package com.qst.action;

import java.io.File;
import java.util.HashMap;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;
import com.qst.utils.FileUtil;

public class ImageAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private File myFile;
	private String myFileFileName;
	private Map<String, Object> map = new HashMap<>();
	
	public ImageAction() {
		super();
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
	    	 return SUCCESS;
	     }

}
