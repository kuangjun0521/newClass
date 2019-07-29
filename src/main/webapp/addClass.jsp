<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="js/include.js"></script>
<title>创建课程</title>
</head>
	<style>
		.center{
			text-align: center;
			border: 1px solid #f9f9f9;
			width: 400px;
			margin: 0 auto;
			border-radius: 10px;
			box-shadow: 0px 1px 25px 5px #808080;
		}
		input{
			width: 200px;
			height: 20px;
			border-radius: 5px;
			font-size: 20px;
		}
		.button{
		 background: orange;
		 color: #FFFFFF;
		 height: 30px;
		}
	</style>
<body>
<include src="head.jsp"></include>
<br>
		<div class="center">
		<p>创建课程</p>
		<br>
		课程名称：<input type="text" name="course_name"/><br><br>
		
		课程描述：<input type="text" name="course_desc"/><br><br>
	    封面图片：<input type="text" name="course_img"/><br><br>
		课程讲师：<input type="text" name="course_teacher"/><br><br>
		课程所属：<input type="text" name="course_type"/><br><br>
		二级ID：<input type="text" name="second_id"/><br><br>
		<input type="submit" value="创&nbsp;&nbsp;建" class="button"/>
	  
	  <br><br>
	  
	  </div>
</body>
</html>