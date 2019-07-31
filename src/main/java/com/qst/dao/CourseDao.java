package com.qst.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.qst.pojo.Course;
@Repository
@Mapper
public interface CourseDao {

	public void addCourse(Course course);
}
