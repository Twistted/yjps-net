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
			System.out.println(i);
		}finally{
			DBUtil.closeSession();
		}
		return i;
	}
	
	public List<LabelEntity> getLabelById(int id) {
		return findByHouseId(id);
	}

	public boolean addLabel(LabelEntity label) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean deleteByLabelId(int labelId) {
		// TODO Auto-generated method stub
		if(delete(labelId) > 0)
			return true;
		else return false;
	}

}
