package com.test.web.service;

import java.util.List;

import com.test.web.entity.FocusEntity;

public interface IFocusService {

	boolean addFocus(FocusEntity FocusEntity);
	boolean modifyFocus(FocusEntity FocusEntity);
	boolean enableFocus(int FocusId);
	boolean disableFocus(int FocusId);
	List<FocusEntity> findAll();
	FocusEntity getFocusById(int id);
	List<FocusEntity> listFocus(int page, int size);
}
