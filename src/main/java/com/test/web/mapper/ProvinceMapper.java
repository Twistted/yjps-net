package com.test.web.mapper;

import java.util.List;

import com.test.web.entity.ProvinceEntity;

public interface ProvinceMapper {

	public int insert(ProvinceEntity provinceEntity);
	public ProvinceEntity findById(int provinceId);
	public List<ProvinceEntity> findAll();
	public List<ProvinceEntity> queryPage(int offset, int size);
	public int update(ProvinceEntity provinceEntity);
	public int delete(ProvinceEntity provinceEntity);
	
}
