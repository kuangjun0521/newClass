<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
欢迎进入注册页面！
   <form action="register-action" method="post">
   用户名：
   <input type="text" name="user.user_name" ><br>
   
   邮箱：<input type="text" name="user.mail" ><br>
   <s:fielderror fieldName="user.name"></s:fielderror>
  密码： <input type="text" name="user.password" id="one"><br>
  
  确认密码： <input type="text" name="upassword" id="two" onkeyup="check()"><span id="tishi"></span>
  
  <br>
  
  <input type="radio" name="user.privilege" value="1"/>管理员
  <input type="radio" name="user.privilege" value="2"/>用户<br>
  <s:fielderror fieldName="user.password"></s:fielderror>
   <input type="submit"  value="注册" >
    <input type="reset"  value="重置" >
   <br>
   </form>
   
   
   
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