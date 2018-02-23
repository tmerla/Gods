package com.app;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class LoginController implements Controller {
	private LoginAction action;
	public void setAction(LoginAction action)
	{
		this.action = action;
	}
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, 
			HttpServletResponse response) throws Exception {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
	    String result = action.verifyUser(username,password);
	   

		RequestDispatcher dispatcher;
		
		if(result == "Success") {
		dispatcher = request.getRequestDispatcher("Success.jsp");
		request.setAttribute("Username", username);
		dispatcher.forward(request,response);
		}
		else
		{
			request.setAttribute("message","Username or Password is incorrect \n Please try again");
			dispatcher = request.getRequestDispatcher("Login.jsp");
			dispatcher.forward(request,response);
		}
		return null;
	}
	}
	
	