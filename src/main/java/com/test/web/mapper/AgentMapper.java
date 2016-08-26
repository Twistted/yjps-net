package com.test.web.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.test.web.entity.AgentEntity;

public interface AgentMapper {

	public int insert(AgentEntity agentEntity);
	public AgentEntity findById(int id);
	public List<AgentEntity> findAll();
	public List<AgentEntity> queryPage(@Param("offset")int offset, @Param("size") int size);
	public int update(AgentEntity agentEntity);
	public int enable(int userId);
	public int disable(int userId);
	public AgentEntity findByAccount(String account);

}
