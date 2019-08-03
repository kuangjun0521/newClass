<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="js/include.js"></script>
<title>Insert title here</title>
</head>
<style>
	.div1{
			text-align: center; /* 整个大的div */
			width: 600px;
			margin: 0 auto;
			height:500px;
		}
		.select1{  /* 下拉框 */
			width: 200px;
			height: 25px;
			border: 1px solid #008000;
			font-size: 18px;
		}
		.text2{  /* 课程名称的样式 */
			width: 130px;
			height: 39px;
			border-bottom-left-radius: 5px;
			border-top-left-radius: 5px;
			background: orange;
			font-size: 16px;
			font-family: 微软雅黑;
			padding-top: 3px;
		}
		.text1{ /* 输入文本框的样式 */
			width: 300px;
			height: 39px;
			border-bottom-right-radius: 5px;
			border-top-right-radius: 5px;
			font-size: 18px;
			font-family: 微软雅黑;
		}
		.text3{  /* 提交按钮的样式 */
			width: 300px;
			height: 35px;
			font-size: 22px;
			font-family: 微软雅黑;
			background: orange;
			border-radius: 5px;
		}
		.text3:hover{
			background: darksalmon;
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

	 <div class="div1">
		 <br><br>
  <h1>创建二级课程</h1>
  <hr>
  
  <form action="addsecond-action" method="post">
  <h3>请选择一级课程：</h3>
	<select name="second.first_id" class="select1">
		<c:forEach items="${firstlist}" var="u" varStatus="vs">
			<option value="${u.first_id}">${u.first_name}</option>
		</c:forEach>
    
	</select>
	<br><br><br>
	<input type="button" value="二级课程名称" class="text2"/><input type="text" name="second.second_name" class="text1"><br><br><br>
	<input type="submit" value="创&nbsp;&nbsp;建" class="text3">
	
	</form>
  </div>

	<include src="footer.jsp"></include>
</body>
</html>