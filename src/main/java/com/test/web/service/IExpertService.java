package com.test.web.service;

import java.util.List;

import com.test.web.entity.ExpertEntity;

public interface IExpertService {

	boolean addExpert(ExpertEntity expertEntity);
	boolean modifyExpert(ExpertEntity expertEntity);
	boolean enableExpert(int newsId);
	boolean disableExpert(int newsId);
	List<ExpertEntity> findAll();
	ExpertEntity getExpertById(int id);
	List<ExpertEntity> listExpert(int page, int size);
}
