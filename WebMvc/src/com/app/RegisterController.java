package com.app;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class RegisterController implements Controller {
	private RegEnter insert;
	public void setInsert(RegEnter insert)
	{
		this.insert = insert;
	}
	
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, 
			HttpServletResponse response) throws Exception {
		String FirstName = request.getParameter("FirstName");
		String LastName = request.getParameter("LastName");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String Phone = request.getParameter("Phone");
		String Email = request.getParameter("Email");
	    int result = insert.insertUser(FirstName,LastName,username,password,Phone,Email);
	RequestDispatcher dispatcher;
	
	 

	if(result == 0) {
	dispatcher = request.getRequestDispatcher("Register.jsp");                
	dispatcher.forward(request,response);
	}
	else
	{
		request.setAttribute("message","Registered Successfully");
		dispatcher = request.getRequestDispatcher("Login.jsp");
		dispatcher.forward(request,response);
	}
	return null;
		
		
	 }
	}
	
