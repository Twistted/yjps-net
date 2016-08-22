package com.test.web.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.test.web.entity.HouseEntity;


public interface HouseMapper {
	public HouseEntity findById(int id);
	public List<HouseEntity> findAll();
	public List<HouseEntity> queryPage(@Param("offset") int offset, @Param("size") int size);

	public List<HouseEntity> queryAdvertisementList(int id);
	public int update(HouseEntity house);
	public int delete(int id);
	public int insert(HouseEntity houseEntity);
	public List<HouseEntity> search(@Param("title") String title, @Param("prize") String prize, 
				@Param("roomAmount") String roomAmount, @Param("area") String area);

}
