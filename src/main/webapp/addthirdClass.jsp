<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="js/include.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<title>创建课程</title>
</head>
<style>
.center {
	text-align: center;
	border: 1px solid #f9f9f9;
	width: 600px;
	margin: 0 auto;
	border-radius: 10px;
	box-shadow: 0px 1px 25px 5px #808080;
	margin-top: 10px;
	height: 600px;
}

.select1 { /* 下拉框 */
	width: 200px;
	height: 25px;
	border: 1px solid #008000;
	font-size: 18px;
}

.text2 { /* 课程名称的样式 */
	width: 120px;
	height: 43px;
	border-bottom-left-radius: 5px;
	border-top-left-radius: 5px;
	background: #e4caa5;
	font-size: 16px;
	padding-top: 2px;
	font-family: 微软雅黑;
}

.text1 { /* 输入文本框的样式 */
	width: 300px;
	height: 37px;
	border-bottom-right-radius: 5px;
	border-top-right-radius: 5px;
	font-size: 18px;
	padding-top: 1px;
	font-family: 微软雅黑;
}
.text4 { /* 下拉文本框的样式 */
	width: 300px;
	height: 43px;
	border-bottom-right-radius: 5px;
	border-top-right-radius: 5px;
	font-size: 18px;
	padding-top: 0px;
	font-family: 微软雅黑;
}
.text3 { /* 提交按钮的样式 */
	width: 300px;
	height: 38px;
	font-size: 22px;
	font-family: 微软雅黑;
	background: orange;
	border-radius: 5px;
}

.text3:hover {
	background: darksalmon;
}

.text1, .text2, .text3,.text5 {
	border: 2px solid #545f54;
}

 #picture_src { /*  将图片地址显示文本框和选择文件按钮重叠  */
	position: absolute;
} 

#file { /* 把选择文件按钮设置为透明 */
	
	opacity: 0; /* 最关键的地方  把input设置成透明，这样只能看到按钮 */
}

.tijiao1 { /* 提交图片按钮 */
	width: 45px;
	height: 43px;
	border-bottom-right-radius: 5px;
	border-top-right-radius: 5px;
	border: 1px solid #008000;
	padding-top: 5px;
	margin-left: 260px;
	z-index:9999;
	background:#b7acac;
}
.text5 { /* 图片选择输入框样式 */
	width: 265px;
	height: 37px;
	font-size: 18px;
	padding-top: 1px;
	font-family: 微软雅黑;
	
}
</style>
<body>
	<include src="head.jsp"></include>
	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<br>
	<div class="center">
		<br>
		<h1>创建课程</h1>
		<br>
		<hr />
		<br>
		<form action="addthird-action" method="post"
			enctype="multipart/form-data">
			<input type="hidden" name="course.user_id" value="${user1.user_id }" />
			<input type="button" value="课程名称" class="text2" /><input type="text"
				name="course.course_name" class="text1"><br> <br>
			<input type="button" value="课程描述" class="text2" /><input type="text"
				name="course.course_desc" class="text1"> <br> <br>
			<input type="button" value="课程讲师" class="text2" /><input type="text"
				name="course.course_teacher" class="text1"><br> <br>
			<input type="button" value="课程所属" class="text2" /><input type="text"
				name="course.course_type" class="text1"><br> <br>
				
			
			<input type="button" value="封面图片" class="text2" /><input type="text" name="course.course_img" class="text5" id="picture_src">
			<input type="button"  onClick="imgSubmit()" value="提交" class="tijiao1">
			<br> <input type="file" name="file" id="file"
				accept="image/*" /> <br>
				
				<input type="button"
				value="二级课程" class="text2" /><select name="course.second_id"
				class="text4">
				<c:forEach items="${secondlist}" var="u" varStatus="vs">

					<option value="${u.second_id}">${u.second_name}</option>

				</c:forEach>

			</select> <br> <br> <br> <input type="submit"
				value="创&nbsp;&nbsp;建" id="button" class="text3" />
		</form>
		<br> <br>

	</div>
	<br>
	<br>
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
         
        $(document).ready(function(){
        $('#picture_src').click(function(){
        $('#file').click();
          });

         });       
   
 	function imgSubmit(){
			var file=document.getElementById("file").files[0];//获取文件对象
			if(typeof(file)=="undefined"||file.size<=0){
				alert("请选择图片");
				return;
				}
			var formFile = new FormData();
			formFile.append("myFile",file);
			var data = formFile;
			$.ajax({
				url:"uploadImage",
				type:'post',
				data:data,
				processData:false,
				//告诉JQuery不要设置content-type请求头
				contentType:false,
				dataType:"json",
				success:function(result){
					alert("上传成功");
					console.log(result.src);
					document.getElementById("picture_src").value=result.src;
				}
			})
	}



		</script>
</body>
</html>