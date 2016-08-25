package com.test.web.entity;

public class HouseEntity {
	
	private int houseId;
	private String title;
	private double prize;
	private double downPayment;
	private double monthlyPayment;
	private int orientation;
	private int floor;
	private int year;
	private String houseDescribe;
	private double area;
	private String houseTypeUrl;
	private String houseViewUrl;
	private int roomAmount;
	private int livingroomAmount;
	private int toiletAmount;
	private int balconyAmount;
	private int state;
	private int agentId;
	private int houseNumber;
	private String province;
	private String city;
	private String town;
	private String zone;
	private String villageName;
	private String address;
	
	public int getHouseId() {
		return houseId;
	}
	public void setHouseId(int houseId) {
		this.houseId = houseId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public double getPrize() {
		return prize;
	}
	public void setPrize(double prize) {
		this.prize = prize;
	}
	public double getDownPayment() {
		return downPayment;
	}
	public void setDownPayment(double downPayment) {
		this.downPayment = downPayment;
	}
	public double getMonthlyPayment() {
		return monthlyPayment;
	}
	public void setMonthlyPayment(double monthlyPayment) {
		this.monthlyPayment = monthlyPayment;
	}
	public int getOrientation() {
		return orientation;
	}
	public void setOrientation(int orientation) {
		this.orientation = orientation;
	}
	public int getFloor() {
		return floor;
	}
	public void setFloor(int floor) {
		this.floor = floor;
	}
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	public String getHouseDescribe() {
		return houseDescribe;
	}
	public void setHouseDescribe(String houseDescribe) {
		this.houseDescribe = houseDescribe;
	}
	public double getArea() {
		return area;
	}
	public void setArea(double area) {
		this.area = area;
	}
	public String getHouseType() {
		return houseTypeUrl;
	}
	public void setHouseType(String houseTypeUrl) {
		this.houseTypeUrl = houseTypeUrl;
	}
	public int getRoomAmount() {
		return roomAmount;
	}
	public void setRoomAmount(int roomAmount) {
		this.roomAmount = roomAmount;
	}
	public int getLivingroomAmount() {
		return livingroomAmount;
	}
	public void setLivingroomAmount(int livingroomAmount) {
		this.livingroomAmount = livingroomAmount;
	}
	public int getToiletAmount() {
		return toiletAmount;
	}
	public void setToiletAmount(int toiletAmount) {
		this.toiletAmount = toiletAmount;
	}
	public int getBalconyAmount() {
		return balconyAmount;
	}
	public void setBalconyAmount(int balconyAmount) {
		this.balconyAmount = balconyAmount;
	}
	public int getAgentId() {
		return agentId;
	}
	public void setAgentId(int agentId) {
		this.agentId = agentId;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public int getHouseNumber() {
		return houseNumber;
	}
	public void setHouseNumber(int houseNumber) {
		this.houseNumber = houseNumber;
	}
	public String getHouseTypeUrl() {
		return houseTypeUrl;
	}
	public void setHouseTypeUrl(String houseTypeUrl) {
		this.houseTypeUrl = houseTypeUrl;
	}
	public String getProvince() {
		return province;
	}
	public void setProvince(String province) {
		this.province = province;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getTown() {
		return town;
	}
	public void setTown(String town) {
		this.town = town;
	}
	public String getZone() {
		return zone;
	}
	public void setZone(String zone) {
		this.zone = zone;
	}
	public String getVillageName() {
		return villageName;
	}
	public void setVillageName(String villageName) {
		this.villageName = villageName;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	@Override
	public String toString() {
		return "House [houseId=" + houseId + ", title=" + title + ", prize=" + prize + ",downPayment=" + downPayment + 
			    ",monthlyPayment=" + monthlyPayment + ",orientation=" + orientation + ",floor=" + floor + 
				",year=" + year + ",houseDescribe=" + houseDescribe + ",area=" + area + ",houseTypeUrl=" + houseTypeUrl +
				",roomAmount=" + roomAmount + ",livingroomAmount=" + livingroomAmount +",toiletAmount=" + toiletAmount + 
				",balconyAmount=" + balconyAmount + ",state=" + state + ",agentId=" + agentId + ",houseNumber=" + houseNumber +
				",province=" + province + ",city=" + city + ",town=" + town + ",zone=" + zone + ",villageName=" + villageName +
				",address=" + address;
	}
	public String getHouseViewUrl() {
		return houseViewUrl;
	}
	public void setHouseViewUrl(String houseViewUrl) {
		this.houseViewUrl = houseViewUrl;
	}

}
