
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PawCare</title>
  
    <link rel="stylesheet" href="base.css">
    <link rel="stylesheet" type="text/css "href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>
<body>
    <header class="header">
        <div class="hcontainer">
            <nav class="navbar">
              
             
                <ul class="nav-links">
<li><a href="index.jsp" >Home</a></li>
<li class="dropdown">
    <a href="vet.jsp" class="dropbtn">Services</a>
    <div class="dropdown-content">
        <a href="vet.jsp">Veterinary</a>
        <a href="groomer.jsp">Grooming</a>
    </div>
</li>
<li class="dropdown">
    <a href="products.jsp" class="dropbtn">Products</a>
    <div class="dropdown-content">
        <a href="products.jsp">Foods</a>
        <a href="products.jsp">Medicine</a>
        <a href="products.jsp">Accessories</a>
        <a href="products.jsp">Toys</a>
    </div>
</li>
<li><a href="blog.jsp">Blog</a></li>
<li><a href="aboutus.jsp">About Us</a></li>
<li><a href="contactus.jsp">Contact</a></li>
</ul>
<div class="nav-buttons">
                    <a href="signup.jsp" class="sbutton" style="background:#800080; color:black;">Sign Up</a><a href="signin.jsp" class="sbutton" >Sign In</a>                </div>
            </nav>
        </div>
    </header>
    
    <div class="containert">m
<table class="tbl" >

<c:forEach var ="cus" items="${cusDetails}">
	<c:set var="id" value="${cus.id}"/>
	<c:set var="name" value="${cus.oname}"/>
	<c:set var="email" value="${cus.email}"/>
	<c:set var="pnum" value="${cus.pnum}"/>
	<c:set var="uname" value="${cus.uname}"/>
	<c:set var="psw" value="${cus.psw}"/>
	
	<tr>
	<td>ID:</td>
	<td>${cus.id}</td>
	</tr>
	<tr>
	<td>Name :</td>
	<td>${cus.oname}</td>
	</tr>
	<tr>
	<td>Email :</td>
	<td>${cus.email}</td>
	</tr>
	<tr>
	<td>Contact number :</td>
	<td>${cus.pnum}</td>
	</tr> 
	<tr>
	<td>User name :</td>
	<td>${cus.uname}</td>
	</tr>
	<tr>
	<td>Password :</td>
	<td>${cus.psw}</td>
	</tr>
</c:forEach>
</table></div>
<br>
<br>
<c:url  value="update.jsp" var="update_data">
	<c:param name="id" value="${id}"/>
	<c:param name="oname" value="${name}"/>
	<c:param name="email" value="${email}"/>
	<c:param name="pnum" value="${pnum}"/>
	<c:param name="username" value="${uname}"/>
	<c:param name="pass" value="${psw}"/>
	

</c:url>
<a href="${update_data}">
<input type="button" name="update" value="update your data">
</a>

<c:url value="delete.jsp" var="delete">
<c:param name="id" value="${id}"/>
</c:url>

<a href="${delete}">
<input type="button" name="delete" value="delete your account">
</a><footer class="footer">
        <div class="container">
            <div class="row">
                <div class="footer-col">
                    <h4>Company</h4>
                    <ul>
                        <li><a href="AboutUs.jsp">About Us</a></li>
                        <li><a href="privacy.jsp">Privacy Policies</a></li>
                        <li><a href="services.jsp">Our Services</a></li>
                        <li><a href="blog.jsp">Blog</a></li>
                    </ul>
                </div>               
                <div class="footer-col">
                    <h4>Get Help</h4>
                    <ul>
                        <li><a href="ContactUs.jsp">Contact</a></li>
                        <li><a href="#">FAQ</a></li>
                        <li><a href="#">Live Chat</a></li>
                        <li><a href="payment.jsp">Shipping</a></li>
                        <li><a href="products.jsp">Returns</a></li>
                    </ul>
                </div>               
 
                <div class="footer-col">
                    <h4>Payment</h4>
                    <div class="payment-links">
                        <a href="#"><i class="fab fa-cc-visa"></i></a>
                        <a href="#"><i class="fab fa-cc-mastercard"></i></a>
                        <a href="#"><i class="fab fa-cc-amex"></i></a>
                        <a href="#"><i class="fab fa-cc-paypal"></i></a>
                    </div>
                </div>
                <div class="footer-col">
                    <h4>follow us</h4>
                    <div class="social-links">
                        <a href="#"><i class="fab fa-facebook-f"></i></a>
                        <a href="#"><i class="fab fa-instagram"></i></a>
                        <a href="#"><i class="fab fa-linkedin-in"></i></a>
                        <a href="#"><i class="fab fa-youtube"></i></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="copyright"><p> Copyright 2023 - Swift Pvt. Ltd.<br></div>
    </footer>
</body>
</html>