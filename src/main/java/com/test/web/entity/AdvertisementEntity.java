package com.test.web.entity;

import java.util.Date;

public class AdvertisementEntity {
	private int advertisementId;
	private String advertisementUrl;
	private String title;
	private Date timestamp;
	private int state;
	
	public int getAdvertisementId() {
		return advertisementId;
	}
	public void setAdvertisementId(int advertisementId) {
		this.advertisementId = advertisementId;
	}
	public String getAdvertisementUrl() {
		return advertisementUrl;
	}
	public void setAdvertisementUrl(String advertisementUrl) {
		this.advertisementUrl = advertisementUrl;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
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
		return "Advertisement [advertisementId=" + advertisementId + ",advertisementUrl=" + advertisementId + 
			    ",title=" + title + ",timestamp=" + timestamp + ",state=" + state;
	}

}