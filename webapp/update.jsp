<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>update</title>
</head>
<body>
   
		<%
		String id=request.getParameter("id");
		String name=request.getParameter("oname");
		String email=request.getParameter("email");
		String pnum=request.getParameter("pnum");
		String uname=request.getParameter("username");
		String password=request.getParameter("pass");
		
		%>







<form action="upd" method="post" ><br><br>
ID:
<input readonly type="text" name="id" value="<%=id%>"><br><br>
Name:
<input type="text" name="oname" value="<%=name%>"><br><br>
Email:
<input type="email" name="email" value="<%=email%>"><br><br>
Contact number:
<input type="text" name="pnum" value="<%=pnum%>"><br><br>
Username:
<input type="text" name="uname" value="<%=uname%>"><br><br>
Password:
<input type="text" name="psw" value="<%=password%>"><br><br>
<br>
<br>
<input type="submit" name="submit" value="Update"></form>
<br>
<br>


</body>
</html>