<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

	<!-- Menu bar left -->
	<jsp:include page="menuBarLeft.jsp"></jsp:include>
	<!-- Menu bar left -->
	
	
	<div class="col-md-9 product-price1">
				<div class="col-md-5 single-top">	
			<div class="flexslider">
  <ul class="slides">
    <li data-thumb="${productInformation.hinhAnh}">
      <img src="${productInformation.hinhAnh}" />
    </li>
    <!--
    <li data-thumb="${productInformation.hinhAnh}">
      <img src="${productInformation.hinhAnh}" />
    </li>
    <li data-thumb="${productInformation.hinhAnh}">
      <img src="${productInformation.hinhAnh}" />
    </li>
    <li data-thumb="${productInformation.hinhAnh}">
      <img src="${productInformation.hinhAnh}" />
    </li>
    -->
  </ul>
</div>
<!-- FlexSlider -->
  <script defer src="js/jquery.flexslider.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/template/web/css/flexslider.css" type="text/css" media="screen" />

<script>
//Can also be used with $(document).ready()
$(window).load(function() {
  $('.flexslider').flexslider({
    animation: "slide",
    controlNav: "thumbnails"
  });
});
</script>

					</div>	
					<div class="col-md-7 single-top-in simpleCart_shelfItem">
						<div class="single-para ">
						<h4>${productInformation.ten}</h4>
							
							<h5 class="item_price">$ ${productInformation.giaban}</h5>
							<p>Brand: ${productInformation.tenNhaCungCap}</p>
							<form action="${pageContext.request.contextPath}/cart">
							<div class="available">
								<ul>
									<div class="quantity-area clearfix">
										<input type="button" value="-" class="qty-btn qtyminus" />
										<input type="text" id="quantity" data-max="" data-name22="" name="quantity"
											value="1" min="1" class="quantity-selector" />
										<input type="button" value="+" class="qty-btn qtyplus" />
									</div>
									<span>${errorQuantity}</span>
									<br>
									<a href="#" class="add-cart item_add">Detail</a>
								<div class="clearfix"> </div>
							</ul>
							<input type="submit" name="addToCart" value="Add To cart">
							<input type="hidden" name="idProduct" value="${productInformation.maSanPham}">
						</div>
						</form>							
						</div>
					</div>
				<div class="clearfix"> </div>	

		<div class=" bottom-product">
					<div class="col-md-4 bottom-cd simpleCart_shelfItem">
						<div class="product-at ">
							<a href="#"><img class="img-responsive" src="images/pi3.jpg" alt="">
							<div class="pro-grid">
										<span class="buy-in">Buy Now</span>
							</div>
						</a>	
						</div>
						<p class="tun">It is a long established fact that a reader</p>
						<a href="#" class="item_add"><p class="number item_price"><i> </i>$500.00</p></a>						
					</div>
					<div class="col-md-4 bottom-cd simpleCart_shelfItem">
						<div class="product-at ">
							<a href="#"><img class="img-responsive" src="images/pi1.jpg" alt="">
							<div class="pro-grid">
										<span class="buy-in">Buy Now</span>
							</div>
						</a>	
						</div>
						<p class="tun">It is a long established fact that a reader</p>
<a href="#" class="item_add"><p class="number item_price"><i> </i>$500.00</p></a>					</div>
					<div class="col-md-4 bottom-cd simpleCart_shelfItem">
						<div class="product-at ">
							<a href="#"><img class="img-responsive" src="images/pi4.jpg" alt="">
							<div class="pro-grid">
										<span class="buy-in">Buy Now</span>
							</div>
						</a>	
						</div>
						<p class="tun">It is a long established fact that a reader</p>
<a href="#" class="item_add"><p class="number item_price"><i> </i>$500.00</p></a>					</div>
					<div class="clearfix"> </div>
				</div>
</div>

		<div class="clearfix"> </div>
		</div>
		</div>





	<!--Footer -->
	<jsp:include page="footer.jsp"></jsp:include>
	<!--Footer  -->	
</body>
</html>