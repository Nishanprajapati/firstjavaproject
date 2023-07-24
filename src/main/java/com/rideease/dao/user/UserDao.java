package com.rideease.dao.user;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.rideease.model.User;
import com.rideease.utills.DatabaseConnection;

public class UserDao {
   
   public String insert(User user) {
	   
	   Connection con = DatabaseConnection.getConnection();
	   System.out.println("connectioncheckstarted");
	   System.out.println(con);
	   System.out.println("connectioncheckended");
	   String result ="Data entered Successfully";
	   String sql="insert into users (first_name,second_name,username,password,confirm_password) values(?,?,?,?,?)";
	   PreparedStatement ps;
	try {
		ps = con.prepareStatement(sql);
	
	   ps.setString(1,user.getUfname());
	   ps.setString(2,user.getUlname());
	   ps.setString(3,user.getUname());
	   ps.setString(4,user.getPassword());
	   ps.setString(5,user.getCpassword());
       ps.executeUpdate();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		result="Data not entered";
		
	}
       
	   return result;
   }
   
   public boolean checkUsername(String Username) {
	   
	   //db logic here
	   
	   return false;
   }
   
  public boolean checkEmail(String email) {
	   
	   //db logic here
	   
	   return false;
   }
  
  public boolean authenticateUser(String username,String password) throws SQLException {
	  boolean result = false;
	  PreparedStatement preparedStatement = DatabaseConnection.getConnection().prepareStatement("select * from users where username = ? and password = ? ");
//        preparedStatement.setString(2,hash.getMd5(password));
          preparedStatement.setString(2,password);
          preparedStatement.setString(1,username);
          ResultSet rs = preparedStatement.executeQuery(); 
          result = rs.next();
      return result;
	   
  }
}
