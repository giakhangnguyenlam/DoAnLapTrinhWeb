<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="home.jsp"></jsp:include>
<div class="right__table">
				<p>Đây là thẻ tiếp theo</p>
                <c:forEach var="user" items="${listUser}">
				<form action="${pageContext.request.contextPath}/AdminUser">
					<div class="col-md-4 bottom-cd simpleCart_shelfItem">
						<div class="product-at ">	
						</div>
						<p class="tun">Tên tài khoản:<c:out value="${user.getTenTaiKhoan()}"/></p>
						<p class="tun"><c:out value="${user.getTenKhachHang()}"/></p>
						<p class="tun"><c:out value="${user.getGioitinh()}"/></p>	
						<p class="tun"><c:out value="${user.getSoDienThoai()}"/></p>
						<p class="tun"><c:out value="${user.geteMail()}"/></p>
						<p class="tun"><c:out value="${user.getDiaChi()}"/></p>
						<p class="tun"><c:out value="${user.getVaiTro()}"/></p>
						<!-- <a href="#" class="item_add"><p class="number item_price"><i> </i>$500.00</p></a>-->
						<input type="hidden" name="tentaikhoan" value="${user.getTenTaiKhoan()}">
						<input type="submit" name="action" value="Remove" >
						<input type = "submit" name="action" value="Update">
					</div>
				
				</form>
				</c:forEach>
				<a href="${pageContext.request.contextPath}/views/admin/AddNewUser.jsp">Add new User</a>
</body>
</html>