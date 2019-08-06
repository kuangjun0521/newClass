<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style>
* {
	padding: 0;
	margin: 0;
}

html, body {
	height: 100%;
}

.wrap123 {
	width: 260px;
	height: 100%;
	background-color: #363a45;
}

.header123{
	width: 100%;
	height: 65px;
	background-color: #44495a;
	font-size: 24px;
	color: #fff;
	text-align: center;
	line-height: 65px;
}

.nav123 {
	width: 250px;
	margin: 10px 5px 0;
}

.list123 {
	margin-bottom: 5px;
}

.list123 h2 {
	position: relative;
	padding: 15px 0;
	background-color: #3889d4;
	text-align: center;
	font-size: 16px;
	color: #fff;
	transition: .5s;
}

.list123 h2.on {
	background-color: #393c4a;
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
	background-color: #282c3a;
	text-align: center;
	color: #fff;
	border-bottom: #42495d;
}
</style>
<body>
<!--====================================================
                        PAGE CONTENT
======================================================-->
		<div class="wrap123">
			<div class="header123">国内各个景点</div>
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
								<h5>
									<a href="selectbysecond-action?second.second_id=${n.second_id}">${n.second_name}1</a>
								</h5>
								<h5>
									<a href="selectbysecond-action?second.second_id=${n.second_id}">${n.second_name}1</a>
								</h5>
								<h5>
									<a href="selectbysecond-action?second.second_id=${n.second_id}">${n.second_name}1</a>
								</h5>
							</div>
						</li>
					</c:forEach>
				</ul>
			</div>
		</div>
		
		<script>
        (function () {
            var oList = document.querySelectorAll('.list123 h2'),
                oHide = document.querySelectorAll('.hide'),
                oIcon = document.querySelectorAll('.list123 i'),
                lastIndex = 0;
            for(var i=0;i<oList.length;i++){
                oList[i].index = i;//自定义属性
                oList[i].isClick = false;
                oList[i].initHeight = oHide[i].clientHeight;
                oHide[i].style.height = '0';
                oList[i].onclick = function () {
                    if(this.isClick){
                        oHide[this.index].style.height = '0';
                        oIcon[this.index].className = '';
                        oList[this.index].className = '';
                        oList[this.index].isClick = false;
                    }
                    else{
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
</body>
</html>