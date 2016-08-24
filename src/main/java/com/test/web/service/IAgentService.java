package com.test.web.service;

import java.util.List;

import com.test.web.entity.AgentEntity;

public interface IAgentService {
	AgentEntity getAgentById(int id);
	List<AgentEntity> listAgent(int page, int size);
	boolean addAgent(AgentEntity agentEntity);
	boolean modifyAgent(AgentEntity agentEntity);
}
