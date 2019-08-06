<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="js/include.js"></script>
<title>创建课程</title>
</head>
<style>
.bigdiv p{
			font-size: 30px;
			margin-top: 20px;
		}
		input{
			width: 300px;
			height: 48px;
			border-radius: 8px;
			background: #eab44f;
			font-size: 26px;
		    font-family:华文新魏;
		    border:2px solid #585311;
			
		}
		.bigdiv{
			margin: 0 auto;
			text-align: center;
			height:400px;
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
	 <div class="bigdiv">
	 <br><br>
	  <p>菜&nbsp;&nbsp;单</p>

<br><br>

 <a href="selectsecond-action"><input type="button" value="创建课程"></a><br><br><br>
 <a href="selectthird-action"><input type="button" value="上传视频"></a>
 </div> 
<include src="footer.jsp"></include>
 
</body>
</html>