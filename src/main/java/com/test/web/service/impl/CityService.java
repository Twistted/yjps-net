package com.test.web.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.test.web.entity.CityEntity;
import com.test.web.mapper.CityMapper;
import com.test.web.util.DBUtil;

public class CityService implements ICityService{
	
	private CityEntity cityEntity;
	private List<CityEntity> cityList;
	
	private CityEntity findById(int id){
		SqlSession session = DBUtil.getSession();
		try{
			CityMapper mapper = session.getMapper(CityMapper.class);
			cityEntity = mapper.findById(id);
			
		}finally{
			DBUtil.closeSession();
		}
		return cityEntity;
	}

	private List<CityEntity> queryPage(int page,int size){
		SqlSession session = DBUtil.getSession();
		try{
			CityMapper mapper = session.getMapper(CityMapper.class);
			cityList = mapper.queryPage(page,size);
			
		}finally{
			DBUtil.closeSession();
		}
		return cityList;
	}
	
	private int update(CityEntity cityEntity){
		SqlSession session = DBUtil.getSession();
		int i;
		try{
			CityMapper mapper = session.getMapper(CityMapper.class);
			i = mapper.update(cityEntity);
			
		}finally{
			DBUtil.closeSession();
		}
		return i;
	}
	
	private int insert(CityEntity cityEntity){
		SqlSession session = DBUtil.getSession();
		int i;
		try{
			CityMapper mapper = session.getMapper(CityMapper.class);
			i = mapper.insert(cityEntity);
			
		}finally{
			DBUtil.closeSession();
		}
		return i;
	}
	
	public CityEntity getCityById(int id) {
		// TODO Auto-generated method stub
		return findById(id);
	}

	public List<CityEntity> getCityList(int page, int size) {
		// TODO Auto-generated method stub
		return queryPage(page, size);
	}

	public boolean modifyCity(CityEntity cityEntity) {
		// TODO Auto-generated method stub
		if(update(cityEntity) > 0) 
			return true;
		else return false;
	}

	public boolean addCity(CityEntity cityEntity) {
		// TODO Auto-generated method stub
		if(insert(cityEntity) > 0) 
			return true;
		else return false;
	}

}
