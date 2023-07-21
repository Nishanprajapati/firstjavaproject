package com.rideease.utills;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
	   private static final String DB_URL="jdbc:mysql://localhost:3306/project";
	   private static final String DB_NAME="root";
	   private static final String DB_PASSWORD="";
	   private static final String DB_DRIVER_NAME="com.mysql.cj.jdbc.Driver";
	   
	   public static void loadDriver(String dbDriver) {
		   try {
			   Class.forName(dbDriver);
		   }
		   catch(ClassNotFoundException e) {
			   e.printStackTrace();
		   }
	   }
	   
	   public static Connection getConnection() {
		   loadDriver(DB_DRIVER_NAME);
		   Connection con=null;
		   try {
			con=DriverManager.getConnection(DB_URL,DB_NAME,DB_PASSWORD);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		   return con;
	   }

}
