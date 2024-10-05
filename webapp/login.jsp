<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

	<html lang="en">
	<head>
	    <meta charset="UTF-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <title>Swift</title>
	  
	    <link rel="stylesheet" href="css/base.css">
	    <link rel="stylesheet" type="text/css "href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
	</head>
	<body>
	    <header class="header">
	        <div class="hcontainer">
	            <nav class="navbar">
	              
	              <img src="./img/logo.png" style="width:110px;" class="logo" alt="swift">
	      <ul class="nav-links">
	          
				<li><a href="index.jsp" >Home</a></li>
				<li class="dropdown">
	   			 <a href="sevices.jsp" class="dropbtn">Services</a>
	  				  <div class="dropdown-content">
	       					 <a href="passenger.jsp">Passenger transport</a>
	       					 <a href="cargo.jsp">Cargo transport</a>
	  				  </div>
			</li>
		
		

				    <% if("customer".equals(session.getAttribute("type"))) { %>  
                   <li><a href="bookingUI.jsp">Add bookings</a></li>
					<li><a href="mybookings">My bookings</a></li>

                    <%}else if("driver".equals(session.getAttribute("type"))){%>
                    <li><a href="routeUI.jsp">Add Route</a></li>
					<li><a href="shRoute">My Route</a></li>
					<%} %>
                    
                    
                    
                    
                    
                    
<li><a href="AboutUs.jsp">About Us</a></li>
<li><a href="createInquiry.jsp">Inquiries</a></li>

	
				<% if(!(session.getAttribute("user_name")==null)) { %>  
                   <li><a href="showPro" >&emsp;&emsp;&emsp;<%= session.getAttribute("user_name")%></a></li>
                    <%}%>
                    	
                    	
                 </ul>
<div class="nav-buttons">

					
				<% 
				
				
				
				if(session.getAttribute("user_ID")==null) { %>  
                    <a href="signup.jsp" class="sbutton" >Sign Up</a>
                    
                    <a href="login.jsp" class="sbutton" style="background:#800080; color:black;" >Sign In</a>   
                    <% } else{  %>
                    	
                    	
                    	<a href="logOut" class="sbutton" >Log out</a>
                    	
                   <% }%>
                     </div>
            </nav>
        </div>
    </header>

	<div class="wrap">
        <div class="form_box">
            <h2>SignIn</h2>
<br>

	<form action="log" method="post">

	
	
	  <div class="input_box">
	   <span class="icon"></span>
	   <input type="text" name="uname" >
	   <label > Username</label>
	   </div>
	
	  <div class="input_box">
	  <span class="icon"></span>
	  <input type="password" name="psw" >
	  <label > Password</label>
	  </div>
	
	<br>
	<input type="submit" name="submit" value="LogIn" class="btn"><br>
	</form>
	<br>
<%-- Check if the "error" attribute is present in the request --%>
	<c:if test="${not empty requestScope.error}">
    		<div class="error-message" style = "color : red; text-align: center;">
        			<p>${requestScope.error}</p> <br>
    		</div></c:if>


   
                 
                <div class="signin_msg"><p>Don't have an account?  <a href="signup.jsp" class="reg_link"> Sign up</a></p></div>
         
        </div>
    </div>

<footer class="footer">
        <div class="container">
            <div class="row">
                <div class="footer-col">
                    <h4>Company</h4>
                    <ul>
                        <li><a href="AboutUs.jsp">About Us</a></li>
                        <li><a href="privacy policies.jsp">Privacy Policies</a></li>
                        <li><a href="services.jsp">Our Services</a></li>
                        <li><a href="mybookings">Bookings</a></li>
                    </ul>
                </div>               
                <div class="footer-col">
                    <h4>Get Help</h4>
                    <ul>
                        <li><a href="Inquiery.jsp">Contact</a></li>
                        <li><a href="#">FAQ</a></li>
                      
                        <li><a href="payment.jsp">Shipping</a></li>
                  
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
        <div class="copyright"><p>© Copyright 2023 - Swift Pvt. Ltd.<br></div>
    </footer>
</body>
</html>