package com.test.web.service;

import java.util.List;

import com.test.web.entity.CommentEntity;

public interface ICommentService {
	
	//boolean deleteComment(CommentEntity commentEntity);
	boolean addComment(CommentEntity commentEntity);
	CommentEntity getCommentById(int id);
	List<CommentEntity> listComment(int page,int size);

}
