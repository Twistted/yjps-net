package com.test.web.dto;

import java.io.Serializable;
import java.util.List;

import com.test.web.entity.AgentEntity;
import com.test.web.entity.ExpertEntity;
import com.test.web.entity.FocusEntity;
import com.test.web.entity.GuideEntity;
import com.test.web.entity.HouseEntity;
import com.test.web.entity.HouseinfoEntity;
import com.test.web.entity.InterestEntity;
import com.test.web.entity.LabelEntity;
import com.test.web.entity.ManagerEntity;
import com.test.web.entity.NewsEntity;
import com.test.web.entity.UserEntity;
import com.test.web.service.impl.HouseService;

public class Result implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = -7883303053419505103L;
	
	private int code; // success => 200
	private List<ManagerEntity> managerList;
	private List<AgentEntity> agentList;
	private List<UserEntity> userList;
	private List<NewsEntity> newsList;
	private List<ExpertEntity> expertList;
	private List<GuideEntity> guideList;
	private List<HouseinfoEntity> houseinfoList;
	private List<FocusEntity> focusList;
	private NewsEntity newsEntity;
	private ExpertEntity expertEntity;
	private GuideEntity guideEntity;
	private HouseinfoEntity houseinfoEntity;
	private FocusEntity focusEntity;
	private AgentEntity agentEntity;
	private HouseEntity houseEntity;
	private int pageSize;
	private int houseListSize;
	private List<InterestEntity> interestList;
	private String filePath;
	private List<LabelEntity> labelList;
	private LabelEntity labelEntity;
	
	public List<LabelEntity> getLabelList() {
		return labelList;
	}
	
	public void setLabelList(List<LabelEntity> labelList) {
		this.labelList = labelList;
	}

	public LabelEntity getLabelEntity() {
		return labelEntity;
	}

	public void setLabelEntity(LabelEntity labelEntity) {
		this.labelEntity = labelEntity;
	}

	public String getFilePath() {
		return filePath;
	}

	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}

	public List<InterestEntity> getInterestList() {
		return interestList;
	}

	public void setInterestList(List<InterestEntity> interestList) {
		this.interestList = interestList;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public HouseEntity getHouseEntity() {
		return houseEntity;
	}

	public void setHouseEntity(HouseEntity houseEntity) {
		this.houseEntity = houseEntity;
	}

	private ManagerEntity managerEntity;
	private UserEntity userEntity;
	private List<HouseEntity> houseList;
	
	public List<HouseEntity> getHouseList() {
		return houseList;
	}

	public void setHouseList(List<HouseEntity> houseList) {
		this.houseList = houseList;
	}

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

	public int getHouseListSize() {
		return houseListSize;
	}

	public void setHouseListSize(int houseListSize) {
		this.houseListSize = houseListSize;
	}
	
	public List<NewsEntity> getNewsList() {
		return newsList;
	}
	
	public void setNewsList(List<NewsEntity> newsList) {
		this.newsList = newsList;
	}
	
	public void setNewsEntity(NewsEntity newsEntity) {
		this.newsEntity = newsEntity;
	}

	public List<ExpertEntity> getExpertList() {
		return expertList;
	}
	
	public void setExpertList(List<ExpertEntity> expertList) {
		this.expertList = expertList;
	}
	
	public void setExpertEntity(ExpertEntity expertEntity) {
		this.expertEntity = expertEntity;
	}
	
	public List<HouseinfoEntity> getHouseinfoList() {
		return houseinfoList;
	}
	
	public void setHouseinfoList(List<HouseinfoEntity> houseinfoList) {
		this.houseinfoList = houseinfoList;
	}
	
	public void setHouseinfoEntity(HouseinfoEntity houseinfoEntity) {
		this.houseinfoEntity = houseinfoEntity;
	}
	
	public List<GuideEntity> getGuideList() {
		return guideList;
	}
	
	public void setGuideList(List<GuideEntity> guideList) {
		this.guideList = guideList;
	}
	
	public void setGuideEntity(GuideEntity guideEntity) {
		this.guideEntity = guideEntity;
	}
	
	public List<FocusEntity> getFocusList() {
		return focusList;
	}
	
	public void setFocusList(List<FocusEntity> focusList) {
		this.focusList = focusList;
	}
	
	public void setFocusEntity(FocusEntity focusEntity) {
		this.focusEntity = focusEntity;
	}
}
