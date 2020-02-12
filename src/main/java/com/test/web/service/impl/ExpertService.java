package com.test.web.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.test.web.entity.ExpertEntity;
import com.test.web.mapper.ExpertMapper;
import com.test.web.service.IExpertService;
import com.test.web.util.DBUtil;

public class ExpertService implements IExpertService {
	
	public List<ExpertEntity> findAll() {
		List<ExpertEntity> houseList = null;
		SqlSession session = DBUtil.getSession();
	    try {
			ExpertMapper mapper = session.getMapper(ExpertMapper.class);
			houseList = mapper.findAll();
			System.out.println(houseList);	
		} finally {
			DBUtil.closeSession();
		}
		return houseList;
	}
	
	public ExpertEntity findById(int id) {
		ExpertEntity Expert = null;
		SqlSession session = DBUtil.getSession();
		try {
			ExpertMapper mapper = session.getMapper(ExpertMapper.class);
			Expert = mapper.findById(id);
			System.out.println(Expert);
		} finally {
			DBUtil.closeSession();
		}
		return Expert;
	}
	
	public boolean modifyExpert(ExpertEntity ExpertEntity){
		boolean ret = false;
		SqlSession session = DBUtil.getSession();
		try{
			ExpertMapper mapper = session.getMapper(ExpertMapper.class);
			ret = mapper.update(ExpertEntity) > 0 ? true : false;
			session.commit();
		}finally{
			DBUtil.closeSession();
		}
		return ret;
	}
	
	public boolean addExpert(ExpertEntity ExpertEntity){
		boolean ret = false;
		SqlSession session = DBUtil.getSession();
		try{
			ExpertMapper mapper = session.getMapper(ExpertMapper.class);
			ret = mapper.insert(ExpertEntity) > 0 ? true : false;
			session.commit();
		}finally{
			DBUtil.closeSession();
		}
		return ret;
	}
	
	public ExpertEntity getExpertById(int id) {
		return findById(id);
	}
	
	public List<ExpertEntity> listExpert(int page, int size) {
		return queryPage(page,size);
	}
	
	
	public List<ExpertEntity> queryPage(int page ,int size){
		List<ExpertEntity> ExpertList = null;
		SqlSession session = DBUtil.getSession();
		try {
			int offset = (page - 1) * size;
			ExpertMapper mapper = session.getMapper(ExpertMapper.class);
			System.out.println(offset);
			ExpertList = mapper.queryPage(offset, size);
		} finally {
			DBUtil.closeSession();
		}
		return ExpertList;
	}

	public boolean enableExpert(int ExpertId) {
		boolean ret = false;
		SqlSession session = DBUtil.getSession();
		try{
			ExpertMapper mapper = session.getMapper(ExpertMapper.class);
			ret = mapper.enable(ExpertId) > 0 ? true : false;
			session.commit();
		}finally{
			DBUtil.closeSession();
		}
		return ret;
	}

	public boolean disableExpert(int ExpertId) {
		boolean ret = false;
		SqlSession session = DBUtil.getSession();
		try{
			ExpertMapper mapper = session.getMapper(ExpertMapper.class);
			ret = mapper.disable(ExpertId) > 0 ? true : false;
			session.commit();
		}finally{
			DBUtil.closeSession();
		}
		return ret;
	}

}
