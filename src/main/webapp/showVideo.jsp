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
	li{
		   list-style: none;
		   
		 }
		 .bigdiv{  /* 左边导航栏 */
			 border: 1px solid #008000;
			 margin-left: 150px; 
			 height: 500px;
			 overflow: scroll;
			 border-radius:10px;
			 
		 }
		 .bigdiv1{
		 float:left;
		 }
		 .title{
			 font-size: 30px;
			 width: 400px;
			 height: 40px;
			 background: #53a039;
			 margin-left: -15px;
			 padding-left: 20px;
			 font-family:华文彩云;
			 color:#000;
			 
		 }
		 .foreach{
			 padding-top: 10px;
		 }
		 .foreach li{
			 padding-left: 20px;
		 }
		 .lia{
			 font-size: 20px;
			 font-family: 微软雅黑;
			 padding-top:10px;
		 }
		 .lia i{ /* 播放图标 */
			 padding-left: 50px;
			 font-size: 20px;
			 color: #1f8427;
		 }
		 span{
		 font-size:20px;
		 }
		 .bigdiv .title{
		 padding-top:10px;
		 
		 }
	</style>
<body>
<%-- <a href="${url }">Play a video file</a> --%>
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
		<div class="bigdiv1">
		<div class="bigdiv" style="width:350px;">
			<div class="title">&nbsp;&nbsp;${course1.course_name}<i class="fa fa-angle-down" style="padding-left: 150px;"></i></div>
			
			<div class="foreach">
			<c:forEach items="${videolist}" var="u" varStatus="vs">
				<c:if test="${u.id eq video.id }">
					<li class="lia"><a href="showVideo-action?video.id=${u.id}">${u.video_desc}</a><i class="fa fa-pause-circle"></i></li>
					<br>
					<hr />
				</c:if>
				<c:if test="${u.id ne video.id }">
					<li class="lia"><a href="showVideo-action?video.id=${u.id}">${u.video_desc}</a><i class="fa fa-youtube-play"></i></li>
					<br>
					<hr />
				</c:if>
			</c:forEach>
		</div>
		</div>
		</div>
		<div class="bigdiv1" style="padding-left:100px;">
			<video width="520" height="520" controls="controls">
				<source src="${url }" type="video/ogg" />
				<source src="${url }" type="video/mp4" />
				<source src="${url }" type="video/webm" />
				<object data="${url }" width="320" height="240">
					<embed width="320" height="240" src="${url }" />
				</object>
			</video>
		</div>
</body>
</html>