package com.test.web.service.impl;

import java.util.List;

import com.test.web.entity.AdvertisementEntity;
import com.test.web.service.IAdvertisementService;

public class AdvertisementService implements IAdvertisementService {
	
	private List<AdvertisementEntity> advertisementList;
	private AdvertisementEntity advertisementEntity;
	
	public List<AdvertisementEntity> queryAdvs(int size){
		return advertisementList;
	}
	
	
	public List<AdvertisementEntity> getAdvertisementList(int size) {
		
		return null;
	}

	public AdvertisementEntity getAdvertisementById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	public boolean modifyAdvertisement(AdvertisementEntity advertisementEntity) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean addAdvertisement(AdvertisementEntity advertisementEntity) {
		// TODO Auto-generated method stub
		return false;
	}
}
