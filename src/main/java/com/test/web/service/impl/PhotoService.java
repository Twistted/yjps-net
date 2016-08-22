package com.test.web.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.test.web.entity.PhotoEntity;
import com.test.web.mapper.PhotoMapper;
import com.test.web.service.IPhotoService;
import com.test.web.util.DBUtil;

public class PhotoService implements IPhotoService{
	
	private List<PhotoEntity> photoList;
	private PhotoEntity photo;

	private List<PhotoEntity> findById(int houseId){
		SqlSession session = DBUtil.getSession();
		try{
			PhotoMapper mapper = session.getMapper(PhotoMapper.class);
			photoList = mapper.findById(houseId);
		}finally{
			DBUtil.closeSession();
		}
		return photoList;
	}
	
	private PhotoEntity findMinById(int houseId){
		SqlSession session = DBUtil.getSession();
		try{
			PhotoMapper mapper = session.getMapper(PhotoMapper.class);
			photo = mapper.findMinById(houseId);
		}finally{
			DBUtil.closeSession();
		}
		return photo;
	}
	
	public List<PhotoEntity> getPhotoByHouseId(int houseId) {
		// TODO Auto-generated method stub
		return findById(houseId);
	}

	public PhotoEntity getMainPhotoByHouseId(int houseId){
		// TODO Auto-generated method stub
		return findMinById(houseId);
	}

}
