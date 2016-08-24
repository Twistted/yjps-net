package com.test.web.mapper;

import java.util.List;

import com.test.web.entity.TownEntity;

public interface TownMapper {

	public int insert(TownEntity townEntity);
	public TownEntity findById(int townId);
	public List<TownEntity> findAll();
	public List<TownEntity> queryPage(int offset, int size);
	public int update(TownEntity townEntity);
	public int delete(TownEntity townEntity);
	
}
