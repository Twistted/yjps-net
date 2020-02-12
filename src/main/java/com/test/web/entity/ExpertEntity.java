package com.test.web.entity;

import java.util.Date;

public class ExpertEntity {
	
	private int expertId;
	private String title;
	private String content;
	private String author;
	private Date timestamp;
	private int state;
	
	public int getExpertId() {
		return expertId;
	}
	public void setExpertId(int expertId) {
		this.expertId = expertId;
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
	public Date getTimestamp() {
		return timestamp;
	}
	public void setTimestamp(Date timestamp) {
		this.timestamp = timestamp;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	
	@Override
	public String toString(){
		return "Expert [expertId=" + expertId + ",title=" + title + ",content=" + content + ",author=" + author + 
			    ",timestamp=" + timestamp + ",state=" + state;
	}

}
