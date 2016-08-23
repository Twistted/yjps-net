package com.test.web.service.impl;

import org.apache.ibatis.session.SqlSession;

import com.test.web.entity.JoinEntity;
import com.test.web.mapper.JoinMapper;
import com.test.web.service.IJoinService;
import com.test.web.util.DBUtil;

public class JoinService implements IJoinService{

	private JoinEntity joinEntity;
	
	private int update(JoinEntity joinEntity){
		SqlSession session = DBUtil.getSession();
		int i;
		try{
			JoinMapper mapper = session.getMapper(JoinMapper.class);
			i = mapper.update(joinEntity);
			System.out.println(i);
		}finally{
			DBUtil.closeSession();
		}
		return i;
	}
	
	private int insert(JoinEntity joinEntity){
		SqlSession session = DBUtil.getSession();
		int i;
		try{
			JoinMapper mapper = session.getMapper(JoinMapper.class);
			i = mapper.insert(joinEntity);
			System.out.println(i);
		}finally{
			DBUtil.closeSession();
		}
		return i;
	}
	
	private JoinEntity findById(int id){
		SqlSession session = DBUtil.getSession();
		try{
			JoinMapper mapper = session.getMapper(JoinMapper.class);
			joinEntity = mapper.findById(id);
			System.out.println(joinEntity);
		}finally{
			DBUtil.closeSession();
		}
		return joinEntity;
	}
	
	public JoinEntity getJoinById(int id) {
		// TODO Auto-generated method stub
		return findById(id);
	}

	public boolean modifyJoin(JoinEntity joinEntity) {
		// TODO Auto-generated method stub
		if(update(joinEntity) > 0)
			return true;
		else return false;
	}

	public boolean addJoin(JoinEntity joinEntity) {
		// TODO Auto-generated method stub
		if(insert(joinEntity) > 0)
			return true;
		else return false;
	}

}
