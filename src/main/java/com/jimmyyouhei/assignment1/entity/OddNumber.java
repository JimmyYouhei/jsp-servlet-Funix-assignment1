package com.jimmyyouhei.assignment1.entity;

public class OddNumber {
	
	private int value;
	private boolean divisibleBy5;
	
	public OddNumber() {
		
	}

	public OddNumber(short value, boolean divisibleBy5) {
		this.value = value;
		this.divisibleBy5 = divisibleBy5;
	}

	public int getValue() {
		return value;
	}

	public void setValue(int value) {
		this.value = value;
	}

	public boolean isDivisibleBy5() {
		return divisibleBy5;
	}

	public void setDivisibleBy5(boolean divisibleBy5) {
		this.divisibleBy5 = divisibleBy5;
	}

	@Override
	public String toString() {
		return "OddNumber [value=" + value + ", divisibleBy5=" + divisibleBy5 + "]";
	}
	
	
	

}
