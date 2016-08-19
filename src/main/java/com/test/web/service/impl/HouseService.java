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
		List<HouseEntity> houseList = null;
		SqlSession session = DBUtil.getSession();
		try {
			HouseMapper mapper = session.getMapper(HouseMapper.class);
			houseList = mapper.queryPage(page, size);
		} finally {
			DBUtil.closeSession();
		}
		return houseList;
	}
	
	public boolean delete(int id) {
		boolean ret = false;
		SqlSession session = DBUtil.getSession();
		try {
			HouseMapper mapper = session.getMapper(HouseMapper.class);
			int change = mapper.delete(id);
			ret = change > 0 ? true : false;
			
			session.commit();
		} finally {
			DBUtil.closeSession();
		}
		return ret;
	}
	
	public boolean inser(HouseEntity houseEntity) {
		boolean ret = false;
		SqlSession session = DBUtil.getSession();
		try {
			HouseMapper mapper = session.getMapper(HouseMapper.class);
			int change = mapper.insert(houseEntity);
			ret = change > 0 ? true : false;
			
			session.commit();
		} finally {
			DBUtil.closeSession();
		}
		return ret;
	}

}
