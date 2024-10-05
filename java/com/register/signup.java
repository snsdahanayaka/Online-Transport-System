package com.register;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/signup")
public class signup extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String oname=request.getParameter("oname");
		String email=request.getParameter("email");
		String pnum=request.getParameter("pnum");
		String uname=request.getParameter("uname");
		String psw=request.getParameter("psw");
		String repsw=request.getParameter("repsw");
		String type=request.getParameter("type");
		
	
		
		
		if(psw.equals(repsw)) {
		boolean isTrue;
		isTrue=ownerDBUT.signup(oname, email, pnum, uname, psw,type);
		
		if(isTrue==true)
		{
			RequestDispatcher dis=request.getRequestDispatcher("login.jsp");
			dis.forward(request, response);	
					
		}
		else
		{
			RequestDispatcher dis2=request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
		}
		
		else
		{
		     // Invalid user, display an error message
            request.setAttribute("error", "Passwords does not match");
            request.getRequestDispatcher("signup.jsp").forward(request, response);
			
		}
		
	}

}
