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

<div class="bookings">

<div class="subbook">

    <div class="containert">
    
    <h1><%= session.getAttribute("user_name")%></h1>
<div class="booking-table">   
<table class="table-style" >

	<td>ID</td>
	<td>Pickup Location</td>
	<td>Destination Location</td>
	<td>phone num</td>
	<td>Date</td>
	<td>Time</td>
	<td>Vehicle</td>
	<td>Cus Id</td>
	<td>Diver ID</td>
	<td>cost</td>
	<td width="18%">Operations</td>
	
<c:forEach var ="book" items="${bookingDetails}">
	<c:set var="id" value="${book.id}"/>
	<c:set var="pl" value="${book.pl}"/>
	<c:set var="dl" value="${book.dl}"/>
	<c:set var="num" value="${book.num}"/>
	<c:set var="date" value="${book.date}"/>
	<c:set var="time" value="${book.time}"/>
	<c:set var="vehicle" value="${book.vehicle}"/>
	<c:set var="cusId" value="${book.cusId}"/>
	<c:set var="driverId" value="${book.driverId}"/>
	<c:set var="cost" value="${book.cost}"/>
<c:url  value="updatebooking.jsp" var="update_data">

	<c:param name="id" value="${id}"/>
	<c:param name="pl" value="${pl}"/>
	<c:param name="dl" value="${dl}"/>
	<c:param name="num" value="${num}"/>
	<c:param name="date" value="${date}"/>
	<c:param name="time" value="${time}"/>
	<c:param name="vehicle" value="${vehicle}"/>
	<c:param name="cusId" value="${cusId}"/>
	<c:param name="driverId" value="${driverId}"/>
	<c:param name="cost" value="${cost}"/>
	
	

</c:url>

<c:url value="deleteBooking.jsp" var="delete">
<c:param name="id" value="${id}"/>
</c:url>

	
	<tr>
	
	<td>${book.id}</td>
	
	
	
	<td>${book.pl}</td>
	
	
	
	<td>${book.dl}</td>
	
	
	
	<td>${book.num}</td>
	
	
	<td>${book.date}</td>
	
	
	<td>${book.time}</td>
	

	<td>${book.vehicle}</td>
	

	<td>${book.cusId}</td>


	<td>${book.driverId}</td>
	
	
	<td>${book.cost}</td>
	


<td><a href="${update_data}">
<input class="update-btn" type="button" name="update" value="update booking">
</a>




<form action="dbooking" method="post"  

onsubmit="return confirm('Confirm delete')"

>
<input type="hidden" name="bookId" value="${book.id}">
<input class="update-btn"  type="submit" name="delete" value="delete booking">
<br>
</form>
</td></tr>

</c:forEach>
</table>
</div>
</div>
</div>




</div>

 <jsp:include page="footer.jsp"></jsp:include>
