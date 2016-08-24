package com.test.web.mapper;

import java.util.List;

import com.test.web.entity.PrivacyEntity;

public interface PrivacyMapper {

	public int insert(PrivacyEntity privacyEntity);
	public PrivacyEntity findById(int newsId);
	public List<PrivacyEntity> findAll();
	public List<PrivacyEntity> queryPage(int offset, int size);
	public int update(PrivacyEntity privacyEntity);
	public int delete(PrivacyEntity privacyEntity);
	
}
