package com.test.web.service;

import java.util.List;

import com.test.web.entity.CityEntity;

public interface ICityService {
	
	CityEntity getCityById(int id);
	List<CityEntity> getCityList(int page,int size);
	boolean modifyCity(CityEntity cityEntity);
	boolean addCity(CityEntity cityEntity);

}
