package com.test.web.mapper;

import java.util.List;

import com.test.web.entity.SiteEntity;

public interface SiteMapper {

	public int insert(SiteEntity newsEntity);
	public SiteEntity findByName(String name);
	public List<SiteEntity> findAll();
	public List<SiteEntity> queryPage(int offset, int size);
	public int update(SiteEntity siteEntity);
	public int delete(SiteEntity siteEntity);
	
}
