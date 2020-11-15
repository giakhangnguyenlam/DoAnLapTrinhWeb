<%@page import="java.time.LocalDate"%>
<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.sql.Date"%>
<%@page import="ute.webapplication.utils.web.MyUtils"%>
<%@page import="ute.webapplication.model.web.AccountModel"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UTE shopping</title>
<link href="${pageContext.request.contextPath}/template/web/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="${pageContext.request.contextPath}/template/web/js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="${pageContext.request.contextPath}/template/web/css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--fonts-->
<link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'><!--//fonts-->
<!-- start menu -->
<link href="${pageContext.request.contextPath}/template/web/css/memenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="${pageContext.request.contextPath}/template/web/js/memenu.js"></script>
<script>$(document).ready(function(){$(".memenu").memenu();});</script>
<script src="${pageContext.request.contextPath}/template/web/js/simpleCart.min.js"> </script>
</head>
<body>
	<%
	AccountModel user = (AccountModel)MyUtils.getLoginedUser(request.getSession());
	
	Date birthDate = user.getNgaySinh();
	LocalDate birth = birthDate.toLocalDate();
	int daySelected = birth.getDayOfMonth();
	int monthSelected =  birth.getMonthValue();
	int yearSelected= birth.getYear();
	
	String yourNameError = (String)request.getAttribute("yourNameError");
	if(yourNameError == null)
	{
		yourNameError="";		
	}
	
	String phoneNumberError = (String)request.getAttribute("phoneNumberError");
	if(phoneNumberError==null)
	{
		phoneNumberError="";
	}
	
	String emailError = (String)request.getAttribute("emailError");
	if(emailError == null)
	{
		emailError="";	
	}
	
	String addressError = (String)request.getAttribute("addressError");
	if(addressError == null)
	{
		addressError="";	
	}
	
	String passwordError = (String)request.getAttribute("passwordError");
	if(passwordError == null)
	{
		passwordError="";	
	}
	
	%>
	
	
	




	<!--Header  -->
	<jsp:include page="header.jsp"></jsp:include>
	<!--Header  -->
	
	
	
	<div class=" container">
<div class=" register">
	<h1>User Information</h1>
		  	  <form method="POST" action="${pageContext.request.contextPath}/editUserServlet"> 
				 <div class="col-md-6 register-top-grid">
					<h3>Personal Information</h3>
					 <div>
						<span>Your Name</span>
						<input type="text" name="yourname" value=<%=user.getTenKhachHang()%>>
						<p><%=yourNameError%> </p>
					 </div>
					 <div>
						<span>Phone Number</span>
						<input type="text" name="phonenumber" value=<%=user.getSoDienThoai()%>>
						<p><%=phoneNumberError%> </p> 
					 </div>
					 <div>
						 <span>Email</span>
						 <input type="text" name="email" value=<%=user.geteMail()%>>
						 <p> <%=emailError%> </p>
					 </div>
					 <div>
						 <span>Address</span>
						 <input type="text" name="address" value=<%=user.getDiaChi()%>> 
					 </div>
					 <table>
					 	<tr>
					 	<td><span>Select your gender:</span></td>
					 	<%if(user.getGioitinh().equals("Male")) {%>
					 	<td><input type="radio" name="gender" value="Male" checked>Male</td>
					 	<%} else {%>
					 	<td><input type="radio" name="gender" value="Male">Male</td>
					 	<%} %>
                		<%if(user.getGioitinh().equals("Female")) {%>
					 	<td><input type="radio" name="gender" value="Female" checked>FeMale</td>
					 	<%} else {%>
					 	<td><input type="radio" name="gender" value="Female">FeMale</td>
					 	<%} %>
                		</tr>
            		</table>
            		
            		<span>Your BirthDate:
            <select name="birthdateDay">
				<%
					for (int day = 1; day <= 31; day++) {
				%>
				<option value="<%=day%>" <% if(daySelected == day) {%> selected <%} %>> <%=day%></option>
				<%
					}
				%>
			</select>
			<select name="birthdateMonth">
				<%
					for (int month = 1; month <= 12; month++) {
				%>
				<option value="<%=month%>" <% if(monthSelected == month) {%> selected <%} %>> <%=month%></option>
				<%
					}
				%>
			</select> 
			<select name="birthdateYear">
				<%
					for (int year = 1940; year <= 2020; year++) {
				%>
				<option value="<%=year%>" <% if(yearSelected == year) {%> selected <%} %>> <%=year%></option>
				<%
					}
				%>
			</select>
			</span> 
			</div>
			<div class="col-md-6 register-bottom-grid">
						    <h3>Login information</h3>
							 <div>
								<span>New Password</span>
								<input type="password"  name="password" value=<%=user.getMatKhau() %>>
							 </div>
							 <p><c:out value="${passwordError}"/> </p>
							 <input type="submit" value="Save Change">
							
					 </div>
					 <div class="clearfix"> </div>
			
			
			
			</form>
			</div>
</div>
</body>
</html>