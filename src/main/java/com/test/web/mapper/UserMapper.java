package com.test.web.mapper;

import java.util.List;
import com.test.web.entity.UserEntity;

public interface UserMapper {
	
	public List<UserEntity> findById(int userId);
	public int insert(UserEntity userEntity);
	
}
