package com.qst.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.qst.pojo.User;

@Repository
@Mapper
public interface UserDao {

	//登录查询
	public User checkLogin(User user);
	
	//查询该用户是否已经存在
	public User selectUser(User user);
	//注册
	public void addUser(User user);
	
	//更新用户信息
	public void updateUser(User user);
}
