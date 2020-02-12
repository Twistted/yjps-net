package com.test.web.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.test.web.entity.FocusEntity;
import com.test.web.mapper.FocusMapper;
import com.test.web.service.IFocusService;
import com.test.web.util.DBUtil;

public class FocusService implements IFocusService {
	
	public List<FocusEntity> findAll() {
		List<FocusEntity> houseList = null;
		SqlSession session = DBUtil.getSession();
	    try {
			FocusMapper mapper = session.getMapper(FocusMapper.class);
			houseList = mapper.findAll();
			System.out.println(houseList);	
		} finally {
			DBUtil.closeSession();
		}
		return houseList;
	}
	
	public FocusEntity findById(int id) {
		FocusEntity Focus = null;
		SqlSession session = DBUtil.getSession();
		try {
			FocusMapper mapper = session.getMapper(FocusMapper.class);
			Focus = mapper.findById(id);
			System.out.println(Focus);
		} finally {
			DBUtil.closeSession();
		}
		return Focus;
	}
	
	public boolean modifyFocus(FocusEntity FocusEntity){
		boolean ret = false;
		SqlSession session = DBUtil.getSession();
		try{
			FocusMapper mapper = session.getMapper(FocusMapper.class);
			ret = mapper.update(FocusEntity) > 0 ? true : false;
			session.commit();
		}finally{
			DBUtil.closeSession();
		}
		return ret;
	}
	
	public boolean addFocus(FocusEntity FocusEntity){
		boolean ret = false;
		SqlSession session = DBUtil.getSession();
		try{
			FocusMapper mapper = session.getMapper(FocusMapper.class);
			ret = mapper.insert(FocusEntity) > 0 ? true : false;
			session.commit();
		}finally{
			DBUtil.closeSession();
		}
		return ret;
	}
	
	public FocusEntity getFocusById(int id) {
		return findById(id);
	}
	
	public List<FocusEntity> listFocus(int page, int size) {
		return queryPage(page,size);
	}
	
	
	public List<FocusEntity> queryPage(int page ,int size){
		List<FocusEntity> FocusList = null;
		SqlSession session = DBUtil.getSession();
		try {
			int offset = (page - 1) * size;
			FocusMapper mapper = session.getMapper(FocusMapper.class);
			System.out.println(offset);
			FocusList = mapper.queryPage(offset, size);
		} finally {
			DBUtil.closeSession();
		}
		return FocusList;
	}

	public boolean enableFocus(int FocusId) {
		boolean ret = false;
		SqlSession session = DBUtil.getSession();
		try{
			FocusMapper mapper = session.getMapper(FocusMapper.class);
			ret = mapper.enable(FocusId) > 0 ? true : false;
			session.commit();
		}finally{
			DBUtil.closeSession();
		}
		return ret;
	}

	public boolean disableFocus(int FocusId) {
		boolean ret = false;
		SqlSession session = DBUtil.getSession();
		try{
			FocusMapper mapper = session.getMapper(FocusMapper.class);
			ret = mapper.disable(FocusId) > 0 ? true : false;
			session.commit();
		}finally{
			DBUtil.closeSession();
		}
		return ret;
	}

}
