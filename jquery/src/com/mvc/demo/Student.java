package com.mvc.demo;

import java.util.LinkedHashMap;

public class Student {

	private String firstName;
	private String lastName;
	private String country;
	private String gender;
	private String[] hobby;
	
	
	public String[] getHobby() {
		return hobby;
	}
	public void setHobby(String[] hobby) {
		this.hobby = hobby;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	private LinkedHashMap<String,String> countryOptions;
	
	public Student() {
		
		countryOptions = new LinkedHashMap<>();
		countryOptions.put("India", "India");
		countryOptions.put("United Kingdom", "UK");
		countryOptions.put("UAE", "UAE");
		countryOptions.put("USA", "USA");

	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getCountry() {
		return country;
	}
	public LinkedHashMap<String, String> getCountryOptions() {
		return countryOptions;
	}
	
}
