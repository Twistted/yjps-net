package com.test.web.service;

import java.util.List;

import com.test.web.entity.ManagerEntity;

public interface IManagerService {
	List<ManagerEntity> findAll();
	ManagerEntity getManagerById(int id);
	List<ManagerEntity> listManager(int page, int size);
	ManagerEntity login(ManagerEntity managerEntity);
}
