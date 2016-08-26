package com.test.web.service;

import java.util.List;

import com.test.web.entity.AgentEntity;

public interface IAgentService {
	AgentEntity getAgentById(int id);
	AgentEntity getAgentByAccount(String account);
	List<AgentEntity> listAgent(int page, int size);
	List<AgentEntity> allAgent();
	boolean register(AgentEntity agentEntity);
	boolean addAgent(AgentEntity agentEntity);
	boolean modifyAgent(AgentEntity agentEntity);
	boolean enableAgent(int agentId);
	boolean disableAgent(int agentId);
}
