package com.test.web.service.impl;

import org.apache.ibatis.session.SqlSession;

import com.test.web.entity.AboutEntity;
import com.test.web.mapper.AboutMapper;
import com.test.web.service.IAboutService;
import com.test.web.util.DBUtil;

public class AboutService implements IAboutService{
	
	private AboutEntity aboutEntity;
	
	private AboutEntity findById(int id){
		SqlSession session = DBUtil.getSession();
		try {
			AboutMapper mapper = session.getMapper(AboutMapper.class);
			aboutEntity = mapper.findById(id);
			System.out.println(aboutEntity);
		} finally {
			DBUtil.closeSession();
		}
		return aboutEntity;
	}
	
	private int update(AboutEntity aboutEntity){
		SqlSession session = DBUtil.getSession();
		int i;
		try {
			AboutMapper mapper = session.getMapper(AboutMapper.class);
			i = mapper.update(aboutEntity);
			System.out.println(i);
		} finally {
			DBUtil.closeSession();
		}
		return i;
	}
	
	private int insert(AboutEntity aboutEntity){
		SqlSession session = DBUtil.getSession();
		int i;
		try {
			AboutMapper mapper = session.getMapper(AboutMapper.class);
			i = mapper.insert(aboutEntity);
			System.out.println(i);
		} finally {
			DBUtil.closeSession();
		}
		return i;
	}

	public AboutEntity getAboutById(int id) {
		// TODO Auto-generated method stub
		return findById(id);
	}

	public boolean modifyAbout(AboutEntity aboutEntity) {
		// TODO Auto-generated method stub
		if(update(aboutEntity) > 0)
			return true;
		else return false;
	}

	public boolean addAbout(AboutEntity aboutEntity) {
		// TODO Auto-generated method stub
		if(insert(aboutEntity) > 0)
			return true;
		else return false;
	}

}
