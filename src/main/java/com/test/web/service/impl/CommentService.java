package com.test.web.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.test.web.entity.CommentEntity;
import com.test.web.mapper.CommentMapper;
import com.test.web.service.ICommentService;
import com.test.web.util.DBUtil;

public class CommentService implements ICommentService{

	
	private CommentEntity commentEntity;
	private List<CommentEntity> commentList;
	
	private int insert(CommentEntity commentEntity){
		SqlSession session = DBUtil.getSession();
		int i;
		try{
			CommentMapper mapper = session.getMapper(CommentMapper.class);
			i = mapper.insert(commentEntity);
			System.out.println(i);
		}finally{
			DBUtil.closeSession();
		}
		return i;
	}
	
	private CommentEntity findById(int id){
		SqlSession session = DBUtil.getSession();
		try{
			CommentMapper mapper = session.getMapper(CommentMapper.class);
			commentEntity = mapper.findById(id);
			System.out.println(commentEntity);
		}finally{
			DBUtil.closeSession();
		}
		return commentEntity;
	}
	
	private  List<CommentEntity> queryPage(int page,int size){
		SqlSession session = DBUtil.getSession();
		try{
			CommentMapper mapper = session.getMapper(CommentMapper.class);
			commentList = mapper.queryPage(page,size);
			System.out.println(commentList);
		}finally{
			DBUtil.closeSession();
		}
		return commentList;
	}
	
/*	public boolean deleteComment(CommentEntity commentEntity) {
		// TODO Auto-generated method stub
		return false;
	}*/

	public boolean addComment(CommentEntity commentEntity) {
		// TODO Auto-generated method stub
		if(insert(commentEntity) > 0)
			return true;
		else return false;
	}

	public CommentEntity getCommentById(int id) {
		// TODO Auto-generated method stub
		return findById(id);
	}

	public List<CommentEntity> listComment(int page, int size) {
		// TODO Auto-generated method stub
		return queryPage(page,size);
	}

}
