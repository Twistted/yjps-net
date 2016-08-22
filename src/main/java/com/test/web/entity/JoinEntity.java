package com.test.web.entity;

public class JoinEntity {
	
	private int joinId;
	private String joinUrl;
	private int state;
	
	public int getJoinId() {
		return joinId;
	}
	public void setJoinId(int joinId) {
		this.joinId = joinId;
	}
	public String getJoinUrl() {
		return joinUrl;
	}
	public void setJoinUrl(String joinUrl) {
		this.joinUrl = joinUrl;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	
	@Override
	public String toString(){
		return "Join [joinId=" + joinId + ",joinUrl=" + joinUrl +",state=" + state;
	}

}
