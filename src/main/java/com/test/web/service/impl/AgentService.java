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
		} finally {
			DBUtil.closeSession();
		}
		return agentList;
	}
	
	private List<AgentEntity> queryPage(int page,int size){
		List<AgentEntity> agentList = null;
		SqlSession session = DBUtil.getSession();
		try{
			int offset = (page - 1) * size;
			AgentMapper mapper = session.getMapper(AgentMapper.class);
			agentList = mapper.queryPage(offset, size);
			System.out.println(agentList.size());
		}finally{
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
			session.commit();
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
	
	private boolean enable(int agentId){
		SqlSession session = DBUtil.getSession();
		boolean ret = false;
		try {
			AgentMapper mapper = session.getMapper(AgentMapper.class);
			if(mapper.enable(agentId) > 0)
				ret = true;
			session.commit();
		} finally {
			DBUtil.closeSession();
		}
		return ret;
	}

	private boolean disable(int agentId){
		SqlSession session = DBUtil.getSession();
		boolean ret = false;
		try {
			AgentMapper mapper = session.getMapper(AgentMapper.class);
			if(mapper.disable(agentId) > 0)
				ret = true;
			session.commit();
		} finally {
			DBUtil.closeSession();
		}
		return ret;
	}
	
	public AgentEntity getAgentById(int id) {
		return findById(id);
	}

	public List<AgentEntity> listAgent(int page, int size) {
		return queryPage(page,size);
	}

	public boolean addAgent(AgentEntity agentEntity) {
		
		if(insert(agentEntity) > 0)
			return true;
		else return false;
	}

	public boolean modifyAgent(AgentEntity agentEntity) {
		
		if(update(agentEntity) > 0)
			return true;
		else return false;
	}

	public AgentEntity getAgentByAccount(String account) {
		
		return findByAccount(account);
	}

	public boolean register(AgentEntity agentEntity) {
		
		if(insert(agentEntity) > 0)
			return true;
		else return false;
	}

	public List<AgentEntity> allAgent() {
		
		return findAll();
	}

	public boolean enableAgent(int agentId) {
		
		return enable(agentId);
	}

	public boolean disableAgent(int agentId) {
		
		return disable(agentId);
	}
	
	
}
