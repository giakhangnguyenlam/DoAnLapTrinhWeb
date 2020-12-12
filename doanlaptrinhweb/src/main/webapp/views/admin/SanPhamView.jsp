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
                        <p>Danh sách sản phẩm</p>
                        <div class="right__table">
                            <div class="right__tableWrapper">
                            <table>
                            <thead>
                                        <tr>
                                            <th>Mã sản phẩm</th>
                                            <th>Tên sản phẩm</th>
                                            <th> Mô tả </th>
                                            <th>Số lượng</th>
                                            <th>Giá bán</th>
                                            <th>Nhà cung cấp</th>
                                            <th>Số lượng nhập</th>
                                            <th>Số lượng bán</th>
                                            <th>Thao tác</th>
                                            
                                        </tr>
                             </thead>
                             
                				<c:forEach var="product" items="${listProduct}">
								<form action="${pageContext.request.contextPath}/AdminProduct">
									<div class="col-md-4 bottom-cd simpleCart_shelfItem">
									<div class="product-at "></div>
									<tbody>
								<td><c:out value="${product.getMaSanPham()}"/></td>
								<td><c:out value="${product.getTen()}"/></td>
								<td><c:out value="${product.getMota()}"/></td>
								<td><c:out value="${product.getSoLuong()}"/></td>
								<td><c:out value="${product.getGiaban()}"/></td>
								<td><c:out value="${product.getNhaCungCap()}"/></td>
								<td><c:out value="${product.getSoLuongNhap()}"/></td>
								<td><c:out value="${product.getSoLuongBan()}"/></td>
								<td>
								<input type="submit" name="action" value="Remove" onclick="return confirm('Are you sure you want to delete?')" >
								<input type = "submit" name="action" value="Update">
								 </td>
								
								</tbody>
						<!-- <a href="#" class="item_add"><p class="number item_price"><i> </i>$500.00</p></a>-->
								<input type="hidden" name="prodcutID" value="${product.getMaSanPham()}">
															</div>
								</form>
							</c:forEach>
							
							</table>
				<a href="${pageContext.request.contextPath}/views/admin/AddProduct.jsp">Add New Product</a>
				</div>
				</div>
</body>
</html>