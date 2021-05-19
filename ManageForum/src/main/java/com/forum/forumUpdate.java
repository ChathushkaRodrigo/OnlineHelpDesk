package com.forum;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/forumUpdate")
public class forumUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
			String id = request.getParameter("forumid");
			String name =request.getParameter("forumName");
			String content =request.getParameter("forumContent");
			String catagory = request.getParameter("forumCatagory");
			String createdby =request.getParameter("createdby");
			
			
	
			
			boolean isTrue;
			
			isTrue = forumDBUtil.updateForum(id, name, content, catagory, createdby);
			
			
			
			
			if( isTrue == true) {
				
				RequestDispatcher dis =request.getRequestDispatcher("Success.jsp");
				dis.forward(request, response);
				
				
			
			}
			else {
				
				RequestDispatcher dis2 =request.getRequestDispatcher("Unsuccess.jsp");
				dis2.forward(request, response);
				
				
			}
			
			
			
			
			
			
	}

}
