<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="font-awesome-4.7.0/css/font-awesome.css" />
		<!-- 新 Bootstrap 核心 CSS 文件 -->
<link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
		<!-- 		 <link rel="stylesheet" href="//apps.bdimg.com/libs/jqueryui/1.10.4/css/jquery-ui.min.css"> -->
<script src="js/include.js" type="text/javascript" charset="utf-8"></script>
<title>课程</title>
</head>
<body>
	<style>
		.first-order{
			margin-left: 100px;
		}
		li{
			list-style: none;
		}
	 .one{  /* 大标签样式 */
	  width: 200px;
	  height: 30px;
	  font-size: 20px;
	  margin-top: 14px;
	  background: orange;
	}	
	.second-order li{/* 小标签样式 */
	
	  width: 300px;
	  margin-top: 10px;
	  margin-left: 40px;
	}
	.one li{
		padding-left: 20px;
	}
	
	/* 右边样式 */
	.bigdiv{
		margin-left: -50px;
	}
	.img1 img{ /* 图片大小 */
		width: 200px;
		height: 150px;
	}
	.img1{   /* 一个课程视频的div */
		margin-top: 30px;
		border: 2px solid #F9F9F9;
		width: 29%;
		padding-left: 20px;
		padding-bottom: 20px;
		padding-top: 20px;
		padding-top: 20px;
		float: left;
		margin-left: 20px;
		box-shadow: 0px 1px 25px 5px #f9f9f9;
	}
	.col-md-8 p{  /* 检索条件样式 */
		font-size: 20px;
		text-align: center;
		font-family: 微软雅黑;
	}
	.bigdiv .input1{ /* 课程名称 */
		width: 100px;
		background:#F2EDED;
		border-top-left-radius: 5px;
		border-bottom-left-radius: 5px;
	}
	.bigdiv .input2{ /* 输入文本框 */
		width: 300px;
		border-top-right-radius: 5px;
		border-bottom-right-radius: 5px;
	}
	.bigdiv .input3{
		width: 100px;
		background: orange;
		border-radius: 10px;
	}
	</style>

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

	<div class="col-lg-4 col-md-4">
			<div class="first-order">
			<c:forEach items="${firstlist1}" var="u" varStatus="vs">
					<div class="one">
					<li><a href="selectbyfirst-action?first.first_id=${u.first_id }">${u.first_name}</a></li>
					</div>
					
					<div class="second-order">
					<c:forEach items="${secondlist1}" var="n" varStatus="vs">
					
					<c:if test="${u.first_id eq n.first_id}">
						<li class="lia"><a href="selectbysecond-action?second.second_id=${n.second_id}">${n.second_name}</a></li>
					</c:if>
					
                    </c:forEach>
					</div>

				</c:forEach>
			</div>

		</div>
		<div class="col-lg-8 col-md-8">
			
		<div class="bigdiv">
		<br><br>
		<form action="selectbytext-action" method="post">
			<p>检索条件</p><br>
			<p><input type="button" value="课程名称" class="input1"><input type="text" name="course.course_name" placeholder="请输入课程名" class="input2"></p><br>
			<p><input type="submit" value="检索" class="input3"/></p><br>
		</form>
		    <c:forEach items="${courselist}" var="cou" varStatus="vs">
		    
			<div class="img1">
			<span>${cou.course_name}</span><br>
			<span>${cou.course_desc}</span><br>
			<img src="${cou.course_img}" /><br>
			<span>${cou.course_teacher}|</span>
			<span>${cou.course_type}</span><br>
			</div>
			
		</c:forEach>

		</div>
</div>

</body>
</html>