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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

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
									<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Detail</button>
								
<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="   [.]close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Item Detail</h4>
      </div>
      <div class="modal-body">
        <table style="width:100%">
			<tr>
				<td>Brand</td>
				<td>${productInformation.tenNhaCungCap}</td>
			</tr>
			<tr>
				<td>Guarantee</td>
				<td>${detailLaptop.baoHanh}</td>
			</hbbbtr>
			<tr>
				<th>General information</th>
			</tr>
			<tr>
				<td>Color</td>
				<td>${detailLaptop.mauSac}</td>
			</tr>
			<tr>
				<td>Series laptop</td>
				<td>${detailLaptop.seriesLaptop}</td>
			</tr>
			<tr>
				<td>Part-Number</td>
				<td>${detailLaptop.partNumber}</td>
			</tr>
			<tr>
				<th>Detailed configuration</th>
			</tr>
			<tr>
				<td>Cpu generation</td>
				<td>${detailLaptop.theHeCPU}</td>
			</tr>
			<tr>
				<td>CPU</td>
				<td>${detailLaptop.cpu} </td>
			</tr>
			<tr>
				<td>Graphics chip</td>
				<td>${detailLaptop.chipDoHoa}</td>
			</tr>
			<tr>
				<td>RAM</td>
				<td>${detailLaptop.ram}</td>
			</tr>
			<tr>
				<td>Screen</td>
				<td>${detailLaptop.manHinh}</td>
			</tr>
			<tr>
				<td>Storage</td>
				<td>${detailLaptop.luuTru}</td>
			</tr>
			<tr>
				<td>Maximum number of storage ports</td>
				<td>${detailLaptop.soCongLuuTruToiDa}</td>
			</tr>
			<tr>
				<td>M.2 slot type supported</td>
				<td>${detailLaptop.kieuKheM2HoTro}</td>
			</tr>
			<tr>
				<td>Connector</td>
				<td>${detailLaptop.congKetNoi}</td>
			</tr>
			<tr>
				<td>Wireless Connectivity</td>
				<td>${detailLaptop.ketNoiKhongDay}</td>
			</tr>
			<tr>
				<td>Keyboard</td>
				<td>${detailLaptop.banPhim}</td>
			</tr>
			<tr>
				<td>Operate system</td>
				<td>${detailLaptop.heDieuHanh}</td>
			</tr>
			<tr>
				<td>Size</td>
				<td>${detailLaptop.kichThuoc}</td>
			</tr>
			<tr>
				<td>Battery</td>
				<td>${detailLaptop.pin}</td>
			</tr>
			<tr>
				<td>Weight</td>
				<td>${detailLaptop.khoiLuong}</td>
			</tr>
			<tr>
				<th>Other information</th>
			</tr>
			<tr>
				<td>Security</td>
				<td>${detailLaptop.baoMat}</td>
			</tr>
			<tr>
				<td>LED lights on the machine</td>
				<td>${detailLaptop.denLedTrenMay}</td>
			</tr>
			<tr>
				<td>Accessories included</td>
				<td>${detailLaptop.phuKienDiKem}</td>
			</tr>
		</table>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>
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