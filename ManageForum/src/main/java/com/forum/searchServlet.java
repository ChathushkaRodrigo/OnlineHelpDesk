package com.forum;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/searchServlet")
public class searchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		String forumname = request.getParameter("forumname");

		String forumcatagory =request.getParameter("forumcatagory");
		
		
		
		
		
		
		
		
		
		
		
		try {
			List<Forum> forumDetails =forumDBUtil.validate(forumname,forumcatagory);
			request.setAttribute("forumDetails", forumDetails);
			
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		
		

		RequestDispatcher dis = request.getRequestDispatcher("forumDetails.jsp");
		dis.forward(request, response);
		
	
		
	}

}
