package com.test.web.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.test.web.entity.ManagerEntity;

public interface ManagerMapper {
	public int insert(ManagerEntity managerEntity);
	public ManagerEntity findById(int id);
	public List<ManagerEntity> findAll();
	public List<ManagerEntity> queryPage(@Param("offset")int offset,@Param("size") int size);
	public int update(ManagerEntity managerEntity);
	public int enable(int managerId);
	public int diaable(int managerId);
	public ManagerEntity login(String account);
}
