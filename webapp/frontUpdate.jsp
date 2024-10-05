<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

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
<%
		String id=request.getParameter("id");
		String oname=request.getParameter("oname");
		String addr=request.getParameter("addr");
		String pnum=request.getParameter("pnum");
		String email=request.getParameter("email");
	
		%>
    <header class="header">
        <div class="hcontainer">
            <nav class="navbar">
              
             
                <ul class="nav-links">
<li><a href="index.jsp" >Home</a></li>
<li class="dropdown">
    <a href="sevices.jsp" class="dropbtn">Services</a>
    <div class="dropdown-content">
        <a href="passenger.jsp">Passenger transport</a>
        <a href="cargo.jsp">Cargo transport</a>
    </div>
</li>


<li><a href="bookingUI.jsp">Add bookings</a></li>
<li><a href="mybookings">My bookings</a></li>
<li><a href="aboutus.jsp">About Us</a></li>
<li><a href="Inquiery.jsp">Inquiries</a></li>
</ul>
<div class="nav-buttons">
                    <a href="signup.jsp" class="sbutton" style="background:#800080; color:black;">Sign Up</a><a href="login.jsp" class="sbutton" >Sign In</a>                </div>
            </nav>
        </div>
    </header>

<div class="wrap">
        <div class="form_box">
            <h2>Update Profile</h2>


<form action="proUpd" method="post">

 <input type="text" name="id" value="<%=id%>" >

  <div class="input_box">
   <span class="icon"></span>
   <input type="text" name="name" value="<%=oname%>">
   <label > Name</label>
   </div>

  <div class="input_box">
  <span class="icon"></span>
  <input type="text" name="addr" value="<%=addr%>">
  <label >Address</label>
  </div>

  <div class="input_box">
    <span class="icon"></span>
    <input type="text" name="pnum"  value="<%=pnum%>">
    <label >Phone No</label>
    </div>

 <div class="input_box">
        <span class="icon"></span>
        <input type="text" name="email" value="<%=email%>" >
        <label >Email</label>
        </div>
    





<br>
<input type="submit" name="createprofile" value="Update Profile" class="btn"><br>
</form>
<br>


   
                 
                <div class="signin_msg"></div>
         
        </div>
    </div>

<footer class="footer">
        <div class="container">
            <div class="row">
                <div class="footer-col">
                    <h4>Company</h4>
                    <ul>
                        <li><a href="aboutus.jsp">About Us</a></li>
                        <li><a href="privacy.jsp">Privacy Policies</a></li>
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
        <div class="copyright"><p>Copyright 2023 - Swift Pvt. Ltd.<br></div>
    </footer>
</body>
</html>