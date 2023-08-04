package com.rideease.dao.user;

import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.rideease.model.Vendor;
import com.rideease.utills.DatabaseConnection;


public class VendorDao {
	Connection con = DatabaseConnection.getConnection();
	public String lendVehicle(Vendor vendor)
	{
		 
		   String result ="success";
		   String sql="insert into vendor_detail(name,email,vehicle_name,vehicle_status,phone_no,current_location,pickup_location,dropoff_location,license_plate_no,vehicle_type,per_day,per_hour,vehicle_image,citizenship_image,insurance_image,vehicle_details) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

		   PreparedStatement ps;
		try {
			ps = con.prepareStatement(sql);
		
		   ps.setString(1,vendor.getName());
		   ps.setString(2,vendor.getEmail());
		   ps.setString(3,vendor.getVehicleName());
		   ps.setString(4,vendor.getVehicleStatus());
		   ps.setString(5,vendor.getPhoneNo());
		   ps.setString(6,vendor.getCurrentLocation());
		   ps.setString(7,vendor.getPickUp());
		   ps.setString(8,vendor.getDropOff());
		   ps.setString(9,vendor.getLicencePlateNo());
		   ps.setString(10,vendor.getVehicleType());
		   ps.setString(11,vendor.getPerDay());
		   ps.setString(12,vendor.getPerHour());
		   ps.setBlob(13,vendor.getVehicleImage());
		   ps.setBlob(14,vendor.getCitizenshipImage());
		   ps.setBlob(15,vendor.getInsuranceImage());
		   ps.setString(16,vendor.getVehicleDetails());
	       ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			result="error";
			
		}
	       
		   return result;
	}
	 public List < Vendor > getAllVendors() {
		   String sql="select * from vendor_detail";
		   List < Vendor > vendors=new ArrayList<>();

		   PreparedStatement ps;
		try {
			ps = con.prepareStatement(sql);
		
			 ResultSet rs = ps.executeQuery();
             while (rs.next()) {
               int id=rs.getInt("id");
               String name= rs.getString("name");
               String email = rs.getString("email");
               String vehicleName=rs.getString("vehicle_name");
               String vehicleStatus=rs.getString("vehicle_status");
               String phoneNo = rs.getString("phone_no");
               String  currentLocation= rs.getString("current_location");
               String  pickupLocation= rs.getString("pickup_location");
               String  dropoffLocation= rs.getString("dropoff_location");
               String  licensePlateNo= rs.getString("license_plate_no");
               String  vehicleType= rs.getString("vehicle_type");
               String perDay = rs.getString("per_day");
               String perHour = rs.getString("per_hour");
               Blob  vehicleImage= rs.getBlob("vehicle_image");
               Blob  citizenshipImage= rs.getBlob("citizenship_image");
               Blob  insuranceImage= rs.getBlob("insurance_image");
               String vehicleDetails=rs.getString("vehicle_details");
               
               
               vendors.add(new Vendor(id,name,email,vehicleName,vehicleStatus,phoneNo,currentLocation,pickupLocation,dropoffLocation,licensePlateNo,vehicleType,perDay,perHour,vehicleImage.getBinaryStream(),citizenshipImage.getBinaryStream(),insuranceImage.getBinaryStream(),vehicleDetails));
           }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
			
		}
	       
		   return vendors;
	 }
	 public  Vendor  getVendor(int vendorId) {
		   String sql="select * from vendor_detail where id=?";
		   Vendor vendor=null;

		   PreparedStatement ps;
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1,vendorId);
			 ResultSet rs = ps.executeQuery();
           while (rs.next()) {
             int id=rs.getInt("id");
             String name= rs.getString("name");
             String email = rs.getString("email");
             String vehicleName=rs.getString("vehicle_name");
             String vehicleStatus=rs.getString("vehicle_status");
             String phoneNo = rs.getString("phone_no");
             String  currentLocation= rs.getString("current_location");
             String  pickupLocation= rs.getString("pickup_location");
             String  dropoffLocation= rs.getString("dropoff_location");
             String  licensePlateNo= rs.getString("license_plate_no");
             String  vehicleType= rs.getString("vehicle_type");
             String perDay = rs.getString("per_day");
             String perHour = rs.getString("per_hour");
             Blob  vehicleImage= rs.getBlob("vehicle_image");
             Blob  citizenshipImage= rs.getBlob("citizenship_image");
             Blob  insuranceImage= rs.getBlob("insurance_image");
             String vehicleDetails=rs.getString("vehicle_details");
             
             vendor = new Vendor(id,name,email,vehicleName,vehicleStatus,phoneNo,currentLocation,pickupLocation,dropoffLocation,licensePlateNo,vehicleType,perDay,perHour,vehicleImage.getBinaryStream(),citizenshipImage.getBinaryStream(),insuranceImage.getBinaryStream(),vehicleDetails);
         }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
			
		}
	       
		   return vendor;
	 }
}
