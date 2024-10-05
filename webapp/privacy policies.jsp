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
	    	    
	   	 <style>
				
						
						
				.wrap{
				
				background:#ffc4c4d4;
				
				}		
		</style>
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
                    <a href="signup.jsp" class="sbutton" style="background:#800080; color:black;">Sign Up</a>
                    
                    <a href="login.jsp" class="sbutton" >Sign In</a>   
                    <% } else{  %>
                    	
                    	
                    	<a href="logOut" class="sbutton" style="background:#800080; color:black;">Log out</a>
                    	
                   <% }%>
                     </div>
            </nav>
        </div>
    </header>



    <link rel="stylesheet" href="css/privacy.css">
    <link rel="stylesheet" type="css/text/css ">
    <div class="wrap">
        <div class="privacy_box">
            <h2>Privacy Policies</h2>
         <div class="text">
            <p>
<h1><center><a style=" color:#841212;">Welcome to Swift Transportation System !</a></center> <br></h1>
We are committed to protecting your privacy and ensuring the security of your personal information. This Privacy Policy outlines our practices regarding the collection, use, and disclosure of your information when you use our transportation services.
<br>
<br>
By using Swift, you agree to the terms outlined in this Privacy Policy. If you do not agree with our practices, please do not use our services.
<br>
<br>
<h1>1. Information We Collect</h1>
<h3>We collect the following types of information:</h3>
<br>

<b>Personal Information:</b> When you use our transportation services, we may collect personal information such as your name, contact details, and payment information.
<br>
<b>Location Information:</b> We collect location data to provide you with real-time transportation information and services. This may include your GPS coordinates and information about your device.
<br>
<b>Usage Information:</b> We collect information about how you use our services, including your interactions with the app, routes taken, and ride history.
<br>
<h1>2. How We Use Your Information</h1>
<h3>We use your information for the following purposes:</h3>
<br>

<b>Providing Services:</b> We use your personal and location information to provide transportation services, process payments, and offer customer support.
<br>
<b>Improving Services:</b> We analyze usage data to enhance our services, improve the user experience, and develop new features.
<br>
<b>Marketing:</b> With your consent, we may use your information for marketing purposes, including promotions, offers, and updates about our services.
<br>
<b>Safety and Security:</b> We use data to ensure the safety and security of our users and to prevent fraud and unauthorized access.
<br>
<h1>3. Data Sharing</h1>
<h3>We may share your information with the following entities:</h3>
<br>
Drivers: Your name and location information are shared with drivers to facilitate your ride.
<br>
<b>Payment Processors:</b> We share payment information with third-party payment processors to process transactions securely.
<br>
<b>Business Partners:</b> We may share data with third-party partners to offer you enhanced services.
<br>
<b>Legal Requirements:</b> We may disclose your information when required by law, or to protect our rights, privacy, safety, or property.
<br>
<h1>4. Your Choices</h1>
<h3>You have the following choices regarding your data:</h3>
<br>

<b>Access and Control:</b> You can access, edit, or delete your personal information through your account settings.
<br>
<b>Marketing Communications:</b> You can opt out of receiving marketing communications from us.
<br>
<h1>5. Security</h1>
We take measures to protect your information, but please be aware that no method of online transmission is completely secure. We strive to maintain data security, but we cannot guarantee the absolute security of your information.
<br>
<h1>6. Changes to this Policy</h1>
We may update this Privacy Policy as our services evolve. We will notify you of significant changes via the app or by other means. You should periodically review this policy to stay informed about our practices.
<br>
<h1>7. Contact Us</h1>
If you have any questions, concerns, or requests regarding your privacy or this Privacy Policy, please contact us at 011-2234490 .
<br>
Thank you for choosing Swift! 
<br>
Your privacy and trust are of utmost importance to us.
<br>
<br>
<b>
Swift Transportation System
<br>
15/2,Thimbirigasyaya,Colombo 7.
<br>
swiftmain@gmail.com
<br>
011-2234490<h3>
</b>



            </p>


         </div>
         <h2>Thank you !</h2>
         <br>
        </div>
    </div>
  
<jsp:include page="footer.jsp"></jsp:include>