<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录界面</title>
</head>
<style>
		img{
			margin-left: 400px;   /* 背景图片 */
			position: absolute;
		}
		form{
			position: relative;  /* 表单位置 */
			text-align: center;
			padding-top: 100px;
		}
		/* 行间距 */
		div{
			line-height: 80px;
			font-size: 20px;
			color: #000000;
		}
		input{
			height: 30px;/* 输入栏大小 */
			border-radius: 10px;
			border: solid 1px #080808;
		}
		input:hover{
			box-shadow: 2px 4px 2px #122B40; /* 文本框阴影 */
		}
		
		.button1{   /* 按钮样式 */
		    margin-top: 30px;
			background: burlywood;
			font-size: 20px;
			width: 90px;
			height: 40px;
			border: solid 0px;
			margin-bottom:20px;
		} 
		a{   /* 链接的字体颜色 */
			color: rosybrown;
		}
		.img1{  /* qq图片设置 */
		    margin:0 auto;
			margin-top: 30px;
		}
		
		
	</style>
<body>
欢迎进入登录界面！
<br>
	<img src="img/login2.jpg"/>
		<form action="login-action" method="post">
			<div>
            <span>邮&nbsp;箱：</span>
			<input type="text" name="user.mail" placeholder="输入邮箱..."/>
			</div>
			
			<div>
			<span>密&nbsp;码：</span>
			<input type="password" name="user.password" placeholder="输入密码..."/>
			</div>
			
			<div>
			<input type="submit" value="登&nbsp;录" class="button1"/>
			</div>
			
		    <a href="register.jsp">未注册？点击注册</a>
		</form>
</body>
</html>