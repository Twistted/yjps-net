package com.test.web.mapper;

import java.util.List;

import com.test.web.entity.ManagerEntity;

public interface ManagerMapper {
	public ManagerEntity findById(int id);
	public List<ManagerEntity> findAll();
	public List<ManagerEntity> queryPage(int offset, int size);
}
