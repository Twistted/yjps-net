package com.test.web.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.test.web.entity.UserInfo;

public interface UserInfoMapper {
	
	/**
	 * xxxx
	 * @param userid
	 * @return
	 */
	UserInfo findById(int userid);
	
	List<UserInfo> findByIds(List<Integer> list);
	
	List<UserInfo> findAll();
	
	List<UserInfo> search(@Param("userName") String userName, @Param("email") String email);
	
	int insert(UserInfo userInfo);
	
	int delete(int userid);
	
	int update(UserInfo userInfo);

}
