package com.test.web.service;

import java.util.List;

import com.test.web.entity.NewsEntity;

public interface INewsService {
	boolean addNews(NewsEntity newsEntity);
	boolean modifyNews(NewsEntity newsEntity);
	boolean enableNews(int newsId);
	boolean disableNews(int newsId);
	List<NewsEntity> findAll();
	NewsEntity getNewsById(int id);
	List<NewsEntity> listNews(int page, int size);
}
