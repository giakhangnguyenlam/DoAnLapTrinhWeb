<%@page import="ute.webapplication.utils.web.MyUtils"%>
<%@page import="ute.webapplication.model.web.AccountModel"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<%
	AccountModel user = (AccountModel)MyUtils.getLoginedUser(request.getSession());
%>	
	
<div class="header">
	<div class="header-top">
		<div class="container">
			<div class="search">
					<form>
						<input type="text" value="Search " onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search';}">
						<input type="submit" value="Go">
					</form>
			</div>
			<div class="header-left">		
					<ul>
					<% 
						if(user ==null) {
					%>
						<li ><a href="${pageContext.request.contextPath}/views/web/login.jsp" ><c:out value="Login"/></a></li>
					<% 
						}	
				
						else {%> 
							<!--<li ><a href="${pageContext.request.contextPath}/views/web/userView.jsp"  ><c:out value="${user.getTenKhachHang()}"/></a></li>-->
							<li ><a href="${pageContext.request.contextPath}/editUser"  ><c:out value="${user.getTenKhachHang()}"/></a></li>
					<%  }%>
						
						<li><a href="${pageContext.request.contextPath}/views/web/register.jsp">Register</a></li>
						
					</ul>
					<div class="cart box_1">
						<a href="checkout.html">
						<h3> <div class="total">
							<span class="simpleCart_total"></span> (<span id="simpleCart_quantity" class="simpleCart_quantity"></span> items)</div>
							<img src="${pageContext.request.contextPath}/images/cart.png" alt=""/></h3>
						</a>
						<p><a href="javascript:;" class="simpleCart_empty">Empty Cart</a></p>

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
				      <li><a class="color1" href="${pageContext.request.contextPath}/product">Computer</a>
				      	<div class="mepanel">
						<div class="row">
							<div class="col1">
								<div class="h_nav">
									<ul>
										<li><a href="${pageContext.request.contextPath}/productl">Apple</a></li>

										
										
									</ul>	
								</div>							
							</div>
							<div class="col1">
								<div class="h_nav">
									<ul>
										<li><a href="${pageContext.request.contextPath}/product">Acer</a></li>										
									</ul>	
								</div>							
							</div>
							<div class="col1">
								<div class="h_nav">
									<ul>
										<li><a href="${pageContext.request.contextPath}/product">ASUS</a></li>
									</ul>	
								</div>												
							</div>
						  </div>
						</div>
					</li>
				    <li class="grid"><a class="color2" href="${pageContext.request.contextPath}/product">Accessories</a>
					  	<div class="mepanel">
						<div class="row">
							<div class="col1">
								<div class="h_nav">
									<ul>
										<li><a href="${pageContext.request.contextPath}/product">CPU</a></li>
										
									</ul>	
								</div>							
							</div>
							<div class="col1">
								<div class="h_nav">
									<ul>
										<li><a href="${pageContext.request.contextPath}/product">RAM</a></li>

									</ul>	
								</div>							
							</div>
							<div class="col1">
								<div class="h_nav">
									<ul>
										<li><a href="${pageContext.request.contextPath}/product">Hard Drive</a></li>
										
									</ul>	
								</div>												
							</div>
						  </div>
						</div>
			    </li>			
				<li><a class="color6" href="${pageContext.request.contextPath}/views/web/contact.jsp">Contact</a></li>
			  </ul> 
			</div>
				
				<div class="clearfix"> </div>
		</div>
		</div>

	</div>