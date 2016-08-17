package com.test.web.entity;

public class ManagerEntity {
	
	private int managerId;
	private String account;
	private String password;
	private int state;
	private int level;
	private String photoUrl;
	public int getManagerId() {
		return managerId;
	}
	public void setManagerId(int managerId) {
		this.managerId = managerId;
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
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public int getLevel() {
		return level;
	}
	public void setLevel(int level) {
		this.level = level;
	}
	public String getPhotoUrl() {
		return photoUrl;
	}
	public void setPhotoUrl(String photoUrl) {
		this.photoUrl = photoUrl;
	}
	
	@Override
	public String toString(){
		return "Manager [managerId=" + managerId + ", account=" + account + ", password=" + password + ",state=" + state + 
			    ",level=" + level + ",photoUrl=" + photoUrl;
	}

}
