<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
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
	<%
		String id=request.getParameter("id");
		String pl=request.getParameter("pl");
		String dl=request.getParameter("dl");
		String num=request.getParameter("num");
		String date=request.getParameter("date");
		String time=request.getParameter("time");
		String vehicle=request.getParameter("vehicle");
		String cusId=request.getParameter("cusId");
		String driverId=request.getParameter("driverId");
		String cost=request.getParameter("cost");
		
		%>

    <header class="header">
        <div class="hcontainer">
            <nav class="navbar">
              
             
                <ul class="nav-links">
<li><a href="index.jsp" >Home</a></li>
<li class="dropdown">
    <a href="vet.jsp" class="dropbtn">Services</a>
    <div class="dropdown-content">
        <a href="vet.jsp">Veterinary</a>
        <a href="groomer.jsp">Grooming</a>
    </div>
</li>
<li class="dropdown">
    <a href="products.jsp" class="dropbtn">Products</a>
    <div class="dropdown-content">
        <a href="products.jsp">Foods</a>
        <a href="products.jsp">Medicine</a>
        <a href="products.jsp">Accessories</a>
        <a href="products.jsp">Toys</a>
    </div>
</li>
<li><a href="mybookings">My Bookings</a></li>
<li><a href="aboutus.jsp">About Us</a></li>
<li><a href="contactus.jsp">Contact</a></li>
</ul>
<div class="nav-buttons">
                    <a href="signup.jsp" class="sbutton" style="background:#800080; color:black;">Sign Up</a><a href="signin.jsp" class="sbutton" >Sign In</a>                </div>
            </nav>
        </div>
    </header>

<div class="wrap_ride">
        <div class="form_box">
            <h2>Book your ride</h2>
               <form action="upBookings" method="post"><br>
                 <div class="input_box">
                    <span class="icon"></span>
                    <input type="hidden" name="id" value="<%=id%>" >
                   
                </div>
               
                <div class="input_box">
                    <span class="icon"></span>
                    <input type="text" name="pl" value="<%=pl%>" required>
                    <label >Pick up location</label>
                </div>

                <div class="input_box">
                    <span class="icon"></span>
                    <input type="text" name="dl" value="<%=dl%>" required>
                    <label > Destination location</label>
                </div>
                <div class="input_box">
                    <span class="icon"></span>
                    <input type="text" name="num" value="<%=num%>" required>
                    <label > Contact number</label>
                </div>
                <br>
                 <div class="form_input_d">
                    <input type="date" id="date"  name="date" value="<%=date%>" required> 
                    <label>Appointment date</label>
                    </div>
                       
               <br>
                    <div class="form_input_d">
                    <input type="time" id="time"  name="time" value="<%=time%>" required>
                    <label>Time</label>
                    <br>
                    </div>

                    <div class="form_input_d"> 
                    
                    <select  id="vehicle"  name="vehicle" required> 
                    <option value="car">car</option>
                    <option value="van">van</option>
                      <option value="bus">bus</option>
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
                    <input type="submit" name="submit" value="Update your booking" class="btn">
                </div>
         

                 
                <div class="signin_msg"><p>Already have an account?  <a href="login.jsp" class="reg_link"> Sign in</a></p></div>
            </form>
        </div>
    </div>

<footer class="footer">
        <div class="container">
            <div class="row">
                <div class="footer-col">
                    <h4>Company</h4>
                    <ul>
                        <li><a href="AboutUs.jsp">About Us</a></li>
                        <li><a href="privacy.jsp">Privacy Policies</a></li>
                        <li><a href="services.jsp">Our Services</a></li>
                        <li><a href="blog.jsp">Blog</a></li>
                    </ul>
                </div>               
                <div class="footer-col">
                    <h4>Get Help</h4>
                    <ul>
                        <li><a href="ContactUs.jsp">Contact</a></li>
                        <li><a href="#">FAQ</a></li>
                        <li><a href="#">Live Chat</a></li>
                        <li><a href="payment.jsp">Shipping</a></li>
                        <li><a href="products.jsp">Returns</a></li>
                    </ul>
                </div>               
 
                <div class="footer-col">
                    <h4>Payment</h4>
                    <div class="payment-links">
                        <a href="#"><i class="fab fa-cc-visa"></i></a>
                        <a href="#"><i class="fab fa-cc-mastercard"></i></a>
                        <a href="#"><i class="fab fa-cc-amex"></i></a>
                        <a href="#"><i class="fab fa-cc-paypal"></i></a>
                    </div>
                </div>
                <div class="footer-col">
                    <h4>follow us</h4>
                    <div class="social-links">
                        <a href="#"><i class="fab fa-facebook-f"></i></a>
                        <a href="#"><i class="fab fa-instagram"></i></a>
                        <a href="#"><i class="fab fa-linkedin-in"></i></a>
                        <a href="#"><i class="fab fa-youtube"></i></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="copyright"><p>© Copyright 2023 - Swift Pvt. Ltd.<br></div>
    </footer>
</body>
</html>