package com.profile;



import java.io.IOException;
import java.util.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class showProfile
 */
@WebServlet("/showProfile")
public class showProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  
		
		HttpSession session = request.getSession();
		int cusId =  (int) session.getAttribute("user_ID");
	
		
		
		try {
		List<profile>  profileDetails =profileDBUTIL.showProfile(cusId);
		request.setAttribute("profileDetails", profileDetails);
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("createprofile1.jsp");
		
		dis.forward(request, response);
	}


}
