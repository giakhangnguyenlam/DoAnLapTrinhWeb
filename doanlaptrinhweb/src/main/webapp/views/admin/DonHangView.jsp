<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/template/admin/css/main.css">
</head>
<body>
<%
%>
<jsp:include page="TableLeft.jsp"></jsp:include>
 				<div class="right">
                    <div class="right__content">
                        <div class="right__title">Bảng điều khiển</div>
                        <p class="right__desc">Xem sản phẩm</p>
                        <div class="right__table">
                            <div class="right__tableWrapper">
                            <form action="${pageContext.request.contextPath}/AdminUser" >
							<input type="text" name="ValueSearch"  placeholder="Enter Your UserName or Name">
							<input type="submit" name="action" value="Search">
							</form>
                            <table>
                            <thead>
                                        <tr>
                                       	 	<th> ID </th>
                                            <th>Ngay mua</th>
                                            <th>San pham</th>
                                            <th>Tong tien</th>
                                            <th>Tinh trang don hang</th>
                                            <th>Ten tai khoan</th>
                                            
                                            <th>Thao tác</th>
                                        </tr>
                             </thead>
                             
                				<c:forEach var="order" items="${listOrder}">
								<form action="${pageContext.request.contextPath}/AdminOrder">
									<div class="col-md-4 bottom-cd simpleCart_shelfItem">
									<div class="product-at "></div>
									<tbody>
								<td><c:out value="${order.getId()}"/></td>
								<td><c:out value="${order.getNgayMuaHang()}"/></td>
								<td><c:out value="${order.getSanpham()}"/></td>
								<td><c:out value="${order.getTongTien()}"/></td>
								<td><c:out value="${order.getTinhTrangDonHang()}"/></td>
								<td><c:out value="${order.getUser().getTenTaiKhoan()}"/></td>
								<td><input type="submit" name="action" value="Remove" onclick----------------------------="return confirm('Are you sure you want to delete?')" >
								<input type = "submit" name="action" value="Update"></td>
								
								</tbody>
						<!-- <a href="#" class="item_add"><p class="number item_price"><i> </i>$500.00</p></a>-->
								<input type="hidden" name="OrderID" value="${order.getId()}">
															</div>
								</form >
								
							</c:forEach>
							
							</table>
				<a href="${pageContext.request.contextPath}/views/admin/AddNewUser.jsp">Add new User</a>
				<a href="${pageContext.request.contextPath}/AdminServlet?actionAdmin=ViewUser">Reload</a>
				</div>
				</div>
</body>
</html>