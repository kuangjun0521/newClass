package com.qst.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.qst.dao.CourseDao;
import com.qst.dao.FirstDao;
import com.qst.dao.UserDao;
import com.qst.pojo.Course;
import com.qst.pojo.First;
import com.qst.pojo.Second;
import com.qst.pojo.Third;
import com.qst.pojo.User;

public class UserAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Autowired
	UserDao userdao;
	
	@Autowired
	FirstDao firstdao;
	
	@Autowired
	CourseDao coursedao;
	
	User user;
	 //将所有信息存入session之中
	HttpServletRequest request = ServletActionContext.getRequest();
      //定义session来存放数据;
	HttpSession session = request.getSession();

	public UserAction() {
		super();
	}


	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
    
	public String login(){
		
		if(!user.getMail().equals("")&&!user.getPassword().equals("")) {
		User user1 = userdao.checkLogin(user);
		if(user1!=null) {
				//当角色为管理员时
				List<First> firstlist = firstdao.selectFirst();//将所有信息存入
				List<Second> secondlist = firstdao.selectSecond();
				List<Course> courselist = coursedao.selectCourse();
			    session.setAttribute("firstlist", firstlist);
			    session.setAttribute("secondlist", secondlist);
			    session.setAttribute("courselist", courselist);
			    session.setAttribute("user1", user1);
				return "success";
		}
			return "login";
		}
			return "login";	
		
	}

	
	public String register(){
		
		if(!user.getUser_name().equals("")&&!user.getPassword().equals("")&&!user.getMail().equals("")) {
		User user1 = userdao.selectUser(user);
		if(user1==null) {
			userdao.addUser(user);
			return "success";
		}
			return "register";		
		}
			return "register";

	}
	
public String updateMy() {
	userdao.updateUser(user);
	JOptionPane.showMessageDialog(null,"成功保存！");
	session.setAttribute("user1", user);
	return "success";
}
}
