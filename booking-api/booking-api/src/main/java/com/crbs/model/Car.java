package com.crbs.model;

public class Car {
	String code;
	String name;
	int price;
	String color;
	String fuel;
	int displacement;
	String size;
	String imageUrl;
	int cnt;
	
	public Car() {}

	public Car(String code, String name, int price, String color, String fuel,
			int displacement, String size, String imageUrl, int cnt) {
		this.code = code;
		this.name = name;
		this.price = price;
		this.color = color;
		this.fuel = fuel;
		this.displacement = displacement;
		this.size = size;
		this.imageUrl = imageUrl;
		this.cnt = cnt;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public String getFuel() {
		return fuel;
	}

	public void setFuel(String fuel) {
		this.fuel = fuel;
	}

	public int getDisplacement() {
		return displacement;
	}

	public void setDisplacement(int displacement) {
		this.displacement = displacement;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

	public int getCnt() {
		return cnt;
	}

	public void setCnt(int cnt) {
		this.cnt = cnt;
	}

}
