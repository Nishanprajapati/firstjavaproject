package com.rideease.service.user;

import java.util.List;

import com.rideease.dao.user.VendorDao;
import com.rideease.model.Vendor;

public class VendorService {
	VendorDao vendorDao=new VendorDao();
	
	public String saveVendor(Vendor vendor) {
		
		//username check logic
//		boolean isUsernameAlreadyExist = validateUsername(user.getUname());
		
//		if(isUsernameAlreadyExist){
			
			//throw message
//		}
		
		
		
		//email check logic same
		
		
		//password criteria check logic
		
		//hash
		
		String result = vendorDao.lendVehicle(vendor);
		
		return result;
	}
	public List <Vendor> getAllVendors() {
		return vendorDao.getAllVendors();
	}
	
	public Vendor getVendorById(int vendorId) {
		return vendorDao.getVendor(vendorId);
	}
		
}
