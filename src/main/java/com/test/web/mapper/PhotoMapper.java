package com.test.web.mapper;

import java.util.List;

import com.test.web.entity.PhotoEntity;

public interface PhotoMapper {

	public List<PhotoEntity> findById(int houseId);
	public PhotoEntity findMinById(int houseId);
	
}
