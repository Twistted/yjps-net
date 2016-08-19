package com.test.web.mapper;

import java.util.List;

import com.test.web.entity.LabelEntity;

public interface LabelMapper {
	
	public LabelEntity findById(int labelId);
	public int delete(int labelId);

}
