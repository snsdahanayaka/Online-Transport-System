package com.profile;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class deleteProfileDetails
 */
@WebServlet("/deleteProfile")
public class deleteProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		
		String id=request.getParameter("profileId");//get the id of the required database entry
		int user_ID=Integer.parseInt(id);//in order to convert the string to int 

		boolean isTrue;
		isTrue=profileDBUTIL.deleteProfile(user_ID);//calls the deleteprofile method in profileDb and return the boolean value
		
		if(isTrue==true)
		{
			RequestDispatcher dis=request.getRequestDispatcher("createprofile1.jsp");//navigate to createprofile.jsp
			dis.forward(request, response);	
					
		}
		else
		{
			RequestDispatcher dis2=request.getRequestDispatcher("unsuccess.jsp");//navigate
			dis2.forward(request, response);
		}
		
		
	}

}
