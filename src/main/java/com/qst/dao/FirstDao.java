package com.qst.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.qst.pojo.First;
import com.qst.pojo.Second;
import com.qst.pojo.Third;

@Repository
@Mapper
public interface FirstDao {

	//查询所有一级课程名称
	public List<First>  selectFirst();
	
	//查询所有二级课程名称
	public List<Second> selectSecond();
	
	//查询所有三级课程名称
	public List<Third> selectThird();
	
	
	//根据一级课程名称查找该课程是否存在
	public First selectOneFirst(First first);
	
	//添加一个一级课程
	public void insertOneFirst(First first);
	
	//根据二级课程名称查找该课程是否存在
	public Second selectOneSecond(Second second);
		
	//添加一个二级课程
	public void insertOneSecond(Second second);
}
