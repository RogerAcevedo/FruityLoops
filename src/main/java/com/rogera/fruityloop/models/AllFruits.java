// This model(class" will get imported to our controller, where we will use the variables being created.

package com.rogera.fruityloop.models;


public class AllFruits {

//Member Variables	
	private String name;
	private double price;
	private String owner;


//Constructors	
	public AllFruits(String name, double price, String owner) {
		this.name = name;
		this.price = price;
		this.setOwner(owner);
		
		
	}
	
//Getters and Setters

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getOwner() {
		return owner;
	}

	public void setOwner(String owner) {
		this.owner = owner;
	}

	
	
}
