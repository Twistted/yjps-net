package com.test.web.service;

import com.test.web.entity.AboutEntity;

public interface IAboutService {
	
	AboutEntity getAboutById(int id);
	boolean modifyAbout(AboutEntity aboutEntity);
	boolean addAbout(AboutEntity aboutEntity);

}
