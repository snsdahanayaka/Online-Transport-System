package com.booking;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class updatebooking
 */
@WebServlet("/updatebooking")
public class updatebooking extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String id=request.getParameter("id");
		String pl=request.getParameter("pl");
		String dl=request.getParameter("dl");
		String num=request.getParameter("num");
		String date=request.getParameter("date");
		String time=request.getParameter("time");
		String vehicle=request.getParameter("vehicle");
	    String cost= request.getParameter("cost");
		String type=request.getParameter("type");
		
		
		boolean isTrue;
		
		
		isTrue=bookDB.updatebook(id,pl,dl,num,date,time,vehicle,cost,type);
		
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
