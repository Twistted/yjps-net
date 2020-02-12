package com.test.web.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.test.web.entity.ExpertEntity;

public interface ExpertMapper {
	
	public int insert(ExpertEntity expertEntity);
	public ExpertEntity findById(int newsId);
	public List<ExpertEntity> findAll();
	public List<ExpertEntity> queryPage(@Param("offset")int offset,@Param("size") int size);
	public int update(ExpertEntity expertEntity);
	public int enable(int managerId);
	public int disable(int managerId);
}
