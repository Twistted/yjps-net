package com.test.web.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.test.web.entity.UserEntity;
import com.test.web.mapper.UserMapper;
import com.test.web.service.IUserService;
import com.test.web.util.DBUtil;

public class UserService implements IUserService {

	public UserEntity login(UserEntity user) {
		UserEntity userEntity = null;
		SqlSession session = DBUtil.getSession();
		try {
			UserMapper userMapper = session.getMapper(UserMapper.class);
			userEntity = userMapper.login(user);
		} finally {
			DBUtil.closeSession();
		}
		
		return userEntity;
	}

	public boolean register(UserEntity user) {
		boolean ret = false;
		SqlSession session = DBUtil.getSession();
		try {
			UserMapper userMapper = session.getMapper(UserMapper.class);
			int i = userMapper.register(user);
			ret = i == 1 ? true : false;
			session.commit();
		} finally {
			DBUtil.closeSession();
		}
		return ret;
	}
	
	private List<UserEntity> queryPage(int page,int size){
		List<UserEntity> userList = null;
		SqlSession session = DBUtil.getSession();
		try {
			int offset = (page - 1) * size;
			UserMapper userMapper = session.getMapper(UserMapper.class);
			userList = userMapper.queryPage(offset, size);
			
		} finally {
			DBUtil.closeSession();
		}
		return userList;
	}
	
	public List<UserEntity> findAll() {
		List<UserEntity> userList = null;
		SqlSession session = DBUtil.getSession();
		try {
			UserMapper userMapper = session.getMapper(UserMapper.class);
			userList = userMapper.findAll();
			
		} finally {
			DBUtil.closeSession();
		}
		return userList;
	}

	public boolean modify(UserEntity userEntity) {
		boolean ret = false;
		SqlSession session = DBUtil.getSession();
		try {
			UserMapper userMapper = session.getMapper(UserMapper.class);
			int i = userMapper.update(userEntity);
			ret = i > 0 ? true : false;
			
			session.commit();
		} finally {
			DBUtil.closeSession();
		}
		return false;
	}

	public List<UserEntity> listUser(int page, int size) {
		return queryPage(page, size);
	}
	
}
