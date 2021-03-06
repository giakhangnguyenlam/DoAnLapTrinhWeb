<%@page import="ute.webapplication.utils.web.MyUtils"%>
<%@page import="ute.webapplication.model.web.AccountModel"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>

<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">


<script type="text/javascript">
	$(document).ready(function() {
		$('#search').autocomplete({
			source: '${pageContext.request.contextPath}/search'
		});
	});
</script>


<%
	AccountModel user = (AccountModel)MyUtils.getLoginedUser(request.getSession());
%>	
	
<div class="header">
	<div class="header-top">
		<div class="container">
			<div class="search">
					<form action="${pageContext.request.contextPath}/product?idProduct=null" method=post>
						<input type="text" name="search" id="search" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search';}">
						<input type="submit" value="Go">
					</form>
			</div>
			<div class="header-left">		
					<ul>
					<% 
						if(user ==null) {
					%>
						<li ><a href="${pageContext.request.contextPath}/views/web/login.jsp" ><c:out value="Login"/></a></li>
						<li><a href="${pageContext.request.contextPath}/views/web/register.jsp">Register</a></li>
					<% 
						}	
				
						else {%> 
							<!--<li ><a href="${pageContext.request.contextPath}/views/web/userView.jsp"  ><c:out value="${user.getTenKhachHang()}"/></a></li>-->
							<li ><a href="#"  ><c:out value="Hello, ${user.getTenKhachHang()}"/></a></li>
							<li ><a href="${pageContext.request.contextPath}/editUser">My Account</a></li>
							<li ><a href="${pageContext.request.contextPath}/myOrder">My Order</a></li>
							<li><a href="${pageContext.request.contextPath}/logOut">Log out</a></li>
							
					<%  }%>
						
						
						
					</ul>
					<div class="cart box_1">
						<a href="${pageContext.request.contextPath}/cartView">
						<h3> <div class="total">
							<span> Cart(${totalItems}) </span></div>
							<img src="${pageContext.request.contextPath}/images/cart.png" alt=""/></h3>
						</a>
						
					</div>
					<div class="clearfix"> </div>
			</div>
				<div class="clearfix"> </div>
		</div>
		</div>
		<div class="container">
			<div class="head-top">
				<div class="logo">
					<a href="${pageContext.request.contextPath}/trang-chu"><img src="${pageContext.request.contextPath}/images/logo.png" alt=""></a>	
				</div>
		  <div class=" h_menu4">
				<ul class="memenu skyblue">
					  <li class="active grid"><a class="color8" href="${pageContext.request.contextPath}/trang-chu">Home</a></li>	
				      <li><a class="color1" href="${pageContext.request.contextPath}/product?idProduct=computer">Computer</a>
				      	<div class="mepanel">
						<div class="row">
							<div class="col1">
								<div class="h_nav">
									<ul>
										<li><a href="${pageContext.request.contextPath}/product?idProduct=LTApple">Apple</a></li>

										
										
									</ul>	
								</div>							
							</div>
							<div class="col1">
								<div class="h_nav">
									<ul>
										<li><a href="${pageContext.request.contextPath}/product?idProduct=LTAcer">Acer</a></li>										
									</ul>	
								</div>							
							</div>
							<div class="col1">
								<div class="h_nav">
									<ul>
										<li><a href="${pageContext.request.contextPath}/product?idProduct=LTAssus">ASUS</a></li>
									</ul>	
								</div>												
							</div>
						  </div>
						</div>
					</li>
				    <li class="grid"><a class="color2" href="${pageContext.request.contextPath}/product?idProduct=accessories">Accessories</a>
					  	<div class="mepanel">
						<div class="row">
							<div class="col1">
								<div class="h_nav">
									<ul>
										<li><a href="${pageContext.request.contextPath}/product?idProduct=cpu">CPU</a></li>
										
									</ul>	
								</div>							
							</div>
							<div class="col1">
								<div class="h_nav">
									<ul>
										<li><a href="${pageContext.request.contextPath}/product?idProduct=ram">RAM</a></li>

									</ul>	
								</div>							
							</div>
							<div class="col1">
								<div class="h_nav">
									<ul>
										<li><a href="${pageContext.request.contextPath}/product?idProduct=harddrive">Hard Drive</a></li>
										
									</ul>	
								</div>												
							</div>
						  </div>
						</div>
			    </li>			
				<li><a class="color6" href="${pageContext.request.contextPath}/contact">Contact</a></li>
			  </ul> 
			</div>
				
				<div class="clearfix"> </div>
		</div>
		</div>

	</div>