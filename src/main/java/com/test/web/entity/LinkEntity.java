package com.test.web.entity;

public class LinkEntity {
	
	private int linkId;
	private String webUrl;
	private String webName;
	public int getLinkId() {
		return linkId;
	}
	public void setLinkId(int linkId) {
		this.linkId = linkId;
	}
	public String getWebUrl() {
		return webUrl;
	}
	public void setWebUrl(String webUrl) {
		this.webUrl = webUrl;
	}
	public String getWebName() {
		return webName;
	}
	public void setWebName(String webName) {
		this.webName = webName;
	}
	
	@Override
	public String toString(){
		return "Link [linkId=" + linkId + ",webUrl=" + webUrl + ",webName=" + webName;
	}
	
}
