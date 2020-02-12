package com.test.web.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.test.web.entity.GuideEntity;
import com.test.web.mapper.GuideMapper;
import com.test.web.service.IGuideService;
import com.test.web.util.DBUtil;

public class GuideService implements IGuideService {
	
	public List<GuideEntity> findAll() {
		List<GuideEntity> houseList = null;
		SqlSession session = DBUtil.getSession();
	    try {
			GuideMapper mapper = session.getMapper(GuideMapper.class);
			houseList = mapper.findAll();
			System.out.println(houseList);	
		} finally {
			DBUtil.closeSession();
		}
		return houseList;
	}
	
	public GuideEntity findById(int id) {
		GuideEntity Guide = null;
		SqlSession session = DBUtil.getSession();
		try {
			GuideMapper mapper = session.getMapper(GuideMapper.class);
			Guide = mapper.findById(id);
			System.out.println(Guide);
		} finally {
			DBUtil.closeSession();
		}
		return Guide;
	}
	
	public boolean modifyGuide(GuideEntity GuideEntity){
		boolean ret = false;
		SqlSession session = DBUtil.getSession();
		try{
			GuideMapper mapper = session.getMapper(GuideMapper.class);
			ret = mapper.update(GuideEntity) > 0 ? true : false;
			session.commit();
		}finally{
			DBUtil.closeSession();
		}
		return ret;
	}
	
	public boolean addGuide(GuideEntity GuideEntity){
		boolean ret = false;
		SqlSession session = DBUtil.getSession();
		try{
			GuideMapper mapper = session.getMapper(GuideMapper.class);
			ret = mapper.insert(GuideEntity) > 0 ? true : false;
			session.commit();
		}finally{
			DBUtil.closeSession();
		}
		return ret;
	}
	
	public GuideEntity getGuideById(int id) {
		return findById(id);
	}
	
	public List<GuideEntity> listGuide(int page, int size) {
		return queryPage(page,size);
	}
	
	
	public List<GuideEntity> queryPage(int page ,int size){
		List<GuideEntity> GuideList = null;
		SqlSession session = DBUtil.getSession();
		try {
			int offset = (page - 1) * size;
			GuideMapper mapper = session.getMapper(GuideMapper.class);
			System.out.println(offset);
			GuideList = mapper.queryPage(offset, size);
		} finally {
			DBUtil.closeSession();
		}
		return GuideList;
	}

	public boolean enableGuide(int GuideId) {
		boolean ret = false;
		SqlSession session = DBUtil.getSession();
		try{
			GuideMapper mapper = session.getMapper(GuideMapper.class);
			ret = mapper.enable(GuideId) > 0 ? true : false;
			session.commit();
		}finally{
			DBUtil.closeSession();
		}
		return ret;
	}

	public boolean disableGuide(int GuideId) {
		boolean ret = false;
		SqlSession session = DBUtil.getSession();
		try{
			GuideMapper mapper = session.getMapper(GuideMapper.class);
			ret = mapper.disable(GuideId) > 0 ? true : false;
			session.commit();
		}finally{
			DBUtil.closeSession();
		}
		return ret;
	}

}
