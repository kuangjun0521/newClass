<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="font-awesome-4.7.0/css/font-awesome.css"/>
<script src="js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
<title>Insert title here</title>
</head>
	<style>
		*{
			margin: 0;
			/* //padding: 0; */ /* 边距为0 */
		}
			.header{
			background:#3a3838;
			width: 100%;
			height: 100px;
			box-shadow:0 0 5px rgba(0, 0, 0, .2) ;
			display: block;
		}
	.center ul,.nav.navbar-nav.navbar-right .classes,.add,.login,.register {
		    color:#fff;
			position: relative; /* 导航栏li样式相对定位,设置浮动 */
			margin-top: -15px;
			padding-right: 40px;
			list-style: none;
		    float: left;
		}
			.center.nav ul{
			margin-left: 750px;  /* 位于导航栏右边 */
		}
		
		.link a {   /* 链接去掉下划线 */
			text-decoration: none;  
			color: #fff;
			font-size: 20px;
		}
		.link a:hover{
			color: green;  
		}
		.navbar-right {
		    margin-top:-20px;
			padding-left:750px;
			
		}
		.navbar-nav>li>a{
			color: #fff;
  			display: block;
  			font-size:18px;
  			margin-left:15px;
  			font-family:华文隶书;
		}
		.navbar-nav>li>a:hover{
			color: green;
			text-decoration:none;
		}
		a active,a:hover,a:link,a:focus {
			text-decoration: none;
			color: green;
		}
		.navbar-right .dropdown-links {
			z-index: 3;
			display: block;
			position: absolute;
			background-color: white;
			box-shadow: 0 0 5px rgba(0, 0, 0, .2);
			min-width: 140px;
			line-height: 3;
			max-height: 0px;
			overflow: hidden;
			transition: all .5s ease-in-out;
			list-style: none;
		}

		.navbar-right .dropdown-links li:hover a {
			color: red;
			font-size: 15px;
		}

		.navbar-right .dropdown-links li:nth-child(n+1):after {
			content: '';
			display: block;
			border-bottom: 1px solid #f2eded;
			width: 100%;
			margin-left: -18px;
			position: relative;
		}

		.navbar-right .dropdown-links.active {
			max-height: 500px;
			min-width:140px;
		}

		.navbar-left{
		    padding-top: 20px;
		    font-size: 27px;
		}
		.navbar-left .li1{
			margin-left: 50px;
		}
		
		.navbar-left h2{
			font-family: 华文琥珀;
			color: green;
			font-size: 50px;
			margin-left: 100px;
			padding-top: -10px;
			margin-top:0px;
		}

		
	</style> 
<body>
	 <div class="header">
			<nav>
			<ul class="nav navbar-nav navbar-left">
						<h2>New Class</h2>
			</ul>
					<ul class="nav navbar-nav navbar-right">
						<li class="classes">
						           
										<a href="selectClass-action">课程</a>
									</li>
									
						<li class="add" onclick="account(this)">
										<a href="javascript:;">开设课程<i class="fa fa-angle-down"></i></a>
										<ul class="dropdown-links">
											<li>
												<a href="addfirstClass.jsp">创建新课程</a>
											</li>
											
											<li>
												<a href="selectfirst-action">二级课程</a>
											</li>
											<li>
												<a href="addthirdMenu.jsp">三级课程</a>
											</li>
										</ul>
									</li>
									<li class="login">
										<a href="login.jsp">登录/注册</a>
									</li>
									<li class="register">
									<c:if test="${user1.user_name==null}">
									<a href="#">游客,欢迎你！</a>
									</c:if>
									<c:if test="${user1.user_name!=null}">
									<a href="#">${user1.user_name},欢迎你！</a>
									</c:if>
										
									</li>
					</ul>
		</nav>
		</div>
		
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

	<!-- header -->
<!-- 	<script type="application/x-javascript">
		
		
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	
	
	</script> -->

<%-- 	<div class="header">
		<div class="agileits_top_menu">
			<div class="w3l_header_left">
				<ul>
					<li><i class="fa fa-phone" aria-hidden="true"></i> +456 123
						7890</li>
					<li><i class="fa fa-envelope-o" aria-hidden="true"></i> <a
						href="mailto:info@example.com">info@example.com</a></li>
				</ul>
			</div>
			<div class="w3l_header_right">
				<div class="w3ls-social-icons text-left">
					<a class="facebook" href="#"><i class="fa fa-facebook"></i></a> <a
						class="twitter" href="#"><i class="fa fa-twitter"></i></a> <a
						class="pinterest" href="#"><i class="fa fa-pinterest-p"></i></a> <a
						class="linkedin" href="#"><i class="fa fa-linkedin"></i></a>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="content white agile-info">
			<nav class="navbar navbar-default" role="navigation">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="index.html">
						<h1>
							<span class="fa fa-book" aria-hidden="true"></span> 德创学堂
						</h1>
					</a>
				</div>
				<!--/.navbar-header-->
				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<nav class="link-effect-2" id="link-effect-2">
					<ul class="nav navbar-nav">
						<li class="active"><a href="main.html" class="effect-3">首页</a></li>
						<li><a href="selectClass-action" class="effect-3">课程</a></li>
						<li><a href="gallery.html" class="effect-3">Gallery</a></li>
						<c:if test="${user1.privilege==1}">
							<li class="dropdown"><a href="javascript:;"
								class="dropdown-toggle effect-3" data-toggle="dropdown">开设课程
									<b class="caret"></b>
							</a>
								<ul class="dropdown-menu">
									<li><a href="addfirstClass.jsp">创建新课程</a></li>
									<li><a href="selectfirst-action">二级课程</a></li>
									<li><a href="addthirdMenu.jsp">三级课程</a></li>
								</ul></li>
						</c:if>
						<li><a href="login.jsp" class="effect-3">登录/注册</a></li>
						<li><a href="login.jsp" class="effect-3">${user1.user_name},你好！</a></li>
					</ul>
					</nav>
				</div>
				<!--/.navbar-collapse-->
				<!--/.navbar-->
			</div>
			</nav>
		</div>
	</div>
	<a href="#home" class="scroll" id="toTop" style="display: block;">
		<span id="toTopHover" style="opacity: 1;"> </span>
	</a> --%>
</body>
</html>