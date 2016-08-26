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
	
	public boolean modifyManager(ManagerEntity managerEntity){
		boolean ret = false;
		SqlSession session = DBUtil.getSession();
		try{
			ManagerMapper mapper = session.getMapper(ManagerMapper.class);
			ret = mapper.update(managerEntity) > 0 ? true : false;
			session.commit();
		}finally{
			DBUtil.closeSession();
		}
		return ret;
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
		return queryPage(page,size);
	}
	
	public ManagerEntity login(ManagerEntity managerEntity) {
		ManagerEntity manager = null;
		SqlSession session = DBUtil.getSession();
		try {
			ManagerMapper mapper = session.getMapper(ManagerMapper.class);
			manager = mapper.login(managerEntity);
		} finally {
			DBUtil.closeSession();
		}
		return manager;
	}
	
	public List<ManagerEntity> queryPage(int page ,int size){
		List<ManagerEntity> managerList = null;
		SqlSession session = DBUtil.getSession();
		try {
			int offset = (page - 1) * size;
			ManagerMapper mapper = session.getMapper(ManagerMapper.class);
			System.out.println(offset);
			managerList = mapper.queryPage(offset, size);
		} finally {
			DBUtil.closeSession();
		}
		return managerList;
	}

	public boolean enableManager(int managerId) {
		boolean ret = false;
		SqlSession session = DBUtil.getSession();
		try{
			ManagerMapper mapper = session.getMapper(ManagerMapper.class);
			ret = mapper.enable(managerId) > 0 ? true : false;
			session.commit();
		}finally{
			DBUtil.closeSession();
		}
		return ret;
	}

	public boolean disableManager(int managerId) {
		boolean ret = false;
		SqlSession session = DBUtil.getSession();
		try{
			ManagerMapper mapper = session.getMapper(ManagerMapper.class);
			ret = mapper.diaable(managerId) > 0 ? true : false;
			session.commit();
		}finally{
			DBUtil.closeSession();
		}
		return ret;
	}
}
