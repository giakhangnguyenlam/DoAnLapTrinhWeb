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
                                            <th>Tên tài khoản</th>
                                            <th>Tên khách hàng</th>
                                            <th>Giới tính</th>
                                            <th>Số điện thoại</th>
                                            <th>Địa chỉ</th>
                                            <th>Vai Trò</th>
                                            <th>Thao tác</th>
                                        </tr>
                             </thead>
                             
                				<c:forEach var="user" items="${listUser}">
								<form action="${pageContext.request.contextPath}/AdminUser">
									<div class="col-md-4 bottom-cd simpleCart_shelfItem">
									<div class="product-at "></div>
									<tbody>
								<td><c:out value="${user.getTenTaiKhoan()}"/></td>
								<td><c:out value="${user.getTenKhachHang()}"/></td>
								<td><c:out value="${user.getGioitinh()}"/></td>
								<td><c:out value="${user.getSoDienThoai()}"/></td>
								<td><c:out value="${user.geteMail()}"/></td>
								<td><c:out value="${user.getDiaChi()}"/></td>
								<td><c:out value="${user.getVaiTro()}"/></td>
								<td><input type="submit" name="action" value="Remove" >
								<input type = "submit" name="action" value="Update"></td>
								
								</tbody>
						<!-- <a href="#" class="item_add"><p class="number item_price"><i> </i>$500.00</p></a>-->
								<input type="hidden" name="tentaikhoan" value="${user.getTenTaiKhoan()}">
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