package com.jdc.tls;

public record UserDataTwo(int num1,int num2) {
	
	public int getResults() {
		return num1 + num2;
	}
}
