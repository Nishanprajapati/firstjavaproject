package com.rideease.controller.user;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.rideease.model.Customer;
import com.rideease.service.user.CustomerService;

/**
 * Servlet implementation class customerformservlet
 */
@WebServlet(name = "customerformservlet", urlPatterns = {"/customerformservlet"})
@MultipartConfig(maxFileSize = 16177215)
public class customerformservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public customerformservlet() {
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
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String number=request.getParameter("number");
		String address =request.getParameter("address");
		
		InputStream citizenshipInputStream = null;
	    Part citizenshipFilePart = request.getPart("ctz");
	    if (citizenshipFilePart != null) { 
	            // obtains input stream of the upload file
	        citizenshipInputStream = citizenshipFilePart.getInputStream();
	    }
	    InputStream licenseInputStream = null;
        Part licenseFilePart = request.getPart("lic");
        if (licenseFilePart != null) { 
            // obtains input stream of the upload file
        	licenseInputStream = licenseFilePart.getInputStream();
        }
        
        
        Customer customer = new Customer(name,email,number,address,citizenshipInputStream,licenseInputStream);
        CustomerService customerService = new CustomerService();
        String result = customerService.saveCustomer(customer);
        
        if(result.equals("success"))
		{
			request.setAttribute("successMessage","Vehicle has been booked Successfully.please check your email.");
			
		}else {
			request.setAttribute("errorMessage","Something went Wrong");
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
		dispatcher.forward(request, response);
	}

}
