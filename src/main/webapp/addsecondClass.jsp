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

  <div>
  <h1>创建二级课程</h1><br>
  <hr>
  
  <form action="addsecond-action" method="post">
  <h3>请选择一级课程：</h3>
	<select name="second.first_id">
		<c:forEach items="${firstlist1}" var="u" varStatus="vs">
			<option value="${u.first_id}">${u.first_name}</option>
		</c:forEach>
    
	</select>
	<br>
	二级课程名：
	<input type="text" name="second.second_name"><br>
	<input type="submit" value="创建">
	
	</form>
  </div>

	<include src="footer.jsp"></include>
</body>
</html>