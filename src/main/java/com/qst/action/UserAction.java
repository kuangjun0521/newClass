package com.qst.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.qst.dao.FirstDao;
import com.qst.dao.UserDao;
import com.qst.pojo.First;
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
	
	User user;

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
			
		if(user1.getMail().equals(user.getMail())&&user1.getPassword().equals(user.getPassword())) {
			user.setUser_id(user1.getUser_id());
			ActionContext ac = ActionContext.getContext();
			ac.getSession().put("user1", user1);
			
			if(user1.getUser_id()==1) {
				
				//查询一级课程名称和id
			/*List<First> first = firstdao.selectFirst();
			ActionContext ac1 = ActionContext.getContext();
			ac1.getSession().put("first", first);*/
			
				return "main";
			}else {
				return "success";
			}
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
