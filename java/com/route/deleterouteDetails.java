package com.route;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class deleterouteDetails
 */
@WebServlet("/deleterouteDetails")
public class deleterouteDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


	String routeID=request.getParameter("routeId");//get the routeId of the required database entry
	
	int routeId=Integer.parseInt(routeID);//in order to convert the string to int 
		

		boolean isTrue;
		isTrue=routeDb.deleteRoute(routeId);//calls the deleteRoute method in routeDb and return the boolean value
		
		if(isTrue==true)
		{
			

			response.sendRedirect("shRoute");//redirect to the showRoute.jsp through the showRoute servlet
					
		}
		else
		{
			RequestDispatcher dis2=request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
		
	}

}
