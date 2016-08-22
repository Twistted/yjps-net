package com.test.web.entity;

public class CityEntity {
	
	private int cityId;
	private int provinceId;
	private String cityName;
	
	public int getCityId() {
		return cityId;
	}
	public void setCityId(int cityId) {
		this.cityId = cityId;
	}
	public int getProvinceId() {
		return provinceId;
	}
	public void setProvinceId(int provinceId) {
		this.provinceId = provinceId;
	}
	public String getCityName() {
		return cityName;
	}
	public void setCityName(String cityName) {
		this.cityName = cityName;
	}
	
	@Override
	public String toString(){
		return "City [cityId=" + cityId + ",provinceId=" + provinceId + ",cityName=" + cityName;
	}

}
