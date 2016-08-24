package com.test.web.entity;

public class HousePhotoEntity {
	
	private int housePhotoId;
	private String photoUrl;
	private int houseId;
	
	public int getHousePhotoId() {
		return housePhotoId;
	}
	public void setHousePhotoId(int housePhotoId) {
		this.housePhotoId = housePhotoId;
	}
	public String getPhotoUrl() {
		return photoUrl;
	}
	public void setPhotoUrl(String photoUrl) {
		this.photoUrl = photoUrl;
	}
	public int getHouseId() {
		return houseId;
	}
	public void setHouseId(int houseId) {
		this.houseId = houseId;
	}
	
	@Override
	public String toString(){
		return "HousePhoto [housePhotoId=" + housePhotoId + ",photoUrl=" + photoUrl + ",houseId=" + houseId;
	}

}
