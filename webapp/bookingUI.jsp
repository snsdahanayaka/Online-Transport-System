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
                    
                    <a href="login.jsp" class="sbutton" >Sign In</a>   
                    <% } else{  %>
                    	
                    	
                    	<a href="logOut" class="sbutton" >Log out</a>
                    	
                   <% }%>
                     </div>
            </nav>
        </div>
    </header>
<div class="wrap_ride">
        <div class="form_box">
            <h2>Book your ride</h2>
               <form action="nbook" method="post"><br>
                <div class="input_box">
                    <span class="icon"></span>
                    <input type="text" name="pl" "required>
                    <label >Pick up location</label>
                </div>

                <div class="input_box">
                    <span class="icon"></span>
                    <input type="text" name="dl" " required>
                    <label > Destination location</label>
                </div>
                <div class="input_box">
                    <span class="icon"></span>
                    <input type="text" name="num" pattern="[0-9]{10}" required>
                    <label > Contact number</label>
                </div>
                <br>
                 <div class="form_input_d">
                    <input type="date" id="date"  name="date" required> 
                    <label>Appointment date</label>
                    </div>
                       
               <br>
                    <div class="form_input_d">
                    <input type="time" id="time"  name="time" required>
                    <label>Time</label>
                    <br>
                    </div>

                <br>
                    <div class="form_input_d"> 
                    
                    <select  id="vehicle"  name="vehicle" required> 
                    <option value="car">car</option>
                 	 <option value="bus">bus</option>                 	 
                 	   <option value="van">van</option>
                       <option value="lorry">lorry</option>
                          
                    </select>
                    <label>Select vehicle type</label>
                    </div>
  				<br>
                    <div class="form_input_d"> 
                    
                    <select  id="type"  name="type" required> 
                    <option value="passenger">passenger</option>
                    <option value="cargo">cargo</option>
                
                          
                    </select>
                    <label>Select booking type</label>
                    </div>

               

                <div class="signup">
                    <input type="submit" name="submit" value="Place your booking" class="btn">
                </div>
         

                 
                <div class="signin_msg"><p>Already have an account?  <a href="login.jsp" class="reg_link"> Sign in</a></p></div>
            </form>
        </div>
    </div>

 <jsp:include page="footer.jsp"></jsp:include>