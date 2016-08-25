package com.test.web.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.test.web.entity.UserEntity;

public interface UserMapper {
	
	UserEntity login(UserEntity user);
	int register(UserEntity user);
	public UserEntity findById(int userId);
	public List<UserEntity> queryPage(@Param("offset") int offset,@Param("size") int size);
	public List<UserEntity> findAll();
	public int insert(UserEntity userEntity);
	public int update(UserEntity userEntity);
	
}
