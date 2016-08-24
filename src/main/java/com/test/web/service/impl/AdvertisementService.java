package com.test.web.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.test.web.entity.AdvertisementEntity;
import com.test.web.mapper.AdvertisementMapper;
import com.test.web.service.IAdvertisementService;
import com.test.web.util.DBUtil;

public class AdvertisementService implements IAdvertisementService {
	
	private List<AdvertisementEntity> advertisementList;
	private AdvertisementEntity advertisementEntity;
	
	private List<AdvertisementEntity> queryAdvs(int size){
		SqlSession session = DBUtil.getSession();
		try{
			AdvertisementMapper mapper = session.getMapper(AdvertisementMapper.class);
			advertisementList = mapper.queryAdvs(size);
			System.out.println(advertisementList);
		}finally{
			DBUtil.closeSession();
		}
		return advertisementList;
	}
	
	private int insert(AdvertisementEntity advertisementEntity){
		SqlSession session = DBUtil.getSession();
		int i;
		try{
			AdvertisementMapper mapper = session.getMapper(AdvertisementMapper.class);
			i = mapper.insert(advertisementEntity);
			System.out.println(i);
		}finally{
			DBUtil.closeSession();
		}
		return i;
	}
	
	private int update(AdvertisementMapper advertisementMapper){
		SqlSession session = DBUtil.getSession();
		int i;
		try{
			AdvertisementMapper mapper = session.getMapper(AdvertisementMapper.class);
			i = mapper.update(advertisementEntity);
			System.out.println(i);
		}finally{
			DBUtil.closeSession();
		}
		return i;
	}
	
	
	
	public List<AdvertisementEntity> getAdvertisementList(int size) {
		// TODO Auto-generated method stub
		return queryAdvs(size);
	}

	//数据库中没实现
	public AdvertisementEntity getAdvertisementById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	public boolean modifyAdvertisement(AdvertisementEntity advertisementEntity) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean addAdvertisement(AdvertisementEntity advertisementEntity) {
		// TODO Auto-generated method stub
		if(insert(advertisementEntity) > 0)
			return true;
		else return false;
	}
}
