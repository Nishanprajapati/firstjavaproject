package com.rideease.controller.user;


import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.rideease.model.User;
import com.rideease.service.user.UserService;


/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class registerservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public registerservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ufname=request.getParameter("fname");
		String ulname=request.getParameter("lname");
		String uname=request.getParameter("username");
		String password=request.getParameter("password");
		String cpassword=request.getParameter("confirm_password");
		
		String result=null;
		
		if(password.equals(cpassword)) {
			User user = new User(ufname,ulname,uname,password,cpassword);
		
			UserService userService = new UserService();
		
			result = userService.saveUser(user);
		
		}else {
			result="error";
			
		}
		
		
		
		if(result.equals("success"))
		{
			request.setAttribute("registered","Data Entered Successfully.");
			RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
			dispatcher.forward(request, response);
			
			
		}else {
			request.setAttribute("registerFailed","password and confirm password must be same.");
			RequestDispatcher dispatcher = request.getRequestDispatcher("signup.jsp");
			dispatcher.forward(request, response);
			
		}
		//dispachter
		
		// key success mess=""
		//error message 
		
		
		
	}

}
