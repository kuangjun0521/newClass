package com.qst.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.qst.pojo.Course;
import com.qst.pojo.First;
import com.qst.pojo.Second;
import com.qst.pojo.User;
import com.qst.pojo.Video;
@Repository
@Mapper
public interface CourseDao {

	public void addCourse(Course course);
	
	//查询所有三级课程
	public List<Course> selectCourse();
	
	//根据输入的课程名称查询课程
	public List<Course> selectThirdbyText(Course course);
	
    //根据管理员id查询到三级课程
	public List<Course> selectMyCourse(User user);
	
	//根据三级课程里面的二级id查询到二级课程
	public List<Second> selectMySecond(List<Course> course);
	
	//根据二级课程里面的一级id查询到一级课程
	public List<First> selectMyFirst(List<Second> second);
	
	//上传视频
	public void insertVideo(Video video);
	
	//查询视频
	public List<Video> selectAllVideo(Video video);
	
	//播放视频
	public Video selectVideo(Video video);
	
	
}
