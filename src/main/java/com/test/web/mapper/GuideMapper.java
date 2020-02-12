package com.test.web.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.test.web.entity.GuideEntity;

public interface GuideMapper {
	
	public int insert(GuideEntity guideEntity);
	public GuideEntity findById(int newsId);
	public List<GuideEntity> findAll();
	public List<GuideEntity> queryPage(@Param("offset")int offset,@Param("size") int size);
	public int update(GuideEntity guideEntity);
	public int enable(int managerId);
	public int disable(int managerId);
}
