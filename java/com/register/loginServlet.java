package com.register;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@SuppressWarnings("unused")
@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String username=request.getParameter("uname");
		String password=request.getParameter("psw");
		
		
		try {
		List<owner> ownerDetails =ownerDBUT.validate(username, password);
		request.setAttribute("cusDetails", ownerDetails);
        
    
        if (ownerDetails != null && !ownerDetails.isEmpty()) {
            owner user = ownerDetails.get(0);

            HttpSession session = request.getSession();
            session.setAttribute("user_email", user.getEmail());
            session.setAttribute("user_ID", user.getId());
            session.setAttribute("user_name", user.getUname());
            session.setAttribute("type", user.getType());

            
            
            response.sendRedirect("login.jsp");
    
        } 
        
        
        else {
            // Invalid user, display an error message
            request.setAttribute("error", "Invalid email or password. Please try again.");
            request.getRequestDispatcher("login.jsp").forward(request, response);


		}
		
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
	
		
	}

}
