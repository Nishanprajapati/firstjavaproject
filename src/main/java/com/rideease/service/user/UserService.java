package com.rideease.service.user;

import com.rideease.dao.user.RegisterDao;
import com.rideease.model.User;

public class UserService {
	
	RegisterDao registerDao = new RegisterDao();
	
	public String saveUser(User user) {
		
		//username check logic
		
		//email check logic
		
		
		//password criteria check logic
		
		//hash
		
		String result = registerDao.insert(user);
		
		return result;
	}

}
