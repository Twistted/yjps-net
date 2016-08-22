package com.test.web.mapper;

import java.util.List;

import com.test.web.entity.JoinEntity;

public interface JoinMapper {
	public int insert(JoinEntity joinEntity);
	public JoinEntity findById(int id);
	public List<JoinEntity> findAll();
	public List<JoinEntity> queryPage(int offset, int size);
	public int update(JoinEntity joinEntity);
}
