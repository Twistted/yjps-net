package com.test.web.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.test.web.entity.HouseinfoEntity;
import com.test.web.mapper.HouseinfoMapper;
import com.test.web.service.IHouseinfoService;
import com.test.web.util.DBUtil;

public class HouseinfoService implements IHouseinfoService {
	
	public List<HouseinfoEntity> findAll() {
		List<HouseinfoEntity> houseList = null;
		SqlSession session = DBUtil.getSession();
	    try {
			HouseinfoMapper mapper = session.getMapper(HouseinfoMapper.class);
			houseList = mapper.findAll();
			System.out.println(houseList);	
		} finally {
			DBUtil.closeSession();
		}
		return houseList;
	}
	
	public HouseinfoEntity findById(int id) {
		HouseinfoEntity Houseinfo = null;
		SqlSession session = DBUtil.getSession();
		try {
			HouseinfoMapper mapper = session.getMapper(HouseinfoMapper.class);
			Houseinfo = mapper.findById(id);
			System.out.println(Houseinfo);
		} finally {
			DBUtil.closeSession();
		}
		return Houseinfo;
	}
	
	public boolean modifyHouseinfo(HouseinfoEntity HouseinfoEntity){
		boolean ret = false;
		SqlSession session = DBUtil.getSession();
		try{
			HouseinfoMapper mapper = session.getMapper(HouseinfoMapper.class);
			ret = mapper.update(HouseinfoEntity) > 0 ? true : false;
			session.commit();
		}finally{
			DBUtil.closeSession();
		}
		return ret;
	}
	
	public boolean addHouseinfo(HouseinfoEntity HouseinfoEntity){
		boolean ret = false;
		SqlSession session = DBUtil.getSession();
		try{
			HouseinfoMapper mapper = session.getMapper(HouseinfoMapper.class);
			ret = mapper.insert(HouseinfoEntity) > 0 ? true : false;
			session.commit();
		}finally{
			DBUtil.closeSession();
		}
		return ret;
	}
	
	public HouseinfoEntity getHouseinfoById(int id) {
		return findById(id);
	}
	
	public List<HouseinfoEntity> listHouseinfo(int page, int size) {
		return queryPage(page,size);
	}
	
	
	public List<HouseinfoEntity> queryPage(int page ,int size){
		List<HouseinfoEntity> HouseinfoList = null;
		SqlSession session = DBUtil.getSession();
		try {
			int offset = (page - 1) * size;
			HouseinfoMapper mapper = session.getMapper(HouseinfoMapper.class);
			System.out.println(offset);
			HouseinfoList = mapper.queryPage(offset, size);
		} finally {
			DBUtil.closeSession();
		}
		return HouseinfoList;
	}

	public boolean enableHouseinfo(int HouseinfoId) {
		boolean ret = false;
		SqlSession session = DBUtil.getSession();
		try{
			HouseinfoMapper mapper = session.getMapper(HouseinfoMapper.class);
			ret = mapper.enable(HouseinfoId) > 0 ? true : false;
			session.commit();
		}finally{
			DBUtil.closeSession();
		}
		return ret;
	}

	public boolean disableHouseinfo(int HouseinfoId) {
		boolean ret = false;
		SqlSession session = DBUtil.getSession();
		try{
			HouseinfoMapper mapper = session.getMapper(HouseinfoMapper.class);
			ret = mapper.disable(HouseinfoId) > 0 ? true : false;
			session.commit();
		}finally{
			DBUtil.closeSession();
		}
		return ret;
	}

}
