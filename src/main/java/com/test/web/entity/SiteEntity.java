package com.test.web.entity;

import java.util.Date;

public class SiteEntity {
	
	private String name;
	private String licence;
	private String logoUrl;
	private String webName;
	private String phone;
	private String address;
	private Date registerTime;
	private String legalPerson;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getLicence() {
		return licence;
	}
	public void setLicence(String licence) {
		this.licence = licence;
	}
	public String getLogoUrl() {
		return logoUrl;
	}
	public void setLogoUrl(String logoUrl) {
		this.logoUrl = logoUrl;
	}
	public String getWebName() {
		return webName;
	}
	public void setWebName(String webName) {
		this.webName = webName;
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
	public Date getRegisterTime() {
		return registerTime;
	}
	public void setRegisterTime(Date registerTime) {
		this.registerTime = registerTime;
	}
	public String getLegalPerson() {
		return legalPerson;
	}
	public void setLegalPerson(String legalPerson) {
		this.legalPerson = legalPerson;
	}
	
	@Override
	public String toString(){
		return "Site [name=" + name + ",licence=" + licence + ",logoUrl=" + logoUrl + ",webName=" + webName + 
			    ",phone=" + phone + ",address=" + address + ",registerTime=" + registerTime + 
			    ",legalPerson=" + legalPerson;
	}

}
