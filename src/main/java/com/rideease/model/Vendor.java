package com.rideease.model;

import java.io.InputStream;
import java.sql.Blob;

public class Vendor {
	private int id;
	private String name,email,phoneNo,currentLocation,pickUp,dropOff,licencePlateNo,vehicleType,perDay,perHour;
	private InputStream vehicleImage,citizenshipImage,insuranceImage;
	
	
	
	public Vendor() {
		super();
	}
	public Vendor(String name, String email, String phoneNo, String currentLocation, String pickUp, String dropOff,
			String licencePlateNo, String veghicleType, String perDay, String perHour, InputStream  vehicleImage,
			InputStream  citizenshipImage, InputStream  insuranceImage) {
		super();
		this.name = name;
		this.email = email;
		this.phoneNo = phoneNo;
		this.currentLocation = currentLocation;
		this.pickUp = pickUp;
		this.dropOff = dropOff;
		this.licencePlateNo = licencePlateNo;
		this.vehicleType = veghicleType;
		this.perDay = perDay;
		this.perHour = perHour;
		this.vehicleImage = vehicleImage;
		this.citizenshipImage = citizenshipImage;
		this.insuranceImage = insuranceImage;
	}
	
	public Vendor(int id, String name, String email, String phoneNo, String currentLocation, String pickUp,
			String dropOff, String licencePlateNo, String vehicleType, String perDay, String perHour,
			InputStream vehicleImage, InputStream citizenshipImage, InputStream insuranceImage) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.phoneNo = phoneNo;
		this.currentLocation = currentLocation;
		this.pickUp = pickUp;
		this.dropOff = dropOff;
		this.licencePlateNo = licencePlateNo;
		this.vehicleType = vehicleType;
		this.perDay = perDay;
		this.perHour = perHour;
		this.vehicleImage = vehicleImage;
		this.citizenshipImage = citizenshipImage;
		this.insuranceImage = insuranceImage;
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
	public String getPhoneNo() {
		return phoneNo;
	}
	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}
	public String getCurrentLocation() {
		return currentLocation;
	}
	public void setCurrentLocation(String currentLocation) {
		this.currentLocation = currentLocation;
	}
	public String getPickUp() {
		return pickUp;
	}
	public void setPickUp(String pickUp) {
		this.pickUp = pickUp;
	}
	public String getDropOff() {
		return dropOff;
	}
	public void setDropOff(String dropOff) {
		this.dropOff = dropOff;
	}
	public String getLicencePlateNo() {
		return licencePlateNo;
	}
	public void setLicencePlateNo(String licencePlateNo) {
		this.licencePlateNo = licencePlateNo;
	}
	public String getVehicleType() {
		return vehicleType;
	}
	public void setVehicleType(String vehicleType) {
		this.vehicleType = vehicleType;
	}
	public String getPerDay() {
		return perDay;
	}
	public void setPerDay(String perDay) {
		this.perDay = perDay;
	}
	public String getPerHour() {
		return perHour;
	}
	public void setPerHour(String perHour) {
		this.perHour = perHour;
	}
	public InputStream  getVehicleImage() {
		return vehicleImage;
	}
	public void setVehicleImage(InputStream  vehicleImage) {
		this.vehicleImage = vehicleImage;
	}
	public InputStream  getCitizenshipImage() {
		return citizenshipImage;
	}
	public void setCitizenshipImage(InputStream  citizenshipImage) {
		this.citizenshipImage = citizenshipImage;
	}
	public InputStream  getInsuranceImage() {
		return insuranceImage;
	}
	public void setInsuranceImage(InputStream  insuranceImage) {
		this.insuranceImage = insuranceImage;
	}
	

	
	

	

	
	

}
