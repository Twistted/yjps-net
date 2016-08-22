package com.test.web.entity;

public class TownEntity {
	
	private int townId;
	private int cityId;
	private String townName;
	public int getTownId() {
		return townId;
	}
	public void setTownId(int townId) {
		this.townId = townId;
	}
	public int getCityId() {
		return cityId;
	}
	public void setCityId(int cityId) {
		this.cityId = cityId;
	}
	public String getTownName() {
		return townName;
	}
	public void setTownName(String townName) {
		this.townName = townName;
	}
	
	@Override
	public String toString(){
		return "Town [townId=" + townId + ",cityId=" + cityId + ",townName=" + townName;
	}

}
