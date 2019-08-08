<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="js/include.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<style>
.bigdiv{
height:300px;
}
.center {
	text-align: center;
	border: 1px solid #f9f9f9;
	width: 400px;
	margin: 0 auto;
	border-radius: 10px;
	box-shadow: 0px 1px 25px 5px #808080;
	margin-top:30px;
}

.input1 { /* 视频描述样式 */
	width: 200px;
	height: 20px;
	border-radius: 5px;
	font-size: 20px;
}

.button {
	background: #bf9649;
	color: #FFFFFF;
	height: 40px;
	width:180px;
	border-radius: 5px;
	font-size: 20px;
}
.center span{
font-size:18px;
}
.center select{
width:110px;
height:30px;
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
	<div class="center">
	<br>
		<h2>视频上传</h2>
		<br>

		<form action="uploadVideo-action" method="post" enctype="multipart/form-data">

			<span>视频描述：</span><input type="text" name="video.video_desc" class="input1"/><br>
			<br> 
			<span style="margin-left:50px;">视频上传：</span><input type="file" id="myfile" name="myFile" class="input2"/><br>
			<br> 
			<select name="video.third_id" class="text1">
				<c:forEach items="${courselist}" var="u" varStatus="vs">

					<option value="${u.third_id}">${u.course_name}</option>

				</c:forEach>

			</select> <input type="submit" value="创&nbsp;&nbsp;建" class="button" />
		</form>
		<br>
		<br>

	</div>
	</div>
		<include src="footer.jsp"></include>
		
		<script type="text/javascript">
		function setBlogrollImageName(){
			 if(document.getElementByIdx_x('myfile').files) { 
			        // Support: nsIDOMFile, nsIDOMFileList 
			        alert('value: ' + document.getElementByIdx_x('myfile').value); 
			        alert('files.length: ' + document.getElementByIdx_x('myfile').files.length); 
			        alert('fileName: ' + document.getElementByIdx_x('myfile').files.item(0).fileName); 
			        alert('fileSize: ' + document.getElementByIdx_x('myfile').files.item(0).fileSize); 
			        alert('dataurl: ' + document.getElementByIdx_x('myfile').files.item(0).getAsDataURL()); 
			        alert('data: ' + document.getElementByIdx_x('myfile').files.item(0).getAsBinary()); 
			        alert('datatext: ' + document.getElementByIdx_x('myfile').files.item(0).getAsText("utf-8")); 
			    }; 
			};
		</script>
</body>
</html>