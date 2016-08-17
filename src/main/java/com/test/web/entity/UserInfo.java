package com.test.web.entity;

public class UserInfo {
	
	private int userid;
	private String email;
	private String userName;
	private Integer age;
	private String password;
	
	
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
	@Override
	public String toString() {
		return "UserInfo [userid=" + userid + ", username=" + userName + ", age=" + age + ", password=" + password
				+ "]";
	}
	
	

}
