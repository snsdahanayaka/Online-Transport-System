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
            <h1>Welcome to Swift</h1>
            <p>Revolutionary step in transportation sector</p>
        </div>
    </div>

    <!-- Welcome Section Content -->
    <section class="section">
      <p>
        <center><h1 class="heading">Welcome!</h1></center>
        <br><br>
Passenger transportation services refer to the industry that provides transportation for individuals, usually from one location to another. These services are essential for commuting, traveling, and getting around. Common passenger transportation modes include public transit systems like buses, trams, and subways for scheduled urban and regional travel, taxis offering on-demand door-to-door service, ride-sharing services connecting passengers with private drivers via mobile apps, and high-end limousines often used for special occasions. Shuttle services provide scheduled transportation between specific locations, while ferries transport passengers across water bodies. Air travel via commercial flights covers both domestic and international journeys, while trains offer efficient rail travel for both commuters and long-distance travelers. Cruise ships provide leisure and tourism experiences on water, and bike-sharing and scooter-sharing services offer eco-friendly options for short trips. Car rentals provide flexibility, and charter buses serve groups for school trips and events. Many individuals also rely on personal vehicles, such as cars, motorcycles, and bicycles, and walking serves as the simplest form of pedestrian transportation for short-distance travel within cities and neighborhoods. These diverse modes cater to a wide range of passenger needs based on factors like convenience, cost, and specific travel requirements.Passenger transportation services can vary in terms of cost, speed, convenience, and environmental impact. They play a crucial role in the daily lives of people, providing them with the mobility they need for work, leisure, and essential tasks. The choice of transportation mode depends on individual preferences, distance, and location.

        <br><br>Cargo transportation services involve the movement of goods, products, and materials from one location to another. These services are vital for the global economy, ensuring that products reach consumers, businesses, and markets efficiently. Common cargo transportation modes encompass various methods for efficiently moving goods and materials. Road freight transportation utilizes trucks and vehicles for versatile local and national shipping. Rail freight transportation is known for cost-effective, long-distance haulage, especially for bulk commodities. Maritime freight transportation relies on ships and vessels for global cargo movement, and air freight transportation offers high-speed, time-sensitive shipping. Pipelines are essential for the continuous transport of liquids and gases, like oil and natural gas. Intermodal transportation combines various modes, simplifying cargo transfer. Courier and parcel services cater to smaller shipments, while logistics and freight forwarding companies manage the complete logistics process. Specialized cargo transport handles items such as perishable goods or hazardous materials. Containerization has revolutionized cargo logistics, and last-mile delivery ensures goods reach their final destinations. Bulk transportation specializes in large quantities of materials, like grains and minerals, often transported by rail, road, or ship. Efficient cargo transportation is vital for supply chains, with the chosen mode depending on cargo type, distance, speed, cost, and specific requirements. Cargo transportation services are essential for the global supply chain, enabling the movement of raw materials, finished products, and resources. The choice of transportation mode depends on factors like the type of cargo, distance, speed requirements, cost, and environmental considerations. Efficient cargo transportation is critical for businesses, trade, and economic development.<br><br>  <br><br>  <br><br><p>.</p>
      </p>
    </section>

<!-- Location Content - from google maps -->
<section class="location">
    <div class="section-title">
        <h1 class="h1">Location</h1>
        <h4 class="h4map">Spark Enterprise</h4>
    </div>
    <div class="map"> <!--google maps link-->
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15843.193344432502!2d79.95449056714044!3d6.914698446804928!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae256db1a6771c5%3A0x2c63e344ab9a7536!2sSri%20Lanka%20Institute%20of%20Information%20Technology!5e0!3m2!1sen!2slk!4v1685550835799!5m2!1sen!2slk" width="100%" height="450" style="border:0; border-radius:25px;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
    </div>
</section>





 <jsp:include page="footer.jsp"></jsp:include>