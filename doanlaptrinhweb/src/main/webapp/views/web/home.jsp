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




</head>
<body>
	<!--Header -->
	<jsp:include page="header.jsp"></jsp:include>
	<!--Header  -->

	<div class="banner">
		<div class="container">
			<script src="js/responsiveslides.min.js"></script>
			<script>
				$(function() {
					$("#slider").responsiveSlides({
						auto : true,
						nav : true,
						speed : 500,
						namespace : "callbacks",
						pager : true,
					});
				});
			</script>
			<div id="top" class="callbacks_container">
				<ul class="rslides" id="slider">
					<li>

						<div class="banner-text">
							<h3>Buy more discount more</h3>
							<a href="single.html">Explore</a>
						</div>

					</li>
				</ul>
			</div>

		</div>
	</div>

	<div class="content">
		<div class="container">
			<div class="content-top">
				<h1>Top Brands</h1>
				<div class="grid-in">
					<div class="col-md-4 grid-top">
						<a href="${pageContext.request.contextPath}/product?idProduct=LTAssus" class="b-link-stripe b-animate-go  thickbox"><img
							class="img-responsive" src="images/s2.png" alt="">
							<div class="b-wrapper">
								<h3 class="b-animate b-from-left    b-delay03 ">
									<span>ASSUS</span>
								</h3>
							</div> </a>


					</div>
					<div class="col-md-4 grid-top">
						<a href="${pageContext.request.contextPath}/product?idProduct=LTApple" class="b-link-stripe b-animate-go  thickbox"><img
							class="img-responsive" src="images/s3.png" alt="">
							<div class="b-wrapper">
								<h3 class="b-animate b-from-left    b-delay03 ">
									<span>Apple</span>
								</h3>
							</div> </a>
					</div>
					<div class="col-md-4 grid-top">
						<a href="${pageContext.request.contextPath}/product?idProduct=LTAcer" class="b-link-stripe b-animate-go  thickbox"><img
							class="img-responsive" src="images/s4.png" alt="">
							<div class="b-wrapper">
								<h3 class="b-animate b-from-left    b-delay03 ">
									<span>Acer</span>
								</h3>
							</div> </a>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
		</div>
		
	<!--Header -->
	<jsp:include page="footer.jsp"></jsp:include>
	<!--Header  -->	
</body>


</html>