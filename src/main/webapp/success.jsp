<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="js/include.js"></script>
<title></title>
</head>
<body>
欢迎你：${user1.user_name} <br>
<a href="add.jsp">添加新闻信息</a><br>
<br>
<h3>查询</h3>
  <form action="search-action" method="post">
   
  作者： <input type="text" name="news.author"><br>
   标题：<input type="text" name="news.title"><br>
  内容 <input type="text" name="news.content"><br>
  <input type="submit" value="查询">
   
   </form>

</body>
</html>