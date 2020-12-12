<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/template/admin/css/main.css">
</head>
<body>
<jsp:include page="TableLeft.jsp"></jsp:include>
	<p> Nhà cung cấp view</p>
	<div class="right">
                    <div class="right__content">
                        <div class="right__title">Bảng điều khiển</div>
                        <p class="right__desc">Bảng điều khiển</p>
                        <div class="right__cards">
                        <form name="" action="${pageContext.request.contextPath}/AdminServlet">

							
                                <div class="right__cardTitle">User</div>.0
                                <div class="right__cardNumber">72</div>
                                <input type="submit" name="actionAdmin" value="ViewUser">
                                <input type="submit" name="actionAdmin" value="ViewProduct">
                                <div class="right__cardDesc">Xem Chi Tiết <img src="assets/arrow-right.svg" alt=""></div>
                            <a class="right__card" href="view_customers.html">
                                <div class="right__cardTitle">Khách Hàng</div>
                                <div class="right__cardNumber">12</div>
                                <div class="right__cardDesc">Xem Chi Tiết <img src="assets/arrow-right.svg" alt=""></div>
                            </a>
                            <a class="right__card" href="view_p_category.html">
                                <div class="right__cardTitle">Danh Mục</div>
                                <div class="right__cardNumber">4</div>
                                <div class="right__cardDesc">Xem Chi Tiết <img src="assets/arrow-right.svg" alt=""></div>
                            </a>
                            <a class="right__card" href="view_orders.html">
                                <div class="right__cardTitle">Đơn Hàng</div>
                                <div class="right__cardNumber">72</div>
                                <div class="right__cardDesc">Xem Chi Tiết <img src="assets/arrow-right.svg" alt=""></div>
                            </a>
                        </div>
                        </form>
</body>
</html>