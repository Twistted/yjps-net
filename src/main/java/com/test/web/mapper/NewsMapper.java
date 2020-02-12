package com.test.web.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.test.web.entity.NewsEntity;

public interface NewsMapper {
	
	public int insert(NewsEntity newsEntity);
	public NewsEntity findById(int newsId);
	public List<NewsEntity> findAll();
	public List<NewsEntity> queryPage(@Param("offset")int offset,@Param("size") int size);
	public int update(NewsEntity newsEntity);
	public int enable(int managerId);
	public int disable(int managerId);
}
