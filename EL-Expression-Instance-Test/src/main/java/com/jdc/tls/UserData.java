package com.jdc.tls;

public class UserData {

	private String name;
	private String phone;
	private int numberOne;
	private int numberTwo;

	public UserData(String name, String phone, int numberOne, int numberTwo) {
		super();
		this.name = name;
		this.phone = phone;
		this.numberOne = numberOne;
		this.numberTwo = numberTwo;
	}

	public String getName() {
		return name;
	}

	public String getPhone() {
		return phone;
	}

	public int getNumberOne() {
		return numberOne;
	}

	public int getNumberTwo() {
		return numberTwo;
	}
	
	public int result() {
		return numberOne * numberTwo;
	}

}
