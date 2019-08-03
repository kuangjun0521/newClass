<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="js/include.js" type="text/javascript" charset="utf-8"></script>
<title>创建课程</title>
</head>
<style>
	.div1{  /* 整个div */
			margin-top: 20px;
			text-align: center;
			height:200px;
		}
		.text2{  /* 课程名称的样式 */
			width: 100px;
			height: 37px;
			border-bottom-left-radius: 5px;
			border-top-left-radius: 5px;
			background: #F0AD4E;
			font-size: 18px;
			font-family: 微软雅黑;
		}
		.text1{ /* 输入文本框的样式 */
			width: 300px;
			height: 37px;
			border-bottom-right-radius: 5px;
			border-top-right-radius: 5px;
			padding-top: 0px;
			font-size: 18px;
			font-family: 微软雅黑;
		}
		.text3{  /* 提交按钮的样式 */
			width: 300px;
			height: 35px;
			font-size: 24px;
			font-family: 微软雅黑;
			background: orange;
			border-radius: 5px;
		}
		.text1,.text2,.text3{
			border: 1px solid #006400;
		}
</style>
<body>
	<include src="head.jsp"></include>

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

	<br>

	
	<form action="addfirst-action" method="post">
	
	<div class="div1">
	<input type="button" value="课程名称" class="text2"/><input type="text" name="first.first_name" class="text1"/><br><br>
	<br>
	<input type="submit" value="创建" class="text3"/>
	</div>
	</form>
	

	<include src="footer.jsp"></include>
</body>
</html>