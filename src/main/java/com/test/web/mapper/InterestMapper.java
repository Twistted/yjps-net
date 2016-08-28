package com.test.web.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.test.web.entity.InterestEntity;

public interface InterestMapper {
	public int insert(InterestEntity interestEntity);
	public InterestEntity findById(int id);
	public List<InterestEntity> findAll();
	public List<InterestEntity> queryPage(@Param("userId") int userId,@Param("offset")int offset,@Param("size") int size);
	public int update(InterestEntity interestEntity);
	public List<InterestEntity> getInterestList(int usrId);
	public int delete(@Param("houseId")int houseId,@Param("userId")int userId);
}
