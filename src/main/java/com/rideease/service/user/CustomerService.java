package com.rideease.service.user;

import com.rideease.dao.user.CustomerDao;
import com.rideease.model.Customer;
import com.rideease.utills.EmailSender;

public class CustomerService {
	CustomerDao customerDao=new CustomerDao();
	
	public String saveCustomer(Customer customer) {
		
		//username check logic
//		boolean isUsernameAlreadyExist = validateUsername(user.getUname());
		
//		if(isUsernameAlreadyExist){
			
			//throw message
//		}
		
		
		
		//email check logic same
		
		
		//password criteria check logic
		
		//hash
		
		String result = customerDao.bookVehicle(customer);
		if (result.equals("success")) {
			
			EmailSender.bookEmail(result);
		}
		
		return result;
	}
}
