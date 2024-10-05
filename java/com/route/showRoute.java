package com.route;

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
 * Servlet implementation class showRoute
 */
@WebServlet("/showRoute")
public class showRoute extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  
		
		HttpSession session = request.getSession();
		int driverId =  (int) session.getAttribute("user_ID");//get the current user's  id
	
		
		
		try {
		List<routeInt> RouteDetails =routeDb.getRouteDetails(driverId);//get the route details as a List and save it inside the List object
		request.setAttribute("RouteDetails", RouteDetails);//sends the data to the jsp page
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("viewRoute.jsp");//redirects to the viewRoute page with the obtained details
		
		dis.forward(request, response);
	}


}
