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
	    	    <link rel="stylesheet" href="css/home.css">
	   
	    <link rel="stylesheet" type="text/css "href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
		<style>
				* {
				  box-sizing: border-box;
				}
				
				.flex-container {
					width=100vw;
					height=800px;
				  display: flex;
				  flex-direction: column;
				  font-size: 30px;
				  text-align: center;
				  background:red;
				}
				
			html,body {
		  					    	background:url("./img/map.jpg");	
		  					        background-size: cover;
								    background-position: center;
								    background-repeat: no-repeat;
								}
								
				
				.flex_0 {
				width=100%;
					height=800px;
				  display: flex;
				  flex-direction:row;
				  background-color: #f1f1f1;
				  padding: 10px;
				  flex: 50%;
				}
				
				.flex_1 {
				  background-color: dodgerblue;
				   <img src="./img/logo.png" style="width:110px;" class="logo" alt="swift">
	      <ul class="nav-links">
				  padding: 10px;
				  flex: 30%;
				}
				.flex_2 {
				  background-color: red;
				  padding: 10px;
				  flex: 70%;
				}
				/* Responsive layout - makes a one column-layout instead of two-column layout */
				@media (max-width: 800px) {
				  .flex-container {
				    flex-direction: column;
				  }
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
	   			 <a href="passenger.jsp" class="dropbtn">Services</a>
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






<body>


<!--Index Content-->
    <div class = "banner-index">
        <div class="content">
            <h1>Welcome to Swift Passenger service</h1>
            <p>Safe and Secure way of travel</p>
        </div>
    </div>

    <!-- Welcome Section Content -->
    <section class="section">
      <p>
        <center><h1 class="heading">Welcome to our passenger service</h1></center>
        <br><br>

        <br><br>
Passenger transportation services refer to the industry that provides transportation for individuals, usually from one location to another. These services are essential for commuting, traveling, and getting around. Common passenger transportation modes include public transit systems like buses, trams, and subways for scheduled urban and regional travel, taxis offering on-demand door-to-door service, ride-sharing services connecting passengers with private drivers via mobile apps, and high-end limousines often used for special occasions. Shuttle services provide scheduled transportation between specific locations, while ferries transport passengers across water bodies. Air travel via commercial flights covers both domestic and international journeys, while trains offer efficient rail travel for both commuters and long-distance travelers. Cruise ships provide leisure and tourism experiences on water, and bike-sharing and scooter-sharing services offer eco-friendly options for short trips. Car rentals provide flexibility, and charter buses serve groups for school trips and events. Many individuals also rely on personal vehicles, such as cars, motorcycles, and bicycles, and walking serves as the simplest form of pedestrian transportation for short-distance travel within cities and neighborhoods. These diverse modes cater to a wide range of passenger needs based on factors like convenience, cost, and specific travel requirements.Passenger transportation services can vary in terms of cost, speed, convenience, and environmental impact. They play a crucial role in the daily lives of people, providing them with the mobility they need for work, leisure, and essential tasks. The choice of transportation mode depends on individual preferences, distance, and location.
        <br><br>  <br><br>  <br><br><p>.</p>
      </p>
    </section>







 <jsp:include page="footer.jsp"></jsp:include>