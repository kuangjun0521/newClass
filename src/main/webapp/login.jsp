<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录界面</title>
</head>
<link href="css/login.css" rel="stylesheet" rev="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/jQuery1.7.js"></script>
<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="js/jquery1.42.min.js"></script>
<script type="text/javascript" src="js/jquery.SuperSlide.js"></script>
<script type="text/javascript" src="js/Validform_v5.3.2_min.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	var $tab_li = $('#tab ul li');
	$tab_li.hover(function(){
		$(this).addClass('selected').siblings().removeClass('selected');
		var index = $tab_li.index(this);
		$('div.tab_box > div').eq(index).show().siblings().hide();
	});	
});
</script>
<script type="text/javascript">
$(function(){
	$(".screenbg ul li").each(function(){
		$(this).css("opacity","0");
	});
	$(".screenbg ul li:first").css("opacity","1");
	var index = 0;
	var t;
	var li = $(".screenbg ul li");	
	var number = li.size();
	function change(index){
		li.css("visibility","visible");
		li.eq(index).siblings().animate({opacity:0},3000);
		li.eq(index).animate({opacity:1},3000);
	}
	function show(){
		index = index + 1;
		if(index<=number-1){
			change(index);
		}else{
			index = 0;
			change(index);
		}
	}
	t = setInterval(show,8000);
	//根据窗口宽度生成图片宽度
	var width = $(window).width();
	$(".screenbg ul img").css("width",width+"px");
});
</script>
<body>
<div id="tab">
  <ul class="tab_menu">
    <li class="selected">登录</li>
    <li>注册</li>
  </ul>
  <div class="tab_box"> 
    <!-- 登录开始 -->
    <div>
      <div class="stu_error_box"></div>
      <form action="login-action" method="post" class="stu_login_error">
        <div id="username">
          <label>邮&nbsp;&nbsp;&nbsp;箱：</label>
          <input type="text" id="stu_username_hide" name="user.mail" placeholder="输入邮箱" nullmsg="邮箱不能为空！"  sucmsg="学号验证通过!"/>
          <!--ajaxurl="demo/valid.jsp"--> 
        </div>
        <div id="password">
          <label>密&nbsp;&nbsp;&nbsp;码：</label>
          <input type="password" id="stu_password_hide" name="user.password" placeholder="输入密码" nullmsg="密码不能为空！"  sucmsg="密码验证通过！"/>
        </div>
        <div id="login">
          <button type="submit">登录</button>
        </div>
      </form>
    </div>
   <!-- 学生登录结束-->
   <!-- 注册开始-->
    <div class="hide">
     <div class="tea_error_box"></div>
      <form action="register-action" method="post" class="tea_login_error">
        <div id="username">
          <label>用户名：</label>
          <input type="text" id="tea_username_hide" name="user.user_name" placeholder="输入用户名" />
          <!--ajaxurl="demo/valid.jsp"--> 
        </div>
        <div id="username">
          <label>邮&nbsp;&nbsp;&nbsp;箱：</label>
          <input type="text" id="tea_password_hide" name="user_mail" placeholder="输入邮箱"  />
        </div>
        <div id="password">
        <label>密&nbsp;&nbsp;&nbsp;码：</label>
        <input type="password" id="one" name="user.password" placeholder="输入密码" />
        </div>
		<div id="password">
		<label>确认密码：</label>
		<input type="password" id="two" name="upassword" placeholder="确认密码" onkeyup="check()"/><br><span id="tishi"></span>
		</div>
		<br>
		<input type="radio" name="user.privilege" value="1"/>管理员&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="radio" name="user.privilege" value="2"/>用户<br><br>
        <div id="login">
          <button type="submit">注册</button>
        </div>
      </form>
    </div>
     <!-- 注册结束-->
  </div>
</div>
<div class="screenbg">
  <ul>
    
    <li><a href="javascript:;"><img src="img/back4.jpg"></a></li>
    <li><a href="javascript:;"><img src="img/back3.jpg"></a></li>
	<li><a href="javascript:;"><img src="img/back2.jpg"></a></li>
  </ul>
</div>

 <script>
          function check() {
              var pwd1 = document.getElementById("one").value;
              var pwd2 = document.getElementById("two").value;
		/* <!-- 对比两次输入的密码 --> */
              if(pwd1 == pwd2) {
                  document.getElementById("tishi").innerHTML="<font color='green'>两次密码相同</font>";
                  document.getElementById("submit").disabled = false;
              }
              else {
                  document.getElementById("tishi").innerHTML="<font color='red'>两次密码不相同</font>";
                document.getElementById("submit").disabled = true;
              }
          }
      </script>
</body>
</html>