package com.test.web.service;

import java.util.List;

import com.test.web.entity.InterestEntity;

public interface IInterestService {
	
	boolean deleteInterest(int houseId,int userId);
	boolean addInterest(InterestEntity interestEntity);
	List<InterestEntity> getInterestList(int userId);
	List<InterestEntity> queryPage(int userId,int page,int size);
	InterestEntity getInterest(int id);
	int countByHouseId(int houseId);

}
