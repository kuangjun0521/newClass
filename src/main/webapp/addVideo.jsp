<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="js/include.js"></script>
<title>Insert title here</title>
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

  <div class="center">
	  	<p>视频上传</p>
	  	<br>
	  	
	  	
	  	视频描述：<input type="text" name="video_desc"/><br><br>
	  	视频上传：<input type="text" name="video_address"/><br><br>
	  
	  	<input type="submit" value="创&nbsp;&nbsp;建" class="button"/>
	  
	  <br><br>
	  
	  </div>
</body>
</html>