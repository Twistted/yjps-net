package com.test.web.service.impl;

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
	
}
