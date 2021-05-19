package com.forum;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/forumDelete")
public class forumDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		
		
		String id = request.getParameter("forumid");
		
		
		boolean isTrue;
		
		isTrue=forumDBUtil.deleteForum(id);
		

		
		if(isTrue == true ) {
			
			
			RequestDispatcher dis = request.getRequestDispatcher("forumInsert.jsp");
			dis.forward(request, response);
			
		}
		
		else {
			List<Forum> forumDetails = forumDBUtil.getForumDetails(id);
			request.setAttribute("forumDetails", forumDetails);
			
			RequestDispatcher dis2  = request.getRequestDispatcher("forumDetails.jsp");
			dis2.forward(request, response);
			
		}
		
		
		
		
		
	}

}
