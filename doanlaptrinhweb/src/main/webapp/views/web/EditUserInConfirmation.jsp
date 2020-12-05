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
             <form action="${pageContext.request.contextPath}/editUserInConfirmation">
             <table style="width:100%">                
                <tr>
                    <td>Your Name:</td>
                    <td><input type="text" name="yourname" value ="${user.tenKhachHang}"> ${yourNameError}</td>           
                </tr>
                <tr>
                    <td>Your Phone:</td>
                    <td><input type="text" name="phonenumber" value = "${user.soDienThoai}"> ${phoneumberError}</td>
  
                </tr>
                <tr>
                    <td>Email:</td>
                    <td><input type="text" name="email" value = "${user.eMail}"> ${emailError}</td>
                </tr>
                <tr>
                    <td>Address:</td>
                    <td><input type="text" name="address" value = "${user.diaChi}"> ${addressError}</td>
                </tr>
            </table>
			 <input type="submit" value="Save Changed">
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
</div>
</head>
<body>




</body>
</html>