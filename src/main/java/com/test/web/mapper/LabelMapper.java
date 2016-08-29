package com.test.web.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.test.web.entity.LabelEntity;

public interface LabelMapper {
	
	public LabelEntity findById(int labelId);
	public List<LabelEntity> queryPage(@Param("offset")int offset,@Param("size") int size);
	public List<LabelEntity> findAll();
	public int delete(int labelId);
	public int insert(LabelEntity label);

}
