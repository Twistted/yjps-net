package com.test.web.service;

import java.util.List;

import com.test.web.entity.ManagerEntity;

public interface IManagerService {

	boolean addManager(ManagerEntity managerEntity);
	boolean modifyManager(ManagerEntity managerEntity);
	List<ManagerEntity> findAll();
	ManagerEntity getManagerById(int id);
	List<ManagerEntity> listManager(int page, int size);
	ManagerEntity login(ManagerEntity managerEntity);
}
