<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="js/include.js" type="text/javascript" charset="utf-8"></script>
<title>Insert title here</title>
</head>
<style>
	.small_img{  /* 图片样式 */
			width: 22%;
			height: 200px;
			float: left;
			margin-left: 20px;
		}
		.small{
			margin-left:50px;
			margin-top: 60px;
			margin-bottom:20px;
		}
		.middle{
		height:700px;
		}
	</style>
<body>
<include src="head.jsp"></include>
		

<div class="middle"> 
<img src="img/img1.jpg" style="height: 300px; width:100%;" />


<h3 style="text-align: center; margin-top: 40px;">精品课程</h3>
<div class="small">
	<img src="img/java1.jpg" class="small_img"/>
	<img src="img/java2.jpg" class="small_img"/>
	<img src="img/java3.jpg" class="small_img"/>
	<img src="img/java4.jpg" class="small_img"/>
	</div>
	</div>
	
	<include src="footer.jsp"></include>
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