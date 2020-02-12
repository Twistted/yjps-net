package com.test.web.service;

import java.util.List;

import com.test.web.entity.GuideEntity;

public interface IGuideService {

	boolean addGuide(GuideEntity GuideEntity);
	boolean modifyGuide(GuideEntity GuideEntity);
	boolean enableGuide(int GuideId);
	boolean disableGuide(int GuideId);
	List<GuideEntity> findAll();
	GuideEntity getGuideById(int id);
	List<GuideEntity> listGuide(int page, int size);
}
