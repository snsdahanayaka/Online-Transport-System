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
						html,body {
		  					    	background:url("./img/profilebg.jpg");	
		  					        background-size: cover;
								    background-position: center;
								    background-repeat: no-repeat;
								}
								
								
								
						.wrap{
						
						background:#red;
						
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
		                    
		                    <a href="login.jsp" class="sbutton" >Sign In</a>   
		                    <% } else{  %>
		                    	
		                    	
		                    	<a href="logOut" class="sbutton" >Log out</a>
		                    	
		                   <% }%>
		                     </div>
		            </nav>
		        </div>
		    </header>
		
		<br />
		
			
			<div class=wrap>
			 <div class="useracc_sec2">
		        <img src="./img/profile.png" height="300px" width="280px" />
		    </div>
		<c:forEach var ="profile" items="${profileDetails}">
			<c:set var="id" value="${profile.id}"/>
			<c:set var="oname" value="${profile.oname}"/>
			<c:set var="addr" value="${profile.addr}"/>
			<c:set var="pnum" value="${profile.pnum}"/>
			<c:set var="email" value="${profile.email}"/>
			
		<c:url  value="frontUpdate.jsp" var="update_data">
		
			
			
			<c:param name="id" value="${id}"/>
			<c:param name="oname" value="${oname}"/>
			<c:param name="addr" value="${addr}"/>
			<c:param name="pnum" value="${pnum}"/>
			<c:param name="email" value="${email}"/>
			
		
		</c:url>
		
		<c:url value="deleteBooking.jsp" var="delete">
		<c:param name="id" value="${id}"/>
		</c:url>
		
		
		<div class="content_user">
		    <div class="pro2">
		        <nav class="pro3">

            <h2>User Information</h2>
            <br />
            <h4>Name</h4>
            <p>${profile.oname}</p>
            <br />
            <h4>Address</h4>
            <p>${profile.addr}</p>
            <br />
            <h4>Mobile</h4>
            <p>${profile.pnum}</p>
            <br />
            <h4>E-mail</h4>
            <p>${profile.email}</p>
            <br />
     
         
          
          	 
          
          <br> 
				<button class="ped">
				<a href="${update_data}">
			
				<input type="button" name="update" value="update your data">
				</a>
				 </button>
				
				
				
				<form action="deleteProfile" method="post"  
				
				onsubmit="return confirm('Confirm delete')"
				
				>
				<input type="hidden" name="profileId" value="${profile.id}">
				<br>
				<input type="submit" name="delete" value="delete your account">
				<br>
				</form>
				
					</c:forEach>
					<br>
				<div class="pro3">
		                <button class="ped">
		                
		           			<a href="front.jsp">Create Profile</a>
		          		</button>
					
		            </div>
		
		        </nav>
		
		    </div>
		   </div>
		</div>
		</div>

 		<jsp:include page="footer.jsp"></jsp:include>