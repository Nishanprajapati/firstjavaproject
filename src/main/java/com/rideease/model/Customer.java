package com.rideease.model;

import java.io.InputStream;

public class Customer {
	private int id;
	private String name,email,number,address;
	private InputStream citizenshipPhoto,licensePhoto;
	
	public Customer(String name, String email, String number, String address, InputStream citizenshipPhoto,
			InputStream licensePhoto) {
		super();
		this.name = name;
		this.email = email;
		this.number = number;
		this.address = address;
		this.citizenshipPhoto = citizenshipPhoto;
		this.licensePhoto = licensePhoto;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public InputStream getCitizenshipPhoto() {
		return citizenshipPhoto;
	}
	public void setCitizenshipPhoto(InputStream citizenshipPhoto) {
		this.citizenshipPhoto = citizenshipPhoto;
	}
	public InputStream getLicensePhoto() {
		return licensePhoto;
	}
	public void setLicensePhoto(InputStream licensePhoto) {
		this.licensePhoto = licensePhoto;
	}
	
	
	
	
	
	
}
