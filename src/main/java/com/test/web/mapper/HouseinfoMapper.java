package com.test.web.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.test.web.entity.HouseinfoEntity;

public interface HouseinfoMapper {
	
	public int insert(HouseinfoEntity houseinfoEntity);
	public HouseinfoEntity findById(int newsId);
	public List<HouseinfoEntity> findAll();
	public List<HouseinfoEntity> queryPage(@Param("offset")int offset,@Param("size") int size);
	public int update(HouseinfoEntity houseinfoEntity);
	public int enable(int managerId);
	public int disable(int managerId);
}
