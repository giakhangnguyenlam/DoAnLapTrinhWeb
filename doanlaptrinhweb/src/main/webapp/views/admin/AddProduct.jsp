<%@page import="org.w3c.dom.Text"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UTE Shopping</title>
<link href="${pageContext.request.contextPath}/template/web/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="${pageContext.request.contextPath}/template/web/js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="${pageContext.request.contextPath}/template/web/css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--fonts-->
<link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'><!--//fonts-->
<!-- start menu -->
<link href="${pageContext.request.contextPath}/template/web/css/memenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="${pageContext.request.contextPath}/template/web/js/memenu.js"></script>
<script>$(document).ready(function(){$(".memenu").memenu();});</script>
<script src="${pageContext.request.contextPath}/template/web/js/simpleCart.min.js"> </script>

</head>
<body>
<%
String MaSanPhamError= (String)request.getAttribute("MaSanPhamError");
if(MaSanPhamError==null)
{
	MaSanPhamError="";
}



String LinkImageError = (String)request.getAttribute("LinkImageError");
if(LinkImageError == null)
{
	LinkImageError="";	
}
String motaError = (String)request.getAttribute("motaError");
if(motaError == null)
{
	motaError="";		
}


String SoLuongError = (String)request.getAttribute("SoLuongError");
if(SoLuongError == null)
{
	SoLuongError="";	
}
String tensanphamError = (String)request.getAttribute("tensanphamError");
if(tensanphamError==null)
{
	tensanphamError="";
}

%>











	<!--Header -->
	<jsp:include page="TableLeft.jsp"></jsp:include>
	<!--Header  -->




<div class=" container">
<div class=" register">
	<h1>Register</h1> 
				 <%-- <div class="col-md-6 register-top-grid">
					<h3>Personal Information</h3>
					<div>
						<span>Mã sản phẩm</span>
						<input type="text" name="masanpham" placeholder="Enter User Name" value=>
						<p><c:out value="${userNameError}"/></p>
					 </div>
					 <div>
						<span>Tên sản phẩm</span>
						<input type="text" name="tensanpham" placeholder="Enter Your Name" value=>
						<p><c:out value="${yourNameError}"/> </p>
					 </div>
					 <div>
						<span>Mô tả</span>
						<input type="text" name="mota" placeholder="Enter Your Phone Number" value=>
						<p><c:out value="${phoneNumberError}"/> </p> 
					 </div>
					 <div>
						 <span>Giá bán</span>
						 <input type="text" name="giaban" placeholder="Enter Your Email" value=>
						 <p> <c:out value="${emailError}"/> </p>
					 </div>
					 <div>
						 <span>Số lượng</span>
						 <input type="text" name="soluong" placeholder="Enter Your Address" value=> 
					 </div>
					 <div>
						 <span>Nhà cung cấp</span>
						 <input type="text" name="nhacungcap" placeholder="Enter Your Address" value=> 
					 </div>
					 
					 <div>
					 <div class="col-md-6 register-bottom-grid">
						 <span>Hình ảnh</span>
						 <input type="file" name="photo" value="" />
					 
				
						 <span>Số lượng nhập</span>
						 <input type="text" name="soluongnhap" placeholder="Enter Your Address" value=> 
					 
						 <span>Số lượng bán</span>
						 <input type="text" name="soluongban" placeholder="Enter Your Address" value=> 
					 
					
					 <input type="hidden" name="action" value="Insert">
					<input type="submit" value="Insert">
					
					 <div class="clearfix"> </div>
					 </div> --%>
            	<form method="POST" action="${pageContext.request.contextPath}/EditProductServletAdmin" enctype="multipart/form-data"> 
				 <div class="col-md-6 register-top-grid">
					<h3>Personal Information</h3>
					<div>
						<span>Mã sản phẩm</span>
						<input type="text" name="masanpham" placeholder="Enter User Name" value="">
						<p><c:out value="${MaSanPhamError}"/></p>
					 </div>
					 <div>
						<span>Tên sản phẩm</span>
						<input type="text" name="tensanpham" placeholder="Enter Your Name" value="">
						<p><c:out value="${tensanphamError}"/> </p>
					 </div>
					 <div>
						<span>Mô tả</span>
						<input type="text" name="mota" placeholder="Enter Your Phone Number" value="">
						<p><c:out value="${motaError}"/> </p> 
					 </div>
					 <div>
						 <span>Giá bán</span>
						 <input type="text" name="giaban" placeholder="Enter Your Email" value=>
						 <p> <c:out value="${SoLuongError}"/> </p>
					 </div>
					 <div>
						 <span>Số lượng</span>
						 <input type="text" name="soluong" placeholder="Enter Your Address" value=> 
					 	 <p> <c:out value="${SoLuongError}"/> </p>
					 </div>
					 <div>
						 <span>Nhà cung cấp</span>
						 <input type="text" name="nhacungcap" placeholder="Enter Your Address" value=> 
					 </div>
			</span>							 
					
					 
					 </div>
				     <div class="col-md-6 register-bottom-grid">
						    <h3>Login information</h3>
							 <div>
								<span>Hình ảnh</span>
								<input type="file" name="photo" value="">
							 	<p> <c:out value="${LinkImageError}"/> </p>
							 </div>
							 <div>
								<span>Số lượng nhập</span>
								<input type="text" name="soluongnhap" placeholder="Enter Your Address" value=>
							 	 <p> <c:out value="${SoLuongError}"/> </p>
							 </div>
							 <div>
								<span>Số lượng bán</span>
								<input type="text" name="soluongban" placeholder="Enter Your Address" value=>
							 	 <p> <c:out value="${SoLuongError}"/> </p>
							 </div>
							 <input type="hidden" name="action" value="Insert">
							 <input type="submit" value="Insert">
							
					 </div>
					 <div class="clearfix"> </div>
				</form>
			</div>
</div>


	<!--Footer -->
	<!--Footer  -->
</body>
</html>