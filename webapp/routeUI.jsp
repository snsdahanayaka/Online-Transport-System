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
<div class="wrap_ride">
        <div class="form_box">
            <h2>Add new Route</h2>
               <form action="newRoute" method="post"><br>
               
               
               
               
                <div class="input_box">
                    <span class="icon"></span>
                    <input type="text" name="province"  required><%--front end validation --%>>
                    <label >Province</label>
                </div>

                <div class="input_box">
                    <span class="icon"></span>
                    <input type="text" name="district"  required>
                    <label >District</label>
                </div>
                <div class="input_box">
                    <span class="icon"></span>
                    <input type="text" name="city"  required>
                    <label >City</label>
                </div>
                <br>
                 <div class="form_input_d">
                    <input type="text" id="timeframe"  name="timeframe" required> 
                    <label>Available Time frame</label>
                    </div>
                      

                <br>
                    <div class="form_input_d"> 
                     <br>
                    <select  id="vehicle"  name="vehicle" required> 
                    <option value="car">car</option>
                    <option value="van">van</option>
                       <option value="bus">bus</option>
                           <option value="truck">Truck</option>
                          
                    </select>
                     <br>
                      <label>Select vehicle</label>
                    </div>
                    <div class="form_input_d"> 
                     <br>
                    <select  id="service"  name="service" required> 
                    <option value="passenger">passenger</option>
                    <option value="cargo">cargo</option>
                                    
                    </select>
                    <label>Select service type</label>
                    </div>

               

                <div class="signup">
                    <input type="submit" name="submit" value="Add Routes" class="btn">
                </div>
         

             
            </form>
        </div>
    </div>

 <jsp:include page="footer.jsp"></jsp:include>