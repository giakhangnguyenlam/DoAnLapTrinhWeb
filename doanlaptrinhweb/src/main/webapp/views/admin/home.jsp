<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/template/admin/css/main.css">
</head>
<body>
    <div class="wrapper">
        <div class="container">
            <div class="dashboard">
                <div class="left">
                    <span class="left__icon">
                        <span></span>
                        <span></span>
                        <span></span>
                    </span>
                    <div class="left__content">
                        <div class="left__logo">LOGO</div>
                        <div class="left__profile">
                            <div class="left__image"><img src="${pageContext.request.contextPath}/images/logo.png" alt=""></div>
                            <p class="left__name">Hatsune Miku</p>
                        </div>
                        <ul class="left__menu">
                            <li class="left__menuItem">
                                <a href="${pageContext.request.contextPath}/views/admin/home.jsp" class="left__title"><img src="${pageContext.request.contextPath}/images/logo.png" alt="">Dashboard</a>
                            </li>
                            <li class="left__menuItem">
                                <div class="left__title"><img src="${pageContext.request.contextPath}/images/assets/icon-tag.svg" alt="">Sản Phẩm<img class="left__iconDown" src="${pageContext.request.contextPath}/images/assets/arrow-down.svg" alt=""></div>
                                <div class="left__text">
                                    <a class="left__link" href="${pageContext.request.contextPath}/views/admin/AddProduct.jsp">Chèn Sản Phẩm</a>
                                    <a class="left__link" href="${pageContext.request.contextPath}/AdminServlet?actionAdmin=ViewProduct">Xem Sản Phẩm</a>
                                </div>
                            </li>
                            <li class="left__menuItem">
                                <div class="left__title"><img src="${pageContext.request.contextPath}/images/assets/icon-edit.svg" alt="">Danh Mục SP<img class="left__iconDown" src="${pageContext.request.contextPath}/images/assets/arrow-down.svg" alt=""></div>
                                <div class="left__text">
                                    <a class="left__link" href="insert_p_category.html">Chèn Danh Mục</a>
                                    <a class="left__link" href="view_p_category.html">Xem Danh Mục</a>
                                </div>
                            </li>
                            <li class="left__menuItem">
                                <div class="left__title"><img src="${pageContext.request.contextPath}/images/assets/icon-book.svg" alt="">Thể Loại<img class="left__iconDown" src="assets/arrow-down.svg" alt=""></div>
                                <div class="left__text">
                                    <a class="left__link" href="insert_category.html">Chèn Thể Loại</a>
                                    <a class="left__link" href="view_category.html">Xem Thể Loại</a>
                                </div>
                            </li>
                            <li class="left__menuItem">
                                <div class="left__title"><img src="assets/icon-settings.svg" alt="">Slide<img class="left__iconDown" src="assets/arrow-down.svg" alt=""></div>
                                <div class="left__text">
                                    <a class="left__link" href="insert_slide.html">Chèn Slide</a>
                                    <a class="left__link" href="view_slides.html">Xem Slide</a>
                                </div>
                            </li>
                            <li class="left__menuItem">
                                <div class="left__title"><img src="assets/icon-book.svg" alt="">Coupons<img class="left__iconDown" src="assets/arrow-down.svg" alt=""></div>
                                <div class="left__text">
                                    <a class="left__link" href="insert_coupon.html">Chèn Coupon</a>
                                    <a class="left__link" href="view_coupons.html">Xem Coupons</a>
                                </div>
                            </li>
                            <li class="left__menuItem">
                                <a href="${pageContext.request.contextPath}/AdminServlet?actionAdmin=ViewUser" class="left__title"><img src="assets/icon-users.svg" alt="">Khách Hàng</a>
                            </li>
                            <li class="left__menuItem">
                                <a href="view_orders.html" class="left__title"><img src="assets/icon-book.svg" alt="">Đơn Đặt Hàng</a>
                            </li>
                            <li class="left__menuItem">
                                <a href="${pageContext.request.contextPath}/AdminServlet?actionAdmin=ViewProduct" class="left__title"><img src="${pageContext.request.contextPath}/images/assets/icon-pencil.svg" alt="">CSS</a>
                            </li>
                            <li class="left__menuItem">
                                <div class="left__title"><img src="assets/icon-user.svg" alt="">Admin<img class="left__iconDown" src="${pageContext.request.contextPath}/images/assets/arrow-down.svg" alt=""></div>
                                <div class="left__text">
                                    <a class="left__link" href="insert_admin.html">Chèn Admin</a>
                                    <a class="left__link" href="view_admins.html">Xem Admins</a>
                                </div>
                            </li>
                            <li class="left__menuItem">
                                <a href="${pageContext.request.contextPath}/logOut" class="left__title"><img src="assets/icon-logout.svg" alt="">Đăng Xuất</a>
                            </li>
                        </ul>
                    </div>
                </div>
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
                                <input type="submit" name="actionAdmin" value="ViewSupplier">
                                <input type="submit" name="actionAdmin" value="ViewOrder">
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
                        <div class="right__table">
                            <p class="right__tableTitle">Đơn hàng mới</p>
                            <div class="right__tableWrapper">
                                
                            </div>
                            <a href="" class="right__tableMore"><p>Xem tất cả các đơn đặt hàng</p> <img src="assets/arrow-right-black.svg" alt=""></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="${pageContext.request.contextPath}/template/admin/js/main.js"></script>
</body>
</html>