<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="js/include.js"></script>
<title></title>
</head>
<style>
		h1{
	text-align: center;
}
.bigdiv span{
	font-size: 24px;
	margin-left: 30px;
	font-family:华文彩云;
	color:#fff;
}
.input1{
	width:240px;
	height: 30px;
	border-radius: 5px;
	border:2px solid #efeaea;
	
}
.input2{
	width: 120px;
	height: 40px;
	color: #FFFFFF;
	background: #d2b99b;
	border-radius: 5px;
	font-size: 20px;
}
.div1{
	margin-top: 50px;
}
form{
	width: 480px;
	height: 460px;
	border: 1px solid #304b54;
	border-radius: 5px;
	text-align:center;
	margin: 0 auto;
	background: #5f5859;
	box-shadow: 8px 6px 30px #d0b488;
	opacity:0.9;
}
.bigdiv{
margin-top:30px;
height:500px;
}
.href1{
color:#fff;
}


</style>
<body background="img/img1.jpg">
<include src="head.jsp"></include><br>
<div class="bigdiv">
<form action="updateuser-action" method="post">
<input type="hidden" name="user.user_id" value="${user1.user_id}">
<input type="hidden" name="user.privilege" value="${user1.privilege}">
<br>
	<h1 style="font-family:华文彩云; color:#fff;">个人信息</h1>
	<div class="div1">
<span>用户名：</span>
<input type="text" name="user.user_name" value="${user1.user_name}" class="input1" required>
</div>

	<div class="div1">
<span>邮&nbsp;&nbsp;箱：</span>
<input type="text" name="user.mail" value="${user1.mail}" class="input1" required>
</div>

<div class="div1">
<span>密&nbsp;&nbsp;码：</span>
<input type="text" name="user.password" value="${user1.password}" class="input1" required></div>
<br><br>
					
					
					<input type="submit" value="保存" class="input2">
<br><br>
					<a href="login.jsp" class="href1">切换账号</a><br>
					</form>
					</div>
					
	<include src="footer.jsp"></include>
	<script type="text/javascript ">
			function account(obj){
				console.log(obj);
				let ul=obj.getElementsByTagName('ul')[0];
				if(ul.className=='dropdown-links'){
					ul.classList.add('active');
				}else{
					ul.classList.remove('active');
				}
			}
		</script> 
</body>
</html>