package com.test.web.service;

import java.util.List;

import com.test.web.entity.LabelEntity;

public interface ILabelService {
	
	List<LabelEntity> getLabelById(int id);
	boolean addLabel(LabelEntity label);
	boolean deleteByLabelId(int labelId);

}
