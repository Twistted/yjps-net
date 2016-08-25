package com.test.web.dto;

import java.io.Serializable;
import java.util.List;

import com.test.web.entity.AgentEntity;
import com.test.web.entity.ManagerEntity;
import com.test.web.entity.UserEntity;

public class Result implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = -7883303053419505103L;
	
	private int code; // success => 200
	private List<ManagerEntity> managerList;
	private List<AgentEntity> agentList;
	private List<UserEntity> userList;
	private AgentEntity agentEntity;
	private ManagerEntity managerEntity;
	private UserEntity userEntity;
	
	public AgentEntity getAgentEntity() {
		return agentEntity;
	}

	public void setAgentEntity(AgentEntity agentEntity) {
		this.agentEntity = agentEntity;
	}

	public Result() {
		
	}
	
	public Result(int code) {
		this.setCode(code);
	}

	public Result(int code, List<ManagerEntity> managerList) {
		this.code = code;
		this.managerList = managerList;
	}

	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	public List<ManagerEntity> getManagerList() {
		return managerList;
	}

	public void setManagerList(List<ManagerEntity> managerList) {
		this.managerList = managerList;
	}

	public List<AgentEntity> getAgentList() {
		return agentList;
	}

	public void setAgentList(List<AgentEntity> agentList) {
		this.agentList = agentList;
	}

	public List<UserEntity> getUserList() {
		return userList;
	}

	public void setUserList(List<UserEntity> userList) {
		this.userList = userList;
	}

	public ManagerEntity getManagerEntity() {
		return managerEntity;
	}

	public void setManagerEntity(ManagerEntity managerEntity) {
		this.managerEntity = managerEntity;
	}

	public UserEntity getUserEntity() {
		return userEntity;
	}

	public void setUserEntity(UserEntity userEntity) {
		this.userEntity = userEntity;
	}
	
	
}
