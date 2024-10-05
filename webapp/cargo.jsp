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
		  					    	background:url("./img/rou.jpg");	
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
Cargo transportation services involve the movement of goods, products, and materials from one location to another. These services are vital for the global economy, ensuring that products reach consumers, businesses, and markets efficiently. Common cargo transportation modes encompass various methods for efficiently moving goods and materials. Road freight transportation utilizes trucks and vehicles for versatile local and national shipping. Rail freight transportation is known for cost-effective, long-distance haulage, especially for bulk commodities. Maritime freight transportation relies on ships and vessels for global cargo movement, and air freight transportation offers high-speed, time-sensitive shipping. Pipelines are essential for the continuous transport of liquids and gases, like oil and natural gas. Intermodal transportation combines various modes, simplifying cargo transfer. Courier and parcel services cater to smaller shipments, while logistics and freight forwarding companies manage the complete logistics process. Specialized cargo transport handles items such as perishable goods or hazardous materials. Containerization has revolutionized cargo logistics, and last-mile delivery ensures goods reach their final destinations. Bulk transportation specializes in large quantities of materials, like grains and minerals, often transported by rail, road, or ship. Efficient cargo transportation is vital for supply chains, with the chosen mode depending on cargo type, distance, speed, cost, and specific requirements. Cargo transportation services are essential for the global supply chain, enabling the movement of raw materials, finished products, and resources. The choice of transportation mode depends on factors like the type of cargo, distance, speed requirements, cost, and environmental considerations. Efficient cargo transportation is critical for businesses, trade, and economic development.        <br><br>  <br><br>  <br><br><p>.</p>
      </p>
    </section>







 <jsp:include page="footer.jsp"></jsp:include>