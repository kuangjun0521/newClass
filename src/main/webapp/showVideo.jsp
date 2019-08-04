<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
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
			 margin-left: 180px; 
			 height: 500px;
			 overflow: scroll;
			 
		 }
		 .title{
			 font-size: 24px;
			 width: 400px;
			 height: 40px;
			 background: #F8C01B;
			 margin-left: -15px;
			 padding-left: 20px;
		 }
		 .col-lg-7{ /* 右边视频播放样式 */
			padding-left:100px;
		 }
		 .foreach{
			 padding-top: 10px;
		 }
		 .lia{
			 font-size: 20px;
			 font-family: 微软雅黑;
		 }
		 .lia i{ /* 播放图标 */
			 padding-left: 50px;
			 font-size: 20px;
			 color: coral;
		 }
		 span{
		 font-size:20px;
		 }
		 video{
		 margin-top:-50px;
		 }
	</style>
<body>
<%-- <a href="${url }">Play a video file</a> --%>
<include src="head.jsp"></include>
		<br>
		<div class="col-lg-5 col-md-5 bigdiv" style="width:380px;">
			<div class="title">视&nbsp;频&nbsp;列&nbsp;表<i class="fa fa-angle-down" style="padding-left: 200px;"></i></div>
			
			<div class="foreach">
			<c:forEach items="${videolist}" var="u" varStatus="vs">
				<c:if test="${u.id eq video.id }">
					<li class="lia"><a href="showVideo-action?video.id=${u.id}">${u.video_desc}</a><i class="fa fa-pause-circle"></i></li>
					<hr />
				</c:if>
				<c:if test="${u.id ne video.id }">
					<li class="lia"><a href="showVideo-action?video.id=${u.id}">${u.video_desc}</a><i class="fa fa-youtube-play"></i></li>
					<hr />
				</c:if>
			</c:forEach>
		</div>
		</div>
		<div class="col-lg-7 col-md-7" style="padding-left:100px;">
			<span>${video.video_desc}</span><br>
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