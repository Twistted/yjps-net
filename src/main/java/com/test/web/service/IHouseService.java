package com.test.web.service;

import java.util.List;

import com.test.web.entity.HouseEntity;

public interface IHouseService {
	HouseEntity getHouseById(int id);
	List<HouseEntity> listHouse(int page, int size);
	List<HouseEntity> getByAgentId(int agentId);
    boolean addHouse(HouseEntity houseEntity);
	boolean update(HouseEntity houseEntity);
	boolean delete(int id);
	List<HouseEntity> getAllHouse();
	List<HouseEntity> getAdvertisementList(int id);
	List<HouseEntity> search(String search);

}
