package com.test.web.entity;

import java.util.Date;

public class NewsEntity {
	
	private int newsId;
	private String title;
	private String content;
	private String author;
	private String timestamp;
	private int state;
	
	public int getNewsId() {
		return newsId;
	}
	public void setNewsId(int newsId) {
		this.newsId = newsId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getTimestamp() {
		return timestamp;
	}
	public void setTimestamp(String dateString) {
		this.timestamp = dateString;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	
	@Override
	public String toString(){
		return "News [newsId=" + newsId + ",title=" + title + ",content=" + content + ",author=" + author + 
			    ",timestamp=" + timestamp + ",state=" + state;
	}

}
