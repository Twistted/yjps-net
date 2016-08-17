package com.test.web.mapper;

import java.util.List;

import com.test.web.entity.User;

public interface UserMapper {
	
	public List<User> findById(int userId);
	
}
