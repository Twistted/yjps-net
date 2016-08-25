package com.test.web.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.test.web.util.DBUtil;
import com.test.web.entity.HousePhotoEntity;
import com.test.web.mapper.PhotoMapper;
import com.test.web.service.IPhotoService;


public class PhotoService implements IPhotoService {
	
	private List<HousePhotoEntity> photoList;
	private HousePhotoEntity photo;

	private List<HousePhotoEntity> findById(int houseId){
		SqlSession session = DBUtil.getSession();
		try{
			PhotoMapper mapper = session.getMapper(PhotoMapper.class);
			photoList = mapper.findById(houseId);
		}finally{
			DBUtil.closeSession();
		}
		return photoList;
	}
	
	private HousePhotoEntity findMinById(int houseId){
		SqlSession session = DBUtil.getSession();
		try{
			PhotoMapper mapper = session.getMapper(PhotoMapper.class);
			photo = mapper.findMinById(houseId);
		}finally{
			DBUtil.closeSession();
		}
		return photo;
	}
	
	public List<HousePhotoEntity> getPhotoByHouseId(int houseId) {
		return findById(houseId);
	}

	public HousePhotoEntity getMainPhotoByHouseId(int houseId){
		return findMinById(houseId);
	}

}
