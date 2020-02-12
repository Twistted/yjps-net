package com.test.web.service;

import java.util.List;

import com.test.web.entity.HouseinfoEntity;

public interface IHouseinfoService {

	boolean addHouseinfo(HouseinfoEntity HouseinfoEntity);
	boolean modifyHouseinfo(HouseinfoEntity HouseinfoEntity);
	boolean enableHouseinfo(int HouseinfoId);
	boolean disableHouseinfo(int HouseinfoId);
	List<HouseinfoEntity> findAll();
	HouseinfoEntity getHouseinfoById(int id);
	List<HouseinfoEntity> listHouseinfo(int page, int size);
}
