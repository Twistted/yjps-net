package com.test.web.mapper;

import java.util.List;

import com.test.web.entity.LinkEntity;

public interface LinkMapper {

	public int insert(LinkEntity linkEntity);
	public LinkEntity findByName(String webName);
	public List<LinkEntity> findAll();
	public List<LinkEntity> queryPage(int offset, int size);
	public int update(LinkEntity linkEntity);
	public int delete(LinkEntity linkEntity);
	
}
