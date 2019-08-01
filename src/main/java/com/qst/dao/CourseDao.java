package com.qst.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.qst.pojo.Course;
@Repository
@Mapper
public interface CourseDao {

	public void addCourse(Course course);
	
	//查询所有三级课程
	public List<Course> selectCourse();
	
	//根据输入的课程名称查询课程
	public List<Course> selectThirdbyText(Course course);
}
