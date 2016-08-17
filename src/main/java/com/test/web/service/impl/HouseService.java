package com.test.web.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.test.web.entity.HouseEntity;
import com.test.web.mapper.HouseMapper;
import com.test.web.service.IHouseService;
import com.test.web.util.DBUtil;

public class HouseService implements IHouseService {
	
	public List<HouseEntity> findAll() {
		List<HouseEntity> houseList = null;
		SqlSession session = DBUtil.getSession();
	    try {
			HouseMapper mapper = session.getMapper(HouseMapper.class);
			houseList = mapper.findAll();
			System.out.println(houseList);	
		} finally {
			DBUtil.closeSession();
		}
		return houseList;
	}
	
	public HouseEntity findById(int id) {
		HouseEntity house = null;
		SqlSession session = DBUtil.getSession();
		try {
			HouseMapper mapper = session.getMapper(HouseMapper.class);
			house = mapper.findById(id);
			System.out.println(house);
		} finally {
			DBUtil.closeSession();
		}
		return house;
	}
	
	public HouseEntity getHouseById(int id) {
		return findById(id);
	}
	
	public List<HouseEntity> listHouse(int page, int size) {
		return findAll();
	}

}
