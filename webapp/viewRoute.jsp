<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><%-- required to get the passed details --%>

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
    
  
<div class="booking-table">   
<table class="table-style" >

	<td>routeId</td>
	<td>Diver ID</td>
	<td>province</td>
	<td>district</td>
	<td>city</td>
	<td>timeFrame</td>
	<td>vehicle</td>
	<td>service</td>

	
	
	<td  width="18%" >Operations</td>
	
	<%--using a foreach loop on passed list stored data is extracted and assigned to new variables --%>>
	
<c:forEach var ="route" items="${RouteDetails}">
	<c:set var="routeId" value="${route.routeId}"/>
	<c:set var="driverId" value="${route.driverId}"/>
	<c:set var="province" value="${route.province}"/>
	<c:set var="district" value="${route.district}"/>
	<c:set var="city" value="${route.city}"/>
	<c:set var="timeFrame" value="${route.timeFrame}"/>
	<c:set var="vehicle" value="${route.vehicle}"/>
	<c:set var="service" value="${route.service}"/>
	
	
	
	<%--using  extracted data and sending them to the update form  --%>>
<c:url  value="routeUpdate.jsp" var="update_data">

	<c:param name="routeId" value="${routeId}"/>
	<c:param name="driverId" value="${driverId}"/>
	<c:param name="province" value="${province}"/>
	<c:param name="district" value="${district}"/>
	<c:param name="city" value="${city}"/>
	<c:param name="timeFrame" value="${timeFrame}"/>
		<c:param name="vehicle" value="${vehicle}"/>
		<c:param name="service" value="${service}"/>
		
		

</c:url>

<c:url value="deleteBooking.jsp" var="delete">
<c:param name="id" value="${routeId}"/>
</c:url>

	<%--out put the extracted data in a table --%>>
	<tr>
	
	<td>${route.routeId}</td>
	
	
	
	<td>${route.driverId}</td>
	
	
	
	<td>${route.province}</td>
	
	
	
	<td>${route.district}</td>
	
	
	<td>${route.city}</td>
	
	
	<td>${route.timeFrame}</td>
	

	<td>${route.vehicle}</td>
	

	<td>${route.service}</td>


<td><a href="${update_data}">
<input class="update-btn"  type="button" name="update" value="update your data">
</a>


<form action="delRoute" method="post"  

onsubmit="return confirm('Confirm delete')"

>
<input type="hidden" name="routeId" value="${route.routeId}">
<input class="update-btn" type="submit" name="delete" value="delete your route">
<br>
</form>


</c:forEach>
</table>
</div>
</div>
</div>




</div>
 <jsp:include page="footer.jsp"></jsp:include>