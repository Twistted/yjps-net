package com.test.web.service;

import java.util.List;

import com.test.web.entity.HouseEntity;

public interface IHouseService {
	HouseEntity getHouseById(int id);
	List<HouseEntity> listHouse(int page, int size);
	boolean delete(int id);
}
