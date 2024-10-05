package com.route;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class routeServlet
 */
@WebServlet("/routeServlet")
public class routeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		//get user_ID from session and assign it to the driverID(initialized in login)
		HttpSession session = request.getSession();
		int driverID =  (int) session.getAttribute("user_ID");	
		 
		 
		 
		 // Acquire form values from jsp
		 String province=request.getParameter("province");
		 String district=request.getParameter("district");
		 String city=request.getParameter("city");
		 String timeFrame=request.getParameter("timeframe");
		 String vehicle=request.getParameter("vehicle");
		 String service=request.getParameter("service");
		
	
		
	
		
		//isTrue is used to check errors in sql query
		boolean isTrue;
		//calling data insertion method in routeDb
		isTrue=routeDb.insertRouteDetails(driverID,province,district,city,timeFrame,vehicle,service);
		
		if(isTrue==true)
		{
			
			response.sendRedirect("shRoute");//redirects to the showRoute Servlet
				
					
		}
		else
		{
			RequestDispatcher dis2=request.getRequestDispatcher("routeUI.jsp");//redirects to the routeUI
			dis2.forward(request, response);
		}
		
	
	}

}
