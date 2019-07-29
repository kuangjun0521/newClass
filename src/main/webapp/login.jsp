<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录界面</title>
</head>
<body>
欢迎进入登录界面！
<form action="login-action" method="post">
邮箱：
<input type="text" name="user.mail" ><br>
<s:fielderror fieldName="user.mail"></s:fielderror>
密码：
<input type="text" name="user.password" ><br>
<s:fielderror fieldName="user.password"></s:fielderror>
<input type="submit" value="提交">
</form>
</body>
</html>