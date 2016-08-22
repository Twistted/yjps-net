package com.test.web.service;

import java.util.List;

import com.test.web.entity.PhotoEntity;

public interface IPhotoService {
	
	List<PhotoEntity> getPhotoByHouseId(int houseId);
	PhotoEntity getMainPhotoByHouseId(int houseId);

}
