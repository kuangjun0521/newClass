package com.qst.action;

import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.qst.dao.UserDao;
import com.qst.pojo.User;

public class UserAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Autowired
	UserDao userdao;
	
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
			
			ActionContext ac = ActionContext.getContext();
			ac.getSession().put("user1", user1);
			if(user1.getUser_id()==1) {
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
