package com.register;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/update")
public class update extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id =request.getParameter("id");
		String oname=request.getParameter("oname");
		String email=request.getParameter("email");
		String pnum=request.getParameter("pnum");
		String uname=request.getParameter("uname");
		String psw=request.getParameter("psw");
		
	
		boolean isTrue;
		isTrue=ownerDBUT.update(id,oname, email, pnum, uname, psw);
		
		if(isTrue==true)
		{
			RequestDispatcher dis=request.getRequestDispatcher("success.jsp");
			dis.forward(request, response);	
					
		}
		else
		{
			RequestDispatcher dis2=request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
		
		
		
		
	}

}
