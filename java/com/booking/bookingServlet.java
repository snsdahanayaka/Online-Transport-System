package com.booking;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class bookingServlet
 */
@WebServlet("/bookingServlet")
public class bookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		HttpSession session = request.getSession();
		int cusId =  (int) session.getAttribute("user_ID");
		
		
		String pl=request.getParameter("pl");
		String dl=request.getParameter("dl");
		String num=request.getParameter("num");
		String date=request.getParameter("date");
		String time=request.getParameter("time");
		String vehicle=request.getParameter("vehicle");
		
		String driverId="Not assigned";
		String cost="not calculated";
		String type=request.getParameter("type");
		
		
		boolean isTrue;
		isTrue=bookDB.book(pl,dl,num,date,time,vehicle,cusId,driverId,cost,type);
		
		if(isTrue==true)
		{
			
			RequestDispatcher dis=request.getRequestDispatcher("mybookings");
			dis.forward(request, response);	
					
		}
		else
		{
			RequestDispatcher dis2=request.getRequestDispatcher("bookingUI.jsp");
			dis2.forward(request, response);
		}
		
	
	}

}
