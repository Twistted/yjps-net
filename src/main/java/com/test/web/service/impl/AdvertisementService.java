package com.test.web.service.impl;

import java.util.List;

import com.test.web.service.IAdvertisementService;

public class AdvertisementService implements IAdvertisementService {
	List<AdvertisementEntity> getAdvertisementList(int size);
}
