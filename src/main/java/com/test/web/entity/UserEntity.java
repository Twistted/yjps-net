package com.test.web.entity;

import java.util.Date;

/**
 * 用户实体对象类
 *
 */
public class UserEntity {

	private int userId;
	private String account;   //账号
	private String password;  //密码 
	private String name;  //密码
	private int state;
	private int sex;
	private int age;
	public String getTimestamp() {
		return timestamp;
	}
	public void setTimestamp(String timestamp) {
		this.timestamp = timestamp;
	}

	private String photoUrl;
	private String timestamp;
	private String contact;
	
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public int getSex() {
		return sex;
	}
	public void setSex(int sex) {
		this.sex = sex;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getPhotoUrl() {
		return photoUrl;
	}
	public void setPhotoUrl(String photoUrl) {
		this.photoUrl = photoUrl;
	}
	
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	
	@Override
	public String toString(){
		return "User [userId=" + userId + ",account=" + account + ",password=" + password + ",name=" + name + 
				",state=" + state + ",sex=" + sex + ",age=" + age + ",photoUrl=" + photoUrl + ",timestamp=" + timestamp +
				",contact=" + contact;
	}


}
