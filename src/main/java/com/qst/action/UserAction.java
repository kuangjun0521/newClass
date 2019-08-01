package com.qst.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
	HttpServletRequest request;
	HttpSession session;

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
			//将所有信息存入session之中
            request = ServletActionContext.getRequest();
            session = request.getSession();  //定义session来存放数据
			ActionContext ac = ActionContext.getContext();
			ac.getSession().put("user1", user1);
			
			if(user1.getUser_id()==1) {
				//当角色为管理员时
				List<First> firstlist1 = firstdao.selectFirst();//将所有信息存入
				List<Second> secondlist1 = firstdao.selectSecond();
				List<Course> courselist1 = coursedao.selectCourse();
			    session.setAttribute("firstlist1", firstlist1);
			    session.setAttribute("secondlist1", secondlist1);
			    session.setAttribute("courselist1", courselist1);
			    session.setAttribute("user1", user1);
				return "main";
			}else {
				return "success";
			}
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
	@Override
	public void validate() {
		
		//super.validate();
		if(user.getMail().equals("")) {
			this.addFieldError("user.mail", "邮箱名不能为空！");
		}
		if(user.getPassword().equals("")){
			this.addFieldError("user.password", "密码不能为空！");
		}
		
	}
	

}
