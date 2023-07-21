package com.rideease.model;

public class User {
   private String ufname,ulname,uname,password,cpassword;

public User() {
	super();
}

public User(String ufname, String ulname, String uname, String password, String cpassword) {
	super();
	this.ufname = ufname;
	this.ulname = ulname;
	this.uname = uname;
	this.password = password;
	this.cpassword = cpassword;
}

public String getUfname() {
	return ufname;
}

public void setUfname(String ufname) {
	this.ufname = ufname;
}

public String getUlname() {
	return ulname;
}

public void setUlname(String ulname) {
	this.ulname = ulname;
}

public String getUname() {
	return uname;
}

public void setUname(String uname) {
	this.uname = uname;
}

public String getPassword() {
	return password;
}

public void setPassword(String password) {
	this.password = password;
}

public String getCpassword() {
	return cpassword;
}

public void setCpassword(String cpassword) {
	this.cpassword = cpassword;
}
}
