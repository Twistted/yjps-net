package com.test.web.service;

import java.util.List;

import com.test.web.entity.UserEntity;

public interface IUserService {
	UserEntity login(UserEntity userEntity);
	boolean register(UserEntity userEntity);
	List<UserEntity> findAll();
}
