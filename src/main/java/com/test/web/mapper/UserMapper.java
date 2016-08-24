package com.test.web.mapper;

import java.util.List;
import com.test.web.entity.UserEntity;

public interface UserMapper {
	
	UserEntity login(UserEntity user);
	int register(UserEntity user);
	public List<UserEntity> findById(int userId);
	public List<UserEntity> findAll();
	public int insert(UserEntity userEntity);
	public int update(UserEntity userEntity);
	
}
