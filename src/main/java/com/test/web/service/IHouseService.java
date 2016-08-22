package com.test.web.service;

import java.util.List;

import com.test.web.entity.HouseEntity;

public interface IHouseService {
	HouseEntity getHouseById(int id);
	List<HouseEntity> listHouse(int page, int size);
	boolean update(HouseEntity houseEntity);
	boolean delete(int id);
	List<HouseEntity> getAdvertisementList(int id);
	List<HouseEntity> search(String search);
}
