package com.test.web.mapper;

import java.util.List;

import com.test.web.entity.InterestEntity;

public interface InterestMapper {
	public int insert(InterestEntity interestEntity);
	public InterestEntity findById(int id);
	public List<InterestEntity> findAll();
	public List<InterestEntity> queryPage(int offset, int size);
	public int update(InterestEntity interestEntity);
	public List<InterestEntity> getInterestList(int usrId);
	public int delete(InterestEntity interestEntity);
}
