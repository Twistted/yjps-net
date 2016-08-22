package com.test.web.mapper;

import java.util.List;

import com.test.web.entity.AdvertisementEntity;

public interface AdvertisementMapper {
	
	public int insert(AdvertisementEntity advertisementEntity);
	public List<AdvertisementEntity> queryAdvs(int size);
	public int update(AdvertisementEntity advertisementEntity);

}
