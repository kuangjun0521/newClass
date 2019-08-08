<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="font-awesome-4.7.0/css/font-awesome.css" />
<script src="js/include.js" type="text/javascript" charset="utf-8"></script>
<title>Insert title here</title>
</head>
<style>
table {
	margin:0 auto;
	margin-top: 40px;
	width:70%;
}

.text-c {
	font-size: 18px;
	color: #fff;
	background-color: #364a50;
}

.text-d {
	line-height: 25px;
	font-size:14px;
	font-family:华文彩云;
}
.th1{
/* 表名样式 */
background:#918e9a;
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

	<table border="1" cellspacing="0" text-align="center">
		<thead>
			<tr>
				<th scope="col" colspan="3" class="th1">一级课程信息表</th>
			</tr>
			<tr class="text-c">
			<th>ID</th>
				<th>课程名称</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${firstlist}" var="u" varStatus="vs">
				<tr class="text-d">
				<th>${ u.first_id}</th>
					<th>${ u.first_name}</th>
					<th><a href="selectonefirst-action?first.first_id=${u.first_id}"><i
							class="fa fa-pencil-square-o"></i></a> /<a
						href="deletefirst-action?first.first_id=${u.first_id }"><i
							class="fa fa-trash"></i></a></th>
				</tr>
			</c:forEach>

		</tbody>
	</table>
     
     
     <table border="1" cellspacing="0" text-align="center">
		<thead>
			<tr>
				<th scope="col" colspan="4" class="th1">二级课程信息表</th>
			</tr>
			<tr class="text-c">
			    <th>ID</th>
				<th>课程名称</th>
				<th>一级ID</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${secondlist}" var="u" varStatus="vs">
				<tr class="text-d">
				    <th>${u.second_id}</th>
					<th>${ u.second_name}</th>
					<th>${ u.first_id}</th>
					<th><a
						href="selectonesecond-action?second.second_id=${n.second_id}"><i
							class="fa fa-pencil-square-o"></i></a> /<a
						href="deletesecond-action?second.second_id=${n.second_id }"><i
							class="fa fa-trash"></i></a></th>
				</tr>
			</c:forEach>

		</tbody>
	</table>
	
	
	    <table border="1" cellspacing="0" text-align="center">
		<thead>
			<tr>
				<th scope="col" colspan="7" class="th1">三级课程信息表</th>
			</tr>
			<tr class="text-c">
			<th>ID</th>
			<th>课程名称</th>
			<th>课程描述</th>
				<th>讲师</th>
				<th>所属</th>
				<th>二级ID</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${courselist}" var="u" varStatus="vs">
				<tr class="text-d">
				    <th>${u.third_id}</th>
				    <th>${u.course_name }</th>
				    <th>${u.course_desc }</th>
				    <th>${u.course_teacher }</th>
				    <th>${u.course_type }</th>
					<th>${ u.second_id}</th>
					<th><a href="selectonethird-action?course.third_id=${u.third_id}"><i
							class="fa fa-pencil-square-o"></i></a> /
			<a href="deletethird-action?course.third_id=${u.third_id }"><i
							class="fa fa-trash"></i></a></th>
				</tr>
			</c:forEach>

		</tbody>
	</table>
	<br><br><br>
	<include src="footer.jsp"></include>
</body>
</html>