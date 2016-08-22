package com.test.web.mapper;

import java.util.List;

import com.test.web.entity.CommentEntity;

public interface Comment {
	public int insert(CommentEntity commentEntity);
	public CommentEntity findById(int id);
	public List<CommentEntity> findAll();
	public List<CommentEntity> queryPage(int offset, int size);
	public int update(CommentEntity commentEntity);
}
