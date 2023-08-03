package com.rideease.service.user;

import java.sql.SQLException;

import javax.servlet.http.HttpSession;
import javax.swing.JFrame;
import javax.swing.JOptionPane;

import com.rideease.dao.user.UserDao;
import com.rideease.model.User;

public class UserService {
	
	UserDao userDao = new UserDao();
	
	public String saveUser(User user) {
		
		//username check logic
		boolean isUsernameAlreadyExist = validateUsername(user.getUname());
		
		if(isUsernameAlreadyExist){
			
			//throw message
		}
		
		
		
		//email check logic same
		
		
		//password criteria check logic
		
		//hash
		
		String result = userDao.insert(user);
		
		return result;
	}

	
	public boolean validateUsername(String username) {
		
		
		return  userDao.checkUsername(username);
	}
	
	public boolean validateUser(String username, String password) throws SQLException {
		
		// add session detail if user credentials are valid
		
		
		return  userDao.authenticateUser(username, password);
	}
	
}
