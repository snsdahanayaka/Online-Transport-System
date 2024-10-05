package com.profile;



import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/createProfile")
public class createProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		HttpSession session = request.getSession();
		int user_ID = (int) session.getAttribute("user_ID");
		
	
		String oname=request.getParameter("name");
		String email=request.getParameter("email");
		String pnum=request.getParameter("pnum");
		String addr=request.getParameter("addr");
	
	
		
		

		boolean isTrue;
		isTrue=profileDBUTIL.createProfile(user_ID,oname, email, pnum, addr);
		
		if(isTrue==true)
		{
			response.sendRedirect("showPro");
					
		}
		else
		{
			RequestDispatcher dis2=request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
		
		
	
		
	}

}

