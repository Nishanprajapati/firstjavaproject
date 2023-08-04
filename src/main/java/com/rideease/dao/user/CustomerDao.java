package com.rideease.dao.user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.rideease.model.Customer;
import com.rideease.utills.DatabaseConnection;

public class CustomerDao {
	Connection con = DatabaseConnection.getConnection();
	public String bookVehicle(Customer customer)
	{
		 
		   String result ="success";
		   String sql="insert into customer_detail(name,email,number,address,citizenship_photo,license_photo) values(?,?,?,?,?,?)";

		   PreparedStatement ps;
		try {
			ps = con.prepareStatement(sql);
		
		   ps.setString(1,customer.getName());
		   ps.setString(2,customer.getEmail());
		   ps.setString(3,customer.getNumber());
		   ps.setString(4,customer.getAddress());
		   
		   ps.setBlob(5,customer.getCitizenshipPhoto());
		   ps.setBlob(6,customer.getCitizenshipPhoto());
		   
	       ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			result="error";
			
		}
	       
		   return result;
	}
}
