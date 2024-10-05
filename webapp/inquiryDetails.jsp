<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

	<html lang="en">
	<head>
		
	<meta charset="ISO-8859-1">
	<title>Inquiry Details</title>
	
		
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
		
		
		.wrap{
		height:800px;
		width:500px;
		
		
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
	              
	              <img src="img/logo.png" style="width:110px;" class="logo" alt="swift">
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

<body>
<br>
<br>
<h2>Current Inquiries</h2>
<div class="wrap">


<table>

<c:forEach var="inquiry" items="${inquiryList}">
		        	<c:set var="id" value="${inquiry.inqID}"/>
		        	<c:set var="sub" value="${inquiry.subject}"/>
		        	<c:set var="msg" value="${inquiry.message}"/>
		        	
		        	<c:url value="updateInquiry.jsp" var="inqupdate">
		        	<c:param name="iid" value="${id }"></c:param>
		        	<c:param name="isub" value="${sub }"></c:param>
		        	<c:param name="imsg" value="${msg }"></c:param>
		        	</c:url>
		        	
		        	<tr>
		        		<td>Inquiry ID:</td>
		        		<td>${inquiry.inqID}</td>
		        	
		        	</tr>
		        	
		        	<tr>
		        		<td>Subject:</td>
		        		<td>${inquiry.subject}</td>
		        	
		        	</tr>
		        	<tr><td>Details:</td></tr>
		        	<tr>
		        		<td><textarea id="message" name="message" rows="4" cols="50">${inquiry.message}
					</textarea><br></td>
		        	
		        	
		        	</tr>
		        	
		        	<tr>
		        	<td>
		        	<br>
		        	<br>
		        	<a href="${inqupdate}">
		    		<input type = "button" name="update" value="Update my inquiry"></a><br>
		    		
		    		<c:url value="deleteInquiry.jsp" var="inqdelete">
		    		
		    		<c:param name="iid" value="${id }"></c:param>
		        	<c:param name="isub" value="${sub }"></c:param>
		        	<c:param name="imsg" value="${msg }"></c:param>
		    		
		    		</c:url>
		    		
		    		<br>
		    		
		    		<a href="${inqdelete}">
		    		<input type="button" name="delete" value="Delete my inquiry"></a>
		    		
		    		
		    		</td>
		    		
		        	</tr>
		        	
		        
		        	
		        	
		        
		        	
		        	
		        	
		         
		    		</c:forEach>
		    			</table>
		    			</div>>

 <jsp:include page="footer.jsp"></jsp:include>