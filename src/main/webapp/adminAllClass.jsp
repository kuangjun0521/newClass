<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css"
	href="font-awesome-4.7.0/css/font-awesome.css" />
<script src="js/include.js" type="text/javascript" charset="utf-8"></script>
<title>Insert title here</title>
</head>
<style>
table {
	margin-left: 350px;
	margin-top: 20px;
}

i {
	color: orange;
}

.text-c {
	font-size: 20px;
	color: #fff;
	background-color: lightblue;
}

.text-d {
	line-height: 30px;
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

	<table border="1" cellspacing="0" width="50%" text-align="center">
		<thead>
			<tr>
				<th scope="col" colspan="2"
					style="font-size: 24px; background-color: lightblue; color: #fff;">一级课程信息表</th>
			</tr>
			<tr class="text-c">
				<th>一级课程名称</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${firstlist1}" var="u" varStatus="vs">
				<tr class="text-d">
					<th>${ u.first_name}</th>
					<th><a href="updatefirst-action?first.first_id=${u.first_id}"><i
							class="fa fa-pencil-square-o"></i></a> /<a
						href="deletefirst-action?first.first_id=${u.first_id }"><i
							class="fa fa-trash"></i></a></th>
				</tr>
			</c:forEach>

		</tbody>
	</table>
     
     
     <table border="1" cellspacing="0" width="50%" text-align="center">
		<thead>
			<tr>
				<th scope="col" colspan="2"
					style="font-size: 24px; background-color: lightblue; color: #fff;">二级课程信息表</th>
			</tr>
			<tr class="text-c">
				<th>二级课程名称</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${secondlist1}" var="u" varStatus="vs">
				<tr class="text-d">
				    <th></th>
					<th>${ u.second_name}</th>
					<th><a
						href="updatesecond-action?second.second_id=${u.second_id}"><i
							class="fa fa-pencil-square-o"></i></a> /<a
						href="deletesecond-action?second.second_id=${u.second_id }"><i
							class="fa fa-trash"></i></a></th>
				</tr>
			</c:forEach>

		</tbody>
	</table>
	
	
	    <table border="1" cellspacing="0" width="50%" text-align="center">
		<thead>
			<tr>
				<th scope="col" colspan="2"
					style="font-size: 24px; background-color: lightblue; color: #fff;">二级课程信息表</th>
			</tr>
			<tr class="text-c">
				<th>三级课程名称</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${courselist1}" var="u" varStatus="vs">
				<tr class="text-d">
				    <th></th>
					<th>${ u.course_name}</th>
					<th><a
						href="updatecourse-action?course.third_id=${u.third_id}"><i
							class="fa fa-pencil-square-o"></i></a> /<a
						href="deletecourse-action?course.third_id=${u.third_id }"><i
							class="fa fa-trash"></i></a></th>
				</tr>
			</c:forEach>

		</tbody>
	</table>
	<include src="footer.jsp"></include>
</body>
</html>