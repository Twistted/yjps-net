package com.test.web.entity;

public class AboutEntity {
	
	private int aboutId;
	private String content;
	private String phone;
	private String address;
	private String webAddress;
	
	public int getAboutId() {
		return aboutId;
	}
	public void setAboutId(int aboutId) {
		this.aboutId = aboutId;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getWebAddress() {
		return webAddress;
	}
	public void setWebAddress(String webAddress) {
		this.webAddress = webAddress;
	}
	
	@Override
	public String toString(){
		return "About [aboutId=" + aboutId + ",content=" + content + ",phone=" + phone + ",address=" + address + 
			    ",webAddress=" + webAddress;
	}

}
