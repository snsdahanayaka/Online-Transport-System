<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


	<%
	String id=request.getParameter("id");
	%>
	
	<form action="deleteInq" method="post">
	
	Do you want to remove your account:
	<input readonly type="text" name="id" value="<%=id%>">
	<br>
	<br>
	<input type="submit" name="delete" value="Confirm">
	</form>


</body>
</html>