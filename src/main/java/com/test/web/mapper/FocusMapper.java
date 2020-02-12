package com.test.web.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.test.web.entity.FocusEntity;

public interface FocusMapper {
	
	public int insert(FocusEntity focusEntity);
	public FocusEntity findById(int newsId);
	public List<FocusEntity> findAll();
	public List<FocusEntity> queryPage(@Param("offset")int offset,@Param("size") int size);
	public int update(FocusEntity focusEntity);
	public int enable(int managerId);
	public int disable(int managerId);
}
