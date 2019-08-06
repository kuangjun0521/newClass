<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="font-awesome-4.7.0/css/font-awesome.css"/>
<script src="js/include.js" type="text/javascript" charset="utf-8"></script>
<title>课程</title>
</head>
<body>
	<style>
/* 左边导航栏 */
*{
list-style:none;
}
html, body {
	height: 100%;
}

.wrap123 {
	width: 330px;
	height: 500px;
	background-color: #eee7ef;
	margin-left:30px;
}

.header123{
	width: 330px;
	height: 65px;
	background-color: #44495a;
	font-size: 24px;
	color: #fff;
	text-align: center;
	line-height: 65px;
	
}

.nav123 {
	width: 330px;
}

.list123 {
	margin-bottom: 5px;
	width:330px;
	margin-left:-40px;
}

.list123 h2 {
	position: relative;
	padding: 15px 0;
	background-color: #82da4b;
	text-align: center;
	font-size: 16px;
	color: #dad0d0;
	transition: .5s;
	width:330px;
}

.list123 h2.on {
	background-color: #d48ec5;
}

.list123 i {
	position: absolute;
	right: 10px;
	top: 16px;
	border: 8px solid transparent;
	border-left-color: #fff; /*triangle*/
	transform: rotate(0deg);
	transform-origin: 1px 8px;
	transition: .5s;
}

.list123 i.on {
	transform: rotate(90deg);
}

.hide {
	overflow: hidden;
	height: 0;
	transition: .5s;
}

.hide h5 {
	padding: 10px 0;
	background-color: #f5f5f9;
	text-align: center;
	color: #fff;
	border-bottom: #42495d;
}


/* 右边样式 */
.bigdiv {
	width:900px;
	margin-left:30px;
}

.img1 img { /* 图片大小 */
	width: 220px;
	height: 160px;
	transition: .5s;
}

.img1 { /* 一个课程视频的div */
	margin-top: 30px;
	border: 2px solid #F9F9F9;
	width: 26%;
	padding-left: 20px;
	padding-bottom: 15px;
	padding-top: 15px;
	float: left;
	margin-left: 40px;
	box-shadow: 0px 1px 25px 5px #b0b8b9;
	
}
.img1 img:hover{  /* 图片变大特效 */
transform: scale(1.1);
}
.div1{ /* 浮动 */
  float:left;
}
.bigdiv p { /* 检索条件样式 */
	font-size: 40px;
	text-align: center;
	font-family: 隶书;
}

.bigdiv .input1 { /* 课程名称 */
	width: 100px;
	background: #F2EDED;
	border-top-left-radius: 5px;
	border-bottom-left-radius: 5px;
	background: orange;
	height: 36px;
}

.bigdiv .input2 { /* 输入文本框 */
	width: 300px;
	border-top-right-radius: 5px;
	border-bottom-right-radius: 5px;
	height: 36px;
	padding-top: 2px;
}

.bigdiv .input3 {
	width: 100px;
	background: orange;
	border-radius: 5px;
}

.bigdiv .input1, .input2, .input3 {
	border: 1px solid #808080;
	font-size: 18px;
}
.imgdiv{  /* 图片整体距离 */
margin-left:-22px;
}

/* 搜索框按钮样式 */
.d1 {
	background: #A3D0C3;
    width: 450px;
    margin-left:200px;
   }
.d1 input {
  width: 400px;
  height: 42px;
  padding-left: 10px;
  border: 2px solid #7BA7AB;
  border-radius: 5px;
  outline: none;
  background: #F9F0DA;
  color: #9E9C9C;
}
.d1 button {
  position: absolute; 
  top: 209px;
  padding-left: 50px;
  width: 48px;
  height: 48px;
	margin-left: -8px;
  border: none;
  background: #7BA7AB;
  border-radius: 0 5px 5px 0;
  cursor: pointer;
}
 .d1 button:before {
  content: "\f002";
  font-family: FontAwesome;
  font-size: 16px;
  color: #F9F0DA;
	margin-left: -40px;
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
	<br>
	<br>
    <!--====================================================
                        PAGE CONTENT
======================================================-->
<div class="div1">
		 <div class="wrap123">
			<div class="header123">德创学堂课程</div>
			<div class="nav123">
				<ul>
					<c:forEach items="${firstlist}" var="u" varStatus="vs">
						<li class="list123">
							<h2>
								<i></i><a
									href="selectbyfirst-action?first.first_id=${u.first_id }">${u.first_name}</a>
							</h2>
							<div class="hide">
								<c:forEach items="${secondlist}" var="n" varStatus="vs">
									<c:if test="${u.first_id eq n.first_id}">
										<h5>
											<a
												href="selectbysecond-action?second.second_id=${n.second_id}">${n.second_name}</a>
										</h5>
									</c:if>
								</c:forEach>
							</div>
						</li>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
	<script>
		/* 侧边导航栏 */
		(function() {
			var oList = document.querySelectorAll('.list123 h2'), oHide = document
					.querySelectorAll('.hide'), oIcon = document
					.querySelectorAll('.list123 i'), lastIndex = 0;
			for (var i = 0; i < oList.length; i++) {
				oList[i].index = i;//自定义属性
				oList[i].isClick = false;
				oList[i].initHeight = oHide[i].clientHeight;
				oHide[i].style.height = '0';
				oList[i].onclick = function() {
					if (this.isClick) {
						oHide[this.index].style.height = '0';
						oIcon[this.index].className = '';
						oList[this.index].className = '';
						oList[this.index].isClick = false;
					} else {
						oHide[lastIndex].style.height = '0';
						oIcon[lastIndex].className = '';
						oList[lastIndex].className = '';
						oHide[this.index].style.height = '220px';
						oIcon[this.index].className = 'on';
						oList[this.index].className = 'on';
						oList[lastIndex].isClick = false;
						oList[this.index].isClick = true;
						lastIndex = this.index;
					}
				}
			}
		})();
	</script>

	<%-- <div class="col-lg-4 col-md-4">
			<div class="first-order">
			<c:forEach items="${firstlist}" var="u" varStatus="vs">
					<div class="one">
					<li><a href="selectbyfirst-action?first.first_id=${u.first_id }">${u.first_name}</a>
					<c:if test="${user1.privilege==1 }">
					<a href="selectonefirst-action?first.first_id=${u.first_id}"><i
							class="fa fa-pencil-square-o"></i></a> /<a
						href="deletefirst-action?first.first_id=${u.first_id }"><i
							class="fa fa-trash"></i></a></c:if>
					</li>
					</div>
					
					<div class="second-order">
					<c:forEach items="${secondlist}" var="n" varStatus="vs">
					
					<c:if test="${u.first_id eq n.first_id}">
						<li class="lia"><a href="selectbysecond-action?second.second_id=${n.second_id}">${n.second_name}</a>
						<c:if test="${user1.privilege==1 }"><a
						href="selectonesecond-action?second.second_id=${n.second_id}"><i
							class="fa fa-pencil-square-o"></i></a> /<a
						href="deletesecond-action?second.second_id=${n.second_id }"><i
							class="fa fa-trash"></i></a></c:if>
						</li>
					</c:if>
					
                    </c:forEach>
					</div>

				</c:forEach>
			</div>

		</div> --%>
	<div class="div1">

		<div class="bigdiv">
			
			<form action="selectbytext-action" method="post">
				<p>检索条件</p>
				<br>
				<div class="d1">
					<input type="text" placeholder="请输入您要搜索的课程..." name="course.course_name">
					<button type="submit"></button>				
			</div>
			</form>
			<br><br>
			<div class="imgdiv">
			<c:forEach items="${courselist}" var="cou" varStatus="vs">

				<div class="img1">
					<span>${cou.course_name}</span><br> <span>${cou.course_desc}</span><br>
					<a href="showAllVideo-action?video.third_id=${cou.third_id }"><img src="${cou.course_img}" /></a><br> <span>${cou.course_teacher}|</span>
					<span>${cou.course_type}</span>
					<c:if test="${user1.privilege==1 }">
						<a href="selectonethird-action?course.third_id=${cou.third_id}"><i
							class="fa fa-pencil-square-o"></i></a> /
			<a href="deletethird-action?course.third_id=${cou.third_id }"><i
							class="fa fa-trash"></i></a>
					</c:if>
					<br>

				</div>

			</c:forEach>
           </div>
		</div>
	</div>

</body>
</html>