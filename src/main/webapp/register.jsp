<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
	<style>
	
		
		span{  /* 字体样式 */
			font-size: 18px;
			color: darkgreen;
			font-weight: 3px;
			padding-left: 10px;
		}
		input{    /* 输入框样式 */
			width: 200px;
			height: 25px;
			padding-left: 10px;
			border-radius: 5px;

		}
        div{
			line-height: 55px;   /* 行间距 */
		}
		.button1,.button2{   /* 按钮的大小和样式 */
			width: 90px;
			height: 35px;
			margin-top: 20px;
			background: #C4E3F3;
		}
		.button2{
			margin-left: 20px;
		}
		.button1:hover,.button2:hover{  /* 鼠标移上去的效果 */
			background: #23527C;
		}
		input:hover{
			 box-shadow: 2px 4px 2px #000;/* 文本框阴影 */
			
		}
		.div1{
			
			padding-top: 30px;
		}
		.div2{    /*  表单外面的容器 */
			position: absolute;
			width: 400px;
			height: 300px;
			text-align: center;
			padding-top: 20px;
			padding-bottom: 150px;
			border: solid 1px #F2DEDE;
			border-radius: 20px;
			background: #FFFFFF;	
			opacity: 1;
			margin-left: 450px;
			margin-top: 30px;
			box-shadow: 2px 4px 2px #000;
		}
		form{   /* 表单样式 */
			position: absolute;
			width: 400px;
			height: 300px;
			text-align: center;
			padding-top: 20px;
			padding-bottom: 120px;
			margin-left: 450px;
			margin-top: 30px;
		}
	</style>
<body>
欢迎进入注册页面！
		<img src="img/register.jpg" width="100%" height="100%" style="position: absolute;"/>
		<div class="div2"></div>
		<div class="div1">
		<form style="position: relative;" action="register-action" method="post" id="add-user">
		
		<input name="action" value="register" type="hidden"/>
			<img src="image/timg.jpg" style="width: 100px; height: 100px;"/>
		
		<div>
		<span> 用户：</span> <input type="text" name="user.user_name" placeholder="输入用户名" minLength="1" maxLength="20" required/>
		</div>
		
		<div>
		<span> 邮箱：</span> <input type="text" name="user.mail" placeholder="输入邮箱" minLength="1" maxLength="20" required/>
		</div>
		
		<div>
		<span> 密码：</span> <input type="password" name="user.password" placeholder="输入密码" minLength="1" maxLength="20" required id="one"/>
		</div>
		
		<div>
		<span> 确认密码：</span> <input type="password" name="upassword" placeholder="再次输入密码" minLength="1" maxLength="20" required id="two" onkeyup="check()"><span id="tishi"></span>
		</div>
		
		  <br>
  
  <input type="radio" name="user.privilege" value="1"/>管理员
  <input type="radio" name="user.privilege" value="2"/>用户<br>
		<input type="submit" value="注册" class="button1"/>
		<input type="reset"  value="重置" class="button2"/>
		
		
		</form>
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