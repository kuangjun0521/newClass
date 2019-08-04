package com.qst.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.qst.pojo.Course;
import com.qst.pojo.First;
import com.qst.pojo.Second;
import com.qst.pojo.Third;

@Repository
@Mapper
public interface FirstDao {

	// 查询所有一级课程
	public List<First> selectFirst();

	// 查询所有二级课程
	public List<Second> selectSecond();

	// 查询所有三级课程
	public List<Third> selectThird();

	// 查询所有三级课程
	public List<Course> selectCourse();

	// 根据一级课程名称查找该课程是否存在
	public First selectOneFirst(First first);

	// 添加一个一级课程
	public void insertOneFirst(First first);

	// 根据二级课程名称查找该课程是否存在
	public Second selectOneSecond(Second second);

	// 添加一个二级课程
	public void insertOneSecond(Second second);

	// 根据一级课程id查询二级课程
	public List<Second> selectSecondbyFirst(First first);

	// 根据二级课程id查询到三级课程
	public List<Course> selectThirdbySecond(Second second);

	// 根据一级课程id查询到一级课程
	public First selectoneFirst(First first);

	// 根据二级课程id查询到二级课程
	public Second selectoneSecond(Second second);

	// 根据三级课程id查询到三级课程
	public Course selectoneCourse(Course course);

	// 根据一级课程id更新一个一级课程
	public void updateOneFirst(First first);

	// 根据二级课程id更新一个二级课程
	public void updateOneSecond(Second second);

	// 根据三级课程id更新一个三级课程
	public void updateOneThird(Course course);
}
