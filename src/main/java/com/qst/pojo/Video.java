package com.qst.pojo;

public class Video {

	private int id;
	private String video_desc;
	private String video_address;
	private int third_id;
	private String video_id;
	
	public Video() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getVideo_id() {
		return video_id;
	}

	public void setVideo_id(String video_id) {
		this.video_id = video_id;
	}

	public String getVideo_desc() {
		return video_desc;
	}
	public void setVideo_desc(String video_desc) {
		this.video_desc = video_desc;
	}
	public String getVideo_address() {
		return video_address;
	}
	public void setVideo_address(String video_address) {
		this.video_address = video_address;
	}
	public int getThird_id() {
		return third_id;
	}
	public void setThird_id(int third_id) {
		this.third_id = third_id;
	}
	
	
}
