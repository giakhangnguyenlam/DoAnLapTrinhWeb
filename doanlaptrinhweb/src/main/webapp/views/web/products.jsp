<%@page import="ute.webapplication.model.web.ProductModel"%>
<%@page import="java.util.List"%>
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





</head>
<body>
<!--header-->

<jsp:include page="header.jsp"></jsp:include>
	
<!--header-->




<!--content-->
<!---->
		
<jsp:include page="menuBarLeft.jsp"></jsp:include>


				<div class="col-md-9 product1">
				<div class=" bottom-product">
				<c:forEach var="product" items="${listProduct}">
					<div class="col-md-4 bottom-cd simpleCart_shelfItem">
						<div class="product-at ">
							<a href="${pageContext.request.contextPath}/productservlet?idProduct=${product.maSanPham}"><img
									class="img-responsive" src="${product.hinhAnh}" alt="abc">
							
						</a>	
						</div>
						<p class="tun"><c:out value="${product.ten}" /></p>
						<input type="hidden" name="idProduct"
								value="${product.maSanPham}">
					</div>
					</c:forEach>
					
				</div>
				</div>
			
		<div class="clearfix"> </div>
		<nav class="in">
			<ul class="pagination">
				<!-- <li class="disabled"><a href="#" aria-label="Previous"><span
						aria-hidden="true">«</span></a></li>
				<li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
				<li><a href="#">2 <span class="sr-only"></span></a></li>
				<li><a href="#">3 <span class="sr-only"></span></a></li>
				<li><a href="#">4 <span class="sr-only"></span></a></li>
				<li><a href="#">5 <span class="sr-only"></span></a></li>
				<li><a href="#" aria-label="Next"><span
						aria-hidden="true">»</span> </a></li>  -->

				<c:forEach begin="1" end="${end}" var="i">
					<li><a id="${i}" href="${pageContext.request.contextPath}/product?index=${i}&idProduct=${idProduct}">${i}<span class="sr-only"></span></a></li>
				</c:forEach>		
			</ul>
		</nav>
		</div>
		
		</div>
			
				<!---->

<!--//content-->
<jsp:include page="footer.jsp"></jsp:include>



<script>
	document.getElementById('${index}').style.color="red";
</script>
</body>
</html>
			