package com.test.web.mapper;

import java.util.List;

import com.test.web.entity.HousePhotoEntity;

public interface PhotoMapper {

	public List<HousePhotoEntity> findById(int houseId);
	public HousePhotoEntity findMinById(int houseId);
	
}
