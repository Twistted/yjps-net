package com.test.web.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.test.web.entity.ManagerEntity;
import com.test.web.mapper.ManagerMapper;
import com.test.web.service.IManagerService;
import com.test.web.util.DBUtil;

public class ManagerService implements IManagerService {
	
	public List<ManagerEntity> findAll() {
		List<ManagerEntity> houseList = null;
		SqlSession session = DBUtil.getSession();
	    try {
			ManagerMapper mapper = session.getMapper(ManagerMapper.class);
			houseList = mapper.findAll();
			System.out.println(houseList);	
		} finally {
			DBUtil.closeSession();
		}
		return houseList;
	}
	
	public ManagerEntity findById(int id) {
		ManagerEntity house = null;
		SqlSession session = DBUtil.getSession();
		try {
			ManagerMapper mapper = session.getMapper(ManagerMapper.class);
			house = mapper.findById(id);
			System.out.println(house);
		} finally {
			DBUtil.closeSession();
		}
		return house;
	}
	
	public boolean addManager(ManagerEntity managerEntity){
		boolean ret = false;
		SqlSession session = DBUtil.getSession();
		try{
			ManagerMapper mapper = session.getMapper(ManagerMapper.class);
			ret = mapper.insert(managerEntity) > 0 ? true : false;
			session.commit();
		}finally{
			DBUtil.closeSession();
		}
		return ret;
	}
	
	public ManagerEntity getManagerById(int id) {
		return findById(id);
	}
	
	public List<ManagerEntity> listManager(int page, int size) {
		return findAll();
	}
}
