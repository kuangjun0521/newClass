package com.qst.pojo;


public class Course {

	private int user_id;
	private String course_name;
	private String course_desc;
	private String course_img;
	private String course_teacher;
	private String course_type;
	private int second_id;
	private int third_id;
	
	public int getThird_id() {
		return third_id;
	}
	public void setThird_id(int third_id) {
		this.third_id = third_id;
	}
	public Course() {
		super();
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getCourse_name() {
		return course_name;
	}
	public void setCourse_name(String course_name) {
		this.course_name = course_name;
	}
	public String getCourse_desc() {
		return course_desc;
	}
	public void setCourse_desc(String course_desc) {
		this.course_desc = course_desc;
	}

	public String getCourse_img() {
		return course_img;
	}
	public void setCourse_img(String course_img) {
		this.course_img = course_img;
	}
	public String getCourse_teacher() {
		return course_teacher;
	}
	public void setCourse_teacher(String course_teacher) {
		this.course_teacher = course_teacher;
	}
	public String getCourse_type() {
		return course_type;
	}
	public void setCourse_type(String course_type) {
		this.course_type = course_type;
	}
	public int getSecond_id() {
		return second_id;
	}
	public void setSecond_id(int second_id) {
		this.second_id = second_id;
	}
	
	
}
