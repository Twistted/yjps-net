package com.test.web.service;

import java.util.List;

import com.test.web.entity.LinkEntity;

public interface ILinkService {
	
	List<LinkEntity> getLinkList(List<String> webNameList);

}
