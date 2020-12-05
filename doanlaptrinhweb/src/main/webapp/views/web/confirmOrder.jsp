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


	<!--Header -->
	<jsp:include page="header.jsp"></jsp:include>
	<!--Header  -->


	<div class="container">
	<div class="check">	 
             <h1>Your Order Confirmation</h1>
             <table style="width:100%">
                <tr>
                    <td>Your Name:</td>
                    <td>${user.tenKhachHang}</td>
                </tr>
                <tr>
                    <td>Your Phone:</td>
                    <td>${user.soDienThoai}</td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td>${user.eMail}</td>
                </tr>
                <tr>
                    <td>Address:</td>
                    <td>${user.diaChi}</td>
                </tr>
            </table>
            <form action="${pageContext.request.contextPath}/editUserInConfirmationController">
             <input type="submit" value="Edit">
             </form>
           <br>
           <br>
           <br>
		 <div class="col-md-9 cart-items">
		 <c:forEach var="item" items="${cart.listItems}">	
		 	<div class="cart-header">
				 <div class="close1"> </div>
				 <div class="cart-sec simpleCart_shelfItem">
						<div class="cart-item cyc">
							 <img src="${item.hinhAnh}" class="img-responsive" alt=""/>
						</div>
					   <div class="cart-item-info">
						<h3><a href="${pageContext.request.contextPath}/productservlet?idProduct=${item.maSanPham}">Product Name: ${item.ten}</a>
						<span>Product Code: ${item.maSanPham}</span>
                        <span>Cost: $ ${item.giaban}</span>
                        <span>Quantity: ${item.soluong}</span>
                        <span>Total Cost: ${item.thanhTien}</span>
						</h3>
					   </div>
					   <div class="clearfix"></div>
											
				  </div>
			 </div>
			 </c:forEach>
		</div>
	 </div>			 
	<div class="col-md-3 cart-total">
			 <a class="continue" href="${pageContext.request.contextPath}/product?idProduct=computer">Continue to basket</a>
			 <div class="price-details">
				 <h3>Price Details</h3>
				 <span>Total</span>
				 <span class="total1">${totalCost}</span>
				 <span>Discount</span>
				 <span class="total1">---</span>
				 <span>Delivery Charges</span>
				 <span class="total1">15.000</span>
				 <div class="clearfix"></div>				 
			 </div>	
			 <ul class="total_price">
			   <li class="last_price"> <h4>TOTAL</h4></li>	
			   <li class="last_price"><span>${totalCost} + 15.000</span></li>
			   <div class="clearfix"> </div>
			 </ul>
			 
			 <div class="clearfix"></div>
			 <a class="order" href="${pageContext.request.contextPath}/confirmOrderServlet">Confirm</a>
		</div>
			<div class="clearfix"> </div>
	 </div>	
</head>
<body>




</body>
</html>