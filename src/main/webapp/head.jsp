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
<script src="js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
<title>Insert title here</title>
</head>
	<style>
		*{
			margin: 0;
			/* //padding: 0; */ /* 边距为0 */
		}
			.header{
			width: 100%;
			height: 100px;
			box-shadow:0 0 5px rgba(0, 0, 0, .2) ;
			    display: block;
		}
		.navbar-right {
			margin-right: 55px;
			margin-top: 20px;
		}
		.navbar-nav>li>a{
			color: #000000;
  			display: block;
  			font-size:20px;
  			margin-left:20px;
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
			top: 100%;
			line-height: 2.5;
			right: 0;
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
			width:140px;
		}

		.navbar-left{
		    margin-top: 20px;
		    font-size: 27px;
		}
		.navbar-left .li1{
			margin-left: 50px;
		}
		
		h2{
			font-family: STLiti;
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
										<a href="login.jsp">用户登录</a>
									</li>
									<li class="register">
										<a href="register.jsp">用户注册</a>
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
</body>
</html>