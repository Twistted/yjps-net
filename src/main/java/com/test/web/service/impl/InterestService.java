package com.test.web.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.test.web.entity.InterestEntity;
import com.test.web.mapper.InterestMapper;
import com.test.web.service.IInterestService;
import com.test.web.util.DBUtil;

public class InterestService implements IInterestService{

	private InterestEntity interestEntity;
	private List<InterestEntity> interestList;
	
	private int insert(InterestEntity interestEntity){
		SqlSession session = DBUtil.getSession();
		int i;
		try{
			InterestMapper mapper = session.getMapper(InterestMapper.class);
			i = mapper.insert(interestEntity);
			session.commit();
		}finally{
			DBUtil.closeSession();
		}
		return i;
	}
	
	private InterestEntity findById(int id){
		SqlSession session = DBUtil.getSession();
		try{
			InterestMapper mapper = session.getMapper(InterestMapper.class);
			interestEntity = mapper.findById(id);
			System.out.println(interestEntity);
		}finally{
			DBUtil.closeSession();
		}
		return interestEntity;
	}
	
	public boolean deleteInterest(InterestEntity interestEntity) {
		boolean ret = false;
		SqlSession session = DBUtil.getSession();
		try {
			InterestMapper mapper = session.getMapper(InterestMapper.class);
			int i = mapper.delete(interestEntity);
			ret = i > 0 ? true : false;
			session.commit();
		} finally {
			DBUtil.closeSession();
		}
		return ret;
	}

	public boolean addInterest(InterestEntity interestEntity) {
		if(insert(interestEntity) > 0){
			return true;
		} else {
			return false;
		}
	}

	public List<InterestEntity> getInterestList(int userId) {
		SqlSession session = DBUtil.getSession();
		try {
			InterestMapper mapper = session.getMapper(InterestMapper.class);
			interestList = mapper.getInterestList(userId);
		} finally {
			DBUtil.closeSession();
		}
		return interestList;
	}

	public InterestEntity getInterest(int id) {
		return null;
	}

}
