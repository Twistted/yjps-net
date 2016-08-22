package com.test.web.service;

import java.util.List;

import com.test.web.entity.AdvertisementEntity;

public interface IAdvertisementService {
	List<AdvertisementEntity> getAdvertisementList(int size);
}
