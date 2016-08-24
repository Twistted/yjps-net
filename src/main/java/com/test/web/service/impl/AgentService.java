package com.test.web.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.test.web.entity.AgentEntity;
import com.test.web.mapper.AgentMapper;
import com.test.web.service.IAgentService;
import com.test.web.util.DBUtil;

public class AgentService implements IAgentService {

	private List<AgentEntity> findAll() {
		List<AgentEntity> agentList = null;
		SqlSession session = DBUtil.getSession();
		try {
			AgentMapper mapper = session.getMapper(AgentMapper.class);
			agentList = mapper.findAll();
			System.out.println(agentList);
		} finally {
			DBUtil.closeSession();
		}
		return agentList;
	}

	private AgentEntity findById(int id) {
		AgentEntity agent = null;
		SqlSession session = DBUtil.getSession();
		try {
			AgentMapper mapper = session.getMapper(AgentMapper.class);
			agent = mapper.findById(id);
			System.out.println(agent);
		} finally {
			DBUtil.closeSession();
		}
		return agent;
	}
	
	private int update(AgentEntity agentEntity){
		int i;
		SqlSession session = DBUtil.getSession();
		try {
			AgentMapper mapper = session.getMapper(AgentMapper.class);
			i = mapper.update(agentEntity);
			System.out.println(i);
		} finally {
			DBUtil.closeSession();
		}
		return i;
	}
	
	private int insert(AgentEntity agentEntity){
		int i;
		SqlSession session = DBUtil.getSession();
		try {
			AgentMapper mapper = session.getMapper(AgentMapper.class);
			i = mapper.insert(agentEntity);
			System.out.println(i);
			session.commit();
		} finally {
			DBUtil.closeSession();
		}
		return i;
	}
	
	private AgentEntity findByAccount(String account){
		AgentEntity agent = null;
		SqlSession session = DBUtil.getSession();
		try {
			AgentMapper mapper = session.getMapper(AgentMapper.class);
			agent = mapper.findByAccount(account);
			System.out.println(agent);
		} finally {
			DBUtil.closeSession();
		}
		return agent;
	}

	public AgentEntity getAgentById(int id) {
		return findById(id);
	}

	public List<AgentEntity> listAgent(int page, int size) {
		return findAll();
	}

	public boolean addAgent(AgentEntity agentEntity) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean modifyAgent(AgentEntity agentEntity) {
		// TODO Auto-generated method stub
		if(update(agentEntity) > 0)
			return true;
		else return false;
	}

	public AgentEntity getAgentByAccount(String account) {
		// TODO Auto-generated method stub
		return findByAccount(account);
	}

	public boolean register(AgentEntity agentEntity) {
		// TODO Auto-generated method stub
		if(insert(agentEntity) > 0)
			return true;
		else return false;
	}
	
	
}
