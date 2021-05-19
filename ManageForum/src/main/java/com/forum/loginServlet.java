package com.forum;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		
		
		String userEmail = request.getParameter("email");
		String password = request.getParameter("pass");
		
		boolean isTrue;
		
		isTrue =lecturerDBUtil.validate(userEmail, password);
		
		if(isTrue ==true) {
			
			RequestDispatcher dis = request.getRequestDispatcher("forumInsert.jsp");
			dis.forward(request, response);
			
			
		}else {
			
			RequestDispatcher dis2  =request.getRequestDispatcher("Unsuccess.jsp");
			dis2.forward(request, response);
				
		}
		
		
		
	}

}
