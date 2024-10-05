package com.route;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class updateRoute
 */
@WebServlet("/updateRoute")
public class updateRoute extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		 int routeId = Integer.parseInt(request.getParameter("routeId")) ;				 
		 String province=request.getParameter("province");
		 String district=request.getParameter("district");
		 String city=request.getParameter("city");
		 String timeFrame=request.getParameter("timeframe");
		 String vehicle=request.getParameter("vehicle");
		 String service=request.getParameter("service");
		
		
		
		boolean isTrue;
		
		//calling data update method in routeDb
		isTrue=routeDb.updateRoute(routeId,province,district,city,timeFrame,vehicle,service);
		
		if(isTrue==true)
		{
			
			response.sendRedirect("showRoute");
					
		}
		else
		{
			RequestDispatcher dis2=request.getRequestDispatcher("routeUI.jsp");
			dis2.forward(request, response);
		}
	}

}
