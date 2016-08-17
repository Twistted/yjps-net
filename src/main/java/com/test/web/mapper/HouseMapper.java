package com.test.web.mapper;

import java.util.List;

import com.test.web.entity.HouseEntity;

public interface HouseMapper {
	public HouseEntity findById(int id);
	public List<HouseEntity> findAll();
	public List<HouseEntity> queryPage(int offset, int size);
}
