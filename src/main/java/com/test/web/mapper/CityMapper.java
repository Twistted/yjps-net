package com.test.web.mapper;

import java.util.List;

import com.test.web.entity.CityEntity;

public interface CityMapper {
	public int insert(CityEntity cityEntity);
	public CityEntity findById(int id);
	public List<CityEntity> findAll();
	public List<CityEntity> queryPage(int offset, int size);
	public int update(CityEntity cityEntity);
}
