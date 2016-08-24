package com.test.web.mapper;

import java.util.List;

import com.test.web.entity.AgentEntity;

public interface AgentMapper {
	public int insert(AgentEntity agentEntity);
	public AgentEntity findById(int id);
	public List<AgentEntity> findAll();
	public List<AgentEntity> queryPage(int offset, int size);
	public int update(AgentEntity agentEntity);
}
