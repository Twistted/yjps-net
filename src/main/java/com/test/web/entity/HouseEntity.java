package com.test.web.entity;

public class HouseEntity {
	
	private int houseId;
	private String title;
	private double prize;
	private double downPayment;
	private double monthlyPayment;
	private String orientation;
	private int floor;
	private int villageId;
	private int year;
	private String houseDescribe;
	private double area;
	private String houseType;
	private int roomAmount;
	private int livingroomAmount;
	private int toiletAmount;
	private int balconyAmount;
	
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
	public String getOrientation() {
		return orientation;
	}
	public void setOrientation(String orientation) {
		this.orientation = orientation;
	}
	public int getFloor() {
		return floor;
	}
	public void setFloor(int floor) {
		this.floor = floor;
	}
	public int getVillageId() {
		return villageId;
	}
	public void setVillageId(int villageId) {
		this.villageId = villageId;
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
		return houseType;
	}
	public void setHouseType(String houseType) {
		this.houseType = houseType;
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
	
	@Override
	public String toString() {
		return "House [houseId=" + houseId + ", title=" + title + ", prize=" + prize + ",downPayment=" + downPayment + 
			    ",monthlyPayment=" + monthlyPayment + ",orientation=" + orientation + ",floor=" + floor + ",villageId=" +
				villageId + ",year=" + year + ",houseDescribe=" + houseDescribe + ",area=" + area + ",houseType=" + houseType +
				",roomAmount=" + roomAmount + ",livingroomAmount=" + livingroomAmount +",toiletAmount=" + toiletAmount + ",balconyAmount=" + balconyAmount ;
	}

}
