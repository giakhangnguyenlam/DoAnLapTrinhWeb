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
		<div class="product">
			<div class="container">
				<div class="col-md-3 product-price">
					  
				<div class=" rsidebar span_1_of_left">
					<div class="of-left">
						<h3 class="cate">Categories</h3>
					</div>
		 <ul class="menu">
		
		<li class="item1"><a
							href="${pageContext.request.contextPath}/product?idProduct=computer">Laptop</a>
							<ul class="cute">
								<li class="subitem1"><a
									href="${pageContext.request.contextPath}/product?idProduct=LTApple">Apple</a></li>
								<li class="subitem2"><a
									href="${pageContext.request.contextPath}/product?idProduct=LTAcer">Acer</a></li>
								<li class="subitem3"><a
									href="${pageContext.request.contextPath}/product?idProduct=LTAssus">ASUS</a></li>
							</ul></li>
						<li class="item2"><a
							href="${pageContext.request.contextPath}/product?idProduct=accessories">Accessories</a>
							<ul class="cute">
								<li class="subitem1"><a
									href="${pageContext.request.contextPath}/product?idProduct=cpu">CPU</a></li>
								<li class="subitem2"><a
									href="${pageContext.request.contextPath}/product?idProduct=ram">RAM</a></li>
								<li class="subitem3"><a
									href="${pageContext.request.contextPath}/product?idProduct=harddrive">Hard
										Drive</a></li>
							</ul></li>
			
		 </ul>
		</div>
				<!--initiate accordion-->
		<script type="text/javascript">
			$(function() {
			    var menu_ul = $('.menu > li > ul'),
			           menu_a  = $('.menu > li > a');
			    menu_ul.hide();
			    menu_a.click(function(e) {
			        e.preventDefault();
			        if(!$(this).hasClass('active')) {
			            menu_a.removeClass('active');
			            menu_ul.filter(':visible').slideUp('normal');
			            $(this).addClass('active').next().stop(true,true).slideDown('normal');
			        } else {
			            $(this).removeClass('active');
			            $(this).next().stop(true,true).slideUp('normal');
			        }
			    });
			
			});
		</script>
<!---->
	<div class="product-middle">
		
					<div class="fit-top">
						<h6 class="shop-top">Macbook pro 2020</h6>
						<a href="single.html" class="shop-now">SHOP NOW</a>
						<div class="clearfix"></div>
					</div>
		</div>	 

				<!---->
				<div class="product-bottom">
					<div class="of-left-in">
								<h3 class="best">Best Sellers</h3>
							</div>
					<div class="product-go">
						<div class=" fashion-grid">
									<a href="single.html"><img class="img-responsive " src="images/p1.jpg" alt=""></a>
									
								</div>
							<div class=" fashion-grid1">
								<h6 class="best2"><a href="single.html" >Macbook pro 2020</a></h6>
								
								<span class=" price-in1"> $40.00</span>
							</div>
								
							<div class="clearfix"> </div>
							</div>
							<div class="product-go">
						<div class=" fashion-grid">
									<a href="single.html"><img class="img-responsive " src="images/p2.jpg" alt=""></a>
									
								</div>
							<div class="fashion-grid1">
								<h6 class="best2"><a href="single.html" >Asus Vivobook S15</a></h6>
								
								<span class=" price-in1"> $40.00</span>
							</div>
								
							<div class="clearfix"> </div>
							</div>
					
				</div>
	<!-- <div class=" per1">
				<a href="single.html" ><img class="img-responsive" src="images/pro.jpg" alt="">
				<div class="six1">
					<h4>DISCOUNT</h4>
					<p>Up to</p>
					<span>60%</span>
				</div></a>
			</div>-->
				</div>


				
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
					<li class="disabled"><a href="#" aria-label="Previous"><span aria-hidden="true">«</span></a></li>
					<li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
					<li><a href="#">2 <span class="sr-only"></span></a></li>
					<li><a href="#">3 <span class="sr-only"></span></a></li>
					<li><a href="#">4 <span class="sr-only"></span></a></li>
					<li><a href="#">5 <span class="sr-only"></span></a></li>
					 <li> <a href="#" aria-label="Next"><span aria-hidden="true">»</span> </a> </li>
				  </ul>
				</nav>
		</div>
		
		</div>
			
				<!---->

<!--//content-->
<jsp:include page="footer.jsp"></jsp:include>



</body>
</html>
			