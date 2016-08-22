package com.test.web.mapper;

import java.util.List;

import com.test.web.entity.AboutEntity;

public interface AboutMapper {
	public int insert(AboutEntity aboutEntity);
	public AboutEntity findById(int id);
	public List<AboutEntity> findAll();
	public List<AboutEntity> queryPage(int offset, int size);
	public int update(AboutEntity aboutEntity);
}
