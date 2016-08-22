package com.test.web.entity;

public class InterestEntity {
	
	private int interestId;
	private int userId;
	private int houseId;
	public int getInterestId() {
		return interestId;
	}
	public void setInterestId(int interestId) {
		this.interestId = interestId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getHouseId() {
		return houseId;
	}
	public void setHouseId(int houseId) {
		this.houseId = houseId;
	}
	
	@Override
	public String toString(){
		return "Interest [interestId=" + interestId + ",userId=" + userId + ",houseId=" + houseId;
	}
}
