package com.rideease.controller.user;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.OutputStream;

import com.rideease.model.Vendor;
import com.rideease.service.user.VendorService;

/**
 * Servlet implementation class VendorImage
 */
@WebServlet("/VendorImage")
public class VendorImage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VendorImage() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int productId=Integer.parseInt(request.getParameter("vendor_id"));
		VendorService vendorservice=new VendorService();
		Vendor vendor=vendorservice.getVendorById(productId);
		
		byte[] byteArray = vendor.getVehicleImage().readAllBytes();
		 response.setContentType("image/gif");
         OutputStream os = response.getOutputStream();
         os.write(byteArray);
         os.flush();
         os.close();
		
		}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
