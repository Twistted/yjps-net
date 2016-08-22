package com.test.web.service;

import java.util.List;

import com.test.web.entity.HousePhotoEntity;

public interface IPhotoService {
	
	List<HousePhotoEntity> getPhotoByHouseId(int houseId);
	HousePhotoEntity getMainPhotoByHouseId(int houseId);

}
