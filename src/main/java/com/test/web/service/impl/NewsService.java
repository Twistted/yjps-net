package com.test.web.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.test.web.entity.NewsEntity;
import com.test.web.mapper.NewsMapper;
import com.test.web.service.INewsService;
import com.test.web.util.DBUtil;

public class NewsService implements INewsService {
	
	public List<NewsEntity> findAll() {
		List<NewsEntity> houseList = null;
		SqlSession session = DBUtil.getSession();
	    try {
			NewsMapper mapper = session.getMapper(NewsMapper.class);
			houseList = mapper.findAll();
			System.out.println(houseList);	
		} finally {
			DBUtil.closeSession();
		}
		return houseList;
	}
	
	public NewsEntity findById(int id) {
		NewsEntity News = null;
		SqlSession session = DBUtil.getSession();
		try {
			NewsMapper mapper = session.getMapper(NewsMapper.class);
			News = mapper.findById(id);
			System.out.println(News);
		} finally {
			DBUtil.closeSession();
		}
		return News;
	}
	
	public boolean modifyNews(NewsEntity NewsEntity){
		boolean ret = false;
		SqlSession session = DBUtil.getSession();
		try{
			NewsMapper mapper = session.getMapper(NewsMapper.class);
			ret = mapper.update(NewsEntity) > 0 ? true : false;
			session.commit();
		}finally{
			DBUtil.closeSession();
		}
		return ret;
	}
	
	public boolean addNews(NewsEntity NewsEntity){
		boolean ret = false;
		SqlSession session = DBUtil.getSession();
		try{
			NewsMapper mapper = session.getMapper(NewsMapper.class);
			ret = mapper.insert(NewsEntity) > 0 ? true : false;
			session.commit();
		}finally{
			DBUtil.closeSession();
		}
		return ret;
	}
	
	public NewsEntity getNewsById(int id) {
		return findById(id);
	}
	
	public List<NewsEntity> listNews(int page, int size) {
		return queryPage(page,size);
	}
	
	
	public List<NewsEntity> queryPage(int page ,int size){
		List<NewsEntity> NewsList = null;
		SqlSession session = DBUtil.getSession();
		try {
			int offset = (page - 1) * size;
			NewsMapper mapper = session.getMapper(NewsMapper.class);
			System.out.println(offset);
			NewsList = mapper.queryPage(offset, size);
		} finally {
			DBUtil.closeSession();
		}
		return NewsList;
	}

	public boolean enableNews(int NewsId) {
		boolean ret = false;
		SqlSession session = DBUtil.getSession();
		try{
			NewsMapper mapper = session.getMapper(NewsMapper.class);
			ret = mapper.enable(NewsId) > 0 ? true : false;
			session.commit();
		}finally{
			DBUtil.closeSession();
		}
		return ret;
	}

	public boolean disableNews(int NewsId) {
		boolean ret = false;
		SqlSession session = DBUtil.getSession();
		try{
			NewsMapper mapper = session.getMapper(NewsMapper.class);
			ret = mapper.disable(NewsId) > 0 ? true : false;
			session.commit();
		}finally{
			DBUtil.closeSession();
		}
		return ret;
	}

}
