package com.test.web.service;

import java.util.List;

import com.test.web.entity.InterestEntity;

public interface IInterestService {
	
	boolean deleteInterest(InterestEntity interestEntity);
	boolean addInterest(InterestEntity interestEntity);
	List<InterestEntity> getInterestList(int userId);
	InterestEntity getInterest(int id);

}
