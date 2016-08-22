package com.test.web.service;

import java.util.List;

import com.test.web.entity.AdvertisementEntity;

public interface IAdvertisementService {
	List<AdvertisementEntity> getAdvertisementList(int size);
	AdvertisementEntity getAdvertisementById(int id);
	boolean modifyAdvertisement(AdvertisementEntity advertisementEntity);
	boolean addAdvertisement(AdvertisementEntity advertisementEntity);
}
