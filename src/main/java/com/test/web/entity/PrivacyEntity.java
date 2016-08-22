package com.test.web.entity;

import java.util.Date;

public class PrivacyEntity {
	
	private int privacyId;
	private String content;
	private Date timestamp;
	private String author;
	private int state;
	
	public int getPrivacyId() {
		return privacyId;
	}
	public void setPrivacyId(int privacyId) {
		this.privacyId = privacyId;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getTimestamp() {
		return timestamp;
	}
	public void setTimestamp(Date timestamp) {
		this.timestamp = timestamp;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	
	@Override
	public String toString(){
		return "Privacy [privacyId=" + privacyId + ",content=" + content + ",timestamp=" + timestamp +
			    ",author=" + author + ",state=" + state;
	}

}
