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
.div1 {
	width: 30%;
	float: left;
	margin-left: 20px;
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

<%-- 	<c:forEach items="${firstlist}" var="u" varStatus="vs">
		<div class="div1">
			<li><a href="javascript:;">${u.first_name}</a></li> <br>

			<c:forEach items="${secondlist}" var="n" varStatus="vs">

				<c:if test="${u.first_id eq n.first_id}">
					<li class="lia"><a>${n.second_name}</a></li>

					<c:forEach items="${thirdlist}" var="w" varStatus="vs">
						<c:if test="${n.second_id eq w.second_id}">
							<li class="lia"><a>${w.third_name}</a></li>
						</c:if>
					</c:forEach>
					<input type="button" value="创建三级课程">
				</c:if>
			</c:forEach>
			<br> <input type="button" value="创建二级课程">
		</div>
	</c:forEach> --%>

	
	<form action="addfirst-action" method="post">
	
	 课程名称：<input type="text" name="first.first_name"><br>
	 <input type="submit" value="创建">
	</form>
	

	<include src="footer.jsp"></include>
</body>
</html>