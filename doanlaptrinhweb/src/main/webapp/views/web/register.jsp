<%@page import="org.w3c.dom.Text"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UTE Shopping</title>
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
String userName= request.getParameter("username");
if(userName==null)
{
	userName="";
}



String yourName = request.getParameter("yourname");
if(yourName == null)
{
	yourName="";	
}
String yourNameError = (String)request.getAttribute("yourNameError");
if(yourNameError == null)
{
	yourNameError="";		
}


String phoneNumber = request.getParameter("phonenumber");
if(phoneNumber == null)
{
	phoneNumber="";	
}
String phoneNumberError = (String)request.getAttribute("phoneNumberError");
if(phoneNumberError==null)
{
	phoneNumberError="";
}


String email = request.getParameter("email");
if(email == null)
{
	email="";	
}
String emailError = (String)request.getAttribute("emailError");
if(emailError == null)
{
	emailError="";	
}

String address = request.getParameter("address");
if(address == null)
{
	address="";	
}
String addressError = (String)request.getAttribute("addressError");
if(addressError == null)
{
	addressError="";	
}

String password = request.getParameter("password");
if(password == null)
{
	password="";
}
String confirmPassword = request.getParameter("confirmpassword");
if(confirmPassword == null)
{
	confirmPassword="";	
}
String passwordError = (String)request.getAttribute("passwordError");
if(passwordError == null)
{
	passwordError="";	
}

String monthSelected = request.getParameter("birthdateMonth");
if (monthSelected == null) {
	monthSelected = "1";
}
String yearSelected = request.getParameter("birthdateYear");
if (yearSelected == null) {
	yearSelected = "1990";
}
String daySelected = request.getParameter("birthdateDay");
if (daySelected == null) {
	daySelected = "1";
}



%>











	<!--Header -->
	<jsp:include page="header.jsp"></jsp:include>
	<!--Header  -->




<div class=" container">
<div class=" register">
	<h1>Register</h1>
		  	  <form method="POST" action="${pageContext.request.contextPath}/register"> 
				 <div class="col-md-6 register-top-grid">
					<h3>Personal Information</h3>
					<div>
						<span>User Name</span>
						<input type="text" name="username" placeholder="Enter User Name" value=<%=userName%>>
						<p><c:out value="${userNameError}"/></p>
					 </div>
					 <div>
						<span>Your Name</span>
						<input type="text" name="yourname" placeholder="Enter Your Name" value=<%=yourName%>>
						<p><c:out value="${yourNameError}"/> </p>
					 </div>
					 <div>
						<span>Phone Number</span>
						<input type="text" name="phonenumber" placeholder="Enter Your Phone Number" value=<%=phoneNumber%>>
						<p><c:out value="${phoneNumberError}"/> </p> 
					 </div>
					 <div>
						 <span>Email</span>
						 <input type="text" name="email" placeholder="Enter Your Email" value=<%=email%>>
						 <p> <c:out value="${emailError}"/> </p>
					 </div>
					 <div>
						 <span>Address</span>
						 <input type="text" name="address" placeholder="Enter Your Address" value=<%=address%>> 
					 </div>
					 <table>
					 	<tr>
					 	<td><span>Select your gender:</span></td>
                		<td><input type="radio" name="gender" value="Male" checked>Male</td>
                		<td><input type="radio" name="gender" value="Female">Female</td>
                		</tr>
            		</table>
            		
            		<span>Your BirthDate:
            <select name="birthdateDay">
				<%
					for (int day = 1; day <= 31; day++) {
				%>
				<option value="<%=day%>" <% if(daySelected.equals(day+"")) {%> selected <%} %>> <%=day%></option>
				<%
					}
				%>
			</select>
			<select name="birthdateMonth">
				<%
					for (int month = 1; month <= 12; month++) {
				%>
				<option value="<%=month%>" <% if(monthSelected.equals(month+"")) {%> selected <%} %>> <%=month%></option>
				<%
					}
				%>
			</select> 
			<select name="birthdateYear">
				<%
					for (int year = 1940; year <= 2020; year++) {
				%>
				<option value="<%=year%>" <% if(yearSelected.equals(year+"")) {%> selected <%} %>> <%=year%></option>
				<%
					}
				%>
			</select>
			</span>							 
					
					 
					 </div>
				     <div class="col-md-6 register-bottom-grid">
						    <h3>Login information</h3>
							 <div>
								<span>Password</span>
								<input type="password"  name="password" value=<%=password%>>
							 </div>
							 <div>
								<span>Confirm Password</span>
								<input type="password" name="confirmpassword" value=<%=confirmPassword%>>
							 </div>
							 <p><c:out value="${passwordError}"/> </p>
							 <input type="submit" value="submit">
							
					 </div>
					 <div class="clearfix"> </div>
				</form>
			</div>
</div>


	<!--Footer -->
	<jsp:include page="footer.jsp"></jsp:include>
	<!--Footer  -->
</body>
</html>