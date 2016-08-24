package com.test.web.service;

import com.test.web.entity.UserEntity;

public interface IUserService {
	UserEntity login(UserEntity userEntity);
	boolean register(UserEntity userEntity);
}
