package com.test.web.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.test.web.entity.LabelEntity;
import com.test.web.mapper.HouseLabelMapper;
import com.test.web.mapper.LabelMapper;
import com.test.web.service.ILabelService;
import com.test.web.util.DBUtil;

public class LabelService implements ILabelService{
	
	private LabelEntity label;
	private List<Integer> idList;
	private List<LabelEntity> labelList;

	private List<LabelEntity> findByHouseId(int houseId){
		SqlSession session = DBUtil.getSession();
		try{
			HouseLabelMapper houseLabelMapper = session.getMapper(HouseLabelMapper.class);
			idList = houseLabelMapper.findByHouseId(houseId);
			LabelMapper labelMapper = session.getMapper(LabelMapper.class);
			for(int i = 0;i < idList.size();i++){
				label = labelMapper.findById(idList.get(0));
				labelList.add(label);
			}
			System.out.println(labelList);
		}finally{
			DBUtil.closeSession();
		}
		return labelList;
	}
	
	private int delete(int labelId){
		SqlSession session = DBUtil.getSession();
		int i;
		try{
			LabelMapper labelMapper = session.getMapper(LabelMapper.class);
			i = labelMapper.delete(labelId);
			session.commit();
			System.out.println(i);
		}finally{
			DBUtil.closeSession();
		}
		return i;
	}
	
	private int insert(LabelEntity label){
		SqlSession session = DBUtil.getSession();
		int i;
		try{
			LabelMapper labelMapper = session.getMapper(LabelMapper.class);
			i = labelMapper.insert(label);
			session.commit();
		}finally{
			
		}
		return i;
	}
	
	private List<LabelEntity> findAll(){
		SqlSession session = DBUtil.getSession();
		try{
			LabelMapper labelMapper = session.getMapper(LabelMapper.class);
			labelList = labelMapper.findAll();
		}finally{
			DBUtil.closeSession();
		}
		return labelList;
	}
	
	private List<LabelEntity> queryPage(int page,int size){
		SqlSession session = DBUtil.getSession();
		try{
			int offset = (page - 1) * size;
			LabelMapper labelMapper = session.getMapper(LabelMapper.class);
			labelList = labelMapper.queryPage(offset,size);
		}finally{
			DBUtil.closeSession();
		}
		return labelList;
	}
	
	public List<LabelEntity> getLabelById(int id) {
		return findByHouseId(id);
	}

	public boolean addLabel(LabelEntity label) {
		// TODO Auto-generated method stub
		if(insert(label) > 0)
			return true;
		else return false;
	}

	public boolean deleteByLabelId(int labelId) {
		// TODO Auto-generated method stub
		if(delete(labelId) > 0)
			return true;
		else return false;
	}

	public List<LabelEntity> getAllLabel() {
		// TODO Auto-generated method stub
		return findAll();
	}

	public List<LabelEntity> queryByPage(int page, int size) {
		// TODO Auto-generated method stub
		return queryPage(page,size);
	}

}
