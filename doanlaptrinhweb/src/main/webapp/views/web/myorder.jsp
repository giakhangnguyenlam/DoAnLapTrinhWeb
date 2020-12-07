<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UTE Shopping</title>
<link
	href="${pageContext.request.contextPath}/template/web/css/bootstrap.css"
	rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script
	src="${pageContext.request.contextPath}/template/web/js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link
	href="${pageContext.request.contextPath}/template/web/css/style.css"
	rel="stylesheet" type="text/css" media="all" />

<script type="application/x-javascript">
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 


</script>
<!--fonts-->
<link
	href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900'
	rel='stylesheet' type='text/css'>
<!--//fonts-->
<!-- start menu -->
<link
	href="${pageContext.request.contextPath}/template/web/css/memenu.css"
	rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/template/web/js/memenu.js"></script>
<script>
	$(document).ready(function() {
		$(".memenu").memenu();
	});
</script>
<script
	src="${pageContext.request.contextPath}/template/web/js/simpleCart.min.js">
	
</script>
<script
	src="${pageContext.request.contextPath}/template/web/js/main2.js">
	
</script>
</head>
<body>

	<!--Header -->
	<jsp:include page="header.jsp"></jsp:include>
	<!--Header  -->

	<br>


	<table style="width:100%">
		<tr>
			<th>Id Order</th>
			<th>Product</th>
			<th>Total Cost</th>
			<th>Status Order</th>
			<th>Date Of Purchase</th>
		</tr>
		<c:forEach var="order" items="${listOrder}">
		<tr>
			<td>${order.id}</td>
			<td>${order.sanpham}</td>
			<td>${order.tongTien}</td>
			<td>${order.tinhTrangDonHang}</td>
			<td>${order.ngayMuaHang}</td>
		</tr>
		</c:forEach>
	</table>
	
</body>
</html>