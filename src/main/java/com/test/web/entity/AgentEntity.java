package com.test.web.entity;

public class AgentEntity {
	
	private int agentId;
	private String account;
	private String password;
	private String name;
	private int age;
	private int sex;
	private String phone;
	private String email;
	private String photoUrl;
	private int state;
	private String introduction;
	private String company;
	private int year;
	
	public int getAgentId() {
		return agentId;
	}
	public void setAgentId(int agentId) {
		this.agentId = agentId;
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
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public int getSex() {
		return sex;
	}
	public void setSex(int sex) {
		this.sex = sex;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhotoUrl() {
		return photoUrl;
	}
	public void setPhotoUrl(String photoUrl) {
		this.photoUrl = photoUrl;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public String getIntroduction() {
		return introduction;
	}
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	
	@Override
	public String toString(){
		return "Agent [agentId=" + agentId + ",account=" + account + ",password=" + password + ",name=" + name + 
			    ",age=" + age + ",sex=" + sex + ",phone=" + phone + ",email=" + email + 
			    ",photoUrl=" + photoUrl + ",state=" + state + ",introduction=" + introduction +
				",company=" + company + ",year=" + year;
	}
	
}
