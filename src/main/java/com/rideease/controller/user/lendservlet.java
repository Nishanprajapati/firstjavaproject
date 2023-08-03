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

import com.rideease.model.Vendor;
import com.rideease.service.user.VendorService;

/**
 * Servlet implementation class lendservlet
 */
//@WebServlet("/lendservlet")
@WebServlet(name = "lendservlet", urlPatterns = {"/lendservlet"})
@MultipartConfig(maxFileSize = 16177215)
public class lendservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public lendservlet() {
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
		String phoneno=request.getParameter("p_number");
		String currentlocation=request.getParameter("c_location");
		String pickup=request.getParameter("p_location");
		String dropoff=request.getParameter("d_location");
		String licenseplateno=request.getParameter("licence_plate_no");
		String vtype=request.getParameter("v_type");
		String perday=request.getParameter("p_day");
		String perhour=request.getParameter("p_hour");
		System.out.println("name:"+name);
		

		  //get image
        InputStream vehicleInputStream = null;
        Part vehicleFilePart = request.getPart("vehicle_image");
        if (vehicleFilePart != null) { 
            // obtains input stream of the upload file
        	vehicleInputStream = vehicleFilePart.getInputStream();
        }
        InputStream citizenshipInputStream = null;
        Part citizenshipFilePart = request.getPart("citizenship_image");
        if (citizenshipFilePart != null) { 
            // obtains input stream of the upload file
        	citizenshipInputStream = citizenshipFilePart.getInputStream();
        }
        InputStream insuranceInputStream = null;
        Part insuranceFilePart = request.getPart("insurance_image");
        if (insuranceFilePart != null) { 
            // obtains input stream of the upload file
        	insuranceInputStream = insuranceFilePart.getInputStream();
        }
//		Part vehicleimage=request.getPart("v_image");
//		InputStream v_image=vehicleimage.getInputStream();
//		byte[] v_image_bytes=v_image.readAllBytes();
//		Part citizenshipimage=request.getPart("citizenship_image");
//		InputStream c_image=citizenshipimage.getInputStream();
//		byte[] c_image_bytes=c_image.readAllBytes();
//		Part insuranceimage=request.getPart("insurance_image");
//		InputStream i_image=insuranceimage.getInputStream();
//		byte[] i_image_bytes=i_image.readAllBytes();
		
		
		Vendor vendor=new Vendor(name,email,phoneno,currentlocation,pickup,dropoff,licenseplateno,vtype,perday,perhour,vehicleInputStream,citizenshipInputStream,insuranceInputStream);
		VendorService vendorService=new VendorService();
		String result = vendorService.saveVendor(vendor);
		
		
		//dispachter
		
		// key success mess=""
		//error message 
		if(result.equals("success"))
		{
			request.setAttribute("successMessage","Vehicle Added Successfully");
			
		}else {
			request.setAttribute("errorMessage","Something went Wrong");
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
		dispatcher.forward(request, response);
		
		
	}

}
