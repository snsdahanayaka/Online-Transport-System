<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

	<html lang="en">
	<head>
	
	
			<style>
		textarea {
  resize: none;
}
		.button {
		  border: none;
		  color: white;
		  width:200px;
		  padding: 16px 32px;
		  text-align: center;
		  text-decoration: none;
		  display: inline-block;
		  font-size: 16px;
		  margin: auto;
		  transition-duration: 0.4s;
		  cursor: pointer;
		}
		
		.button1 {
		  background-color: white; 
		  color: black; 
		  border: 2px solid #4CAF50;
		}
		
		.button1:hover {
		  background-color: #4CAF50;
		  color: white;
		}
		
		</style>
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

	<%
	
	String id = request.getParameter("iid");
	String subject = request.getParameter("isub");
	String message = request.getParameter("imsg");
	
	%>
	<div class="wrap">
	<form action="deleteInq" method="post">
  
  			Inquiry Id:<br><input type = "text" name ="inqId" value="<%= id %>" readonly><br>
    
    		Subject:<br><input type = "text" name ="subject" value="<%= subject%>" readonly><br>
    		
    		<label for="message">Inquiry Message:</label><br>
    		
			<textarea id="message" name="message"   rows="4" cols="50" readonly><%= message%>
			</textarea><br>
			<br>
			<input type = "submit" name= "submit" value="Delete my Inquiry"> <br>
			
			
    		
    </form>
</div>
	<jsp:include page="footer.jsp"></jsp:include>