package com.test.web.service;

import com.test.web.entity.JoinEntity;

public interface IJoinService {
	
	JoinEntity getJoinById(int id);
	boolean modifyJoin(JoinEntity joinEntity);
	boolean addJoin(JoinEntity joinEntity);

}
