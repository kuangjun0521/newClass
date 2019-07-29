package com.qst.pojo;

public class NewsEntity {


	private int id;
	private String author;
	private String content;
	private String title;
	private String owner;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getOwner() {
		return owner;
	}
	public void setOwner(String owner) {
		this.owner = owner;
	}
	@Override
	public String toString() {
		return "NewsEntity [id=" + id + ", author=" + author + ", content=" + content + ", title=" + title + ", owner="
				+ owner + "]";
	}
	
	
}
