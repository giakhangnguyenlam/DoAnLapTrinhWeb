<%@page import="ute.webapplication.model.web.ProductModel"%>
<%@page import="java.util.Calendar"%>
<%@page import="ute.webapplication.model.web.AccountModel"%>
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
ProductModel productFind=(ProductModel)request.getAttribute("productFind");
String ProductID=(String)request.getAttribute("ProductID");
String userNameError="";
if(productFind==null)
	userNameError="Don't have Product finded";
	
%>

	<!--Header -->
	<jsp:include page="TableLeft.jsp"></jsp:include>
	<!--Header  -->




<div class=" container">
<div class=" register">
	<h1>Register</h1>
		  	  <form method="POST" action="${pageContext.request.contextPath}/EditProductServletAdmin"> 
				 <div class="col-md-6 register-top-grid">
					<h3>Personal Information</h3>
					<div>
						<span>Mã sản phẩm</span>
						<input type="text" name="masanpham" placeholder="Enter Product ID" value="${productFind.getMaSanPham()}">
						
					 </div>
					 <div>
						<span>Tên sản phẩm</span>
						<input type="text" name="tensanpham" placeholder="Enter Product name" value="${productFind.getTen()}">
						
					 </div>
					 <div>
						<span>Mô tả</span>
						<input type="text" name="mota" placeholder="Enter Product Describe " value="${productFind.getMota()}">
						
					 </div>
					 <div>
						 <span>Số lượng</span>
						 <input type="text" name="soluong" placeholder="Enter Proudct Quantity" value="${productFind.getSoLuong()}">
						 
					 </div>
					<div>
						 <span>Giá bán</span>
						 <input type="text" name="giaban" placeholder="Enter Product Price" value="${productFind.getGiaban()}">
						 
					 </div>
					 <div>
						 <span>Nhà cung cấp</span>
						 <input type="text" name="address" placeholder="Enter Supplier" value="${productFind.getNhaCungCap()}"> 
					 </div>
					  </div>
				     <div class="col-md-6 register-bottom-grid">
						    <h3>Login information</h3>
							 <div>
								<span>Hình ảnh</span>
								<input type="file" name="photo" value="">
							 </div>
							 <div>
								<span>Số lượng nhập</span>
								<input type="text" name="address" placeholder="Enter the number of import" value="${productFind.getSoLuongNhap()}">
							 </div>
							 <div>
								<span>Số lượng bán</span>
								<input type="text" name="address" placeholder="Enter Sell Number" value="${productFind.getSoLuongBan()}">
							 </div>
							 <input type="hidden" name="ProductID" value=ProductID>
							 <input type="submit" name="action" value="Update">
							
					 </div>
					 <div class="clearfix"> </div>
				</form>
			</div>
					 <%-- 
					 <div>
						 <span>Hình ảnh</span>
						 <img src="${productFind.getHinhAnh()}" alt="abc" >
					 </div>
            		 <div>
						 <span>Số lượng nhập</span>
						 <input type="text" name="address" placeholder="Enter the number of import" value="${productFind.getSoLuongNhap()}"> 
					 </div>
					  <div>
						 <span>Số lượng bán</span>
						 <input type="text" name="address" placeholder="Enter Sell Number" value="${productFind.getSoLuongBan()}"> 
					 </div>
					
					 
					 </div>
				     <div class="col-md-6 register-bottom-grid">
				     <input type="hidden" name="ProductID" value=ProductID>
							 <input type="hidden" name="action" value="Update">
							 <input type="submit" value="Update">
							
					</div>
				</form>
			</div> --%>
</div>

	<!--Footer -->
	<!--Footer  -->
</body>
</html>