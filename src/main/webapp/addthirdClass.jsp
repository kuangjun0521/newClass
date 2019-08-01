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
		.center{
			text-align: center;
			border: 1px solid #f9f9f9;
			width: 400px;
			margin: 0 auto;
			border-radius: 10px;
			box-shadow: 0px 1px 25px 5px #808080;
		}
		.input1{
			width: 300px;
			height: 30px;
			border-radius: 5px;
			font-size: 20px;
		}
		#button{
		 background: orange;
		 color: #FFFFFF;
		 height: 30px;
		}
	</style>
<body>
<include src="head.jsp"></include>

<br>
		<div class="center"><br><br>
		<h3>创建课程</h3>
		<br>
		<form action="addthird-action" method="post" enctype="multipart/form-data">
		${user1.user_id}
		<input type="hidden" name="course.user_id" value="${user1.user_id }"/>
		课程名称：<input type="text" name="course.course_name" class="input1"/><br><br>
		
		课程描述：<input type="text" name="course.course_desc" class="input1"/><br><br>
		<input type="hidden" name="course.course_img" id="picture_src"><br>
	       封面图片：<input type="file" name="file" id="file" accept="image/*"/>
	       
	    <input type="button"  onClick="imgSubmit()" value="提交" style="width:50px; height:30px;">
	    
	    <br><br>
		课程讲师：<input type="text" name="course.course_teacher" class="input1"/><br><br>
		课程所属：<input type="text" name="course.course_type" class="input1"/><br><br>
		二级课程：
		<select name="course.second_id">
		<c:forEach items="${secondlist1}" var="u" varStatus="vs">
		
			<option value="${u.second_id}">${u.second_name}</option>
			
		</c:forEach>
    
	</select>
        <br><br>
		<input type="submit" value="创&nbsp;&nbsp;建" id="button" class="input1"/>
	  </form>
	  <br><br>
	  
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