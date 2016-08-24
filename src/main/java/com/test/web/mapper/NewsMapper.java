package com.test.web.mapper;

import java.util.List;

import com.test.web.entity.NewsEntity;

public interface NewsMapper {
	
	public int insert(NewsEntity newsEntity);
	public NewsEntity findById(int newsId);
	public List<NewsEntity> findAll();
	public List<NewsEntity> queryPage(int offset, int size);
	public int update(NewsEntity newsEntity);
	public int delete(NewsEntity newsEntity);

}
