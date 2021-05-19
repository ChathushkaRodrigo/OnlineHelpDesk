package com.forum;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/forumInsert")
public class forumInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String name = request.getParameter("fname");
		String content =request.getParameter("content");
		String catagory =request.getParameter("fcatagory");
		String createdBy= request.getParameter("fcreatedby");
		
		
		
		boolean istrue;
		
		istrue = forumDBUtil.insertForum(name, content, catagory, createdBy);
		
		if(istrue ==true) {
			
			RequestDispatcher dis = request.getRequestDispatcher("Success.jsp");			
			dis.forward(request, response);
			
			
		}else {
			
			
			RequestDispatcher dis2 =request.getRequestDispatcher("Unsuccess.jsp");
			dis2.forward(request, response);
		}
		
		
		
		
	}

}
