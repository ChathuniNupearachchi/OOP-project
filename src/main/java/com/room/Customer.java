package com.room;

public class Customer {
	
	private int id;
	private String name;
	private String email;
	private String phone;
	private String roomtype;
	private String date1;
	private String date2;
	private int adults;
	private int children;
	private int bookingid;
	
	
	public int getBookingid() {
		return bookingid;
	}

	public void setBookingid(int bookingid) {
		this.bookingid = bookingid;
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

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getRoomtype() {
		return roomtype;
	}

	public void setRoomtype(String roomtype) {
		this.roomtype = roomtype;
	}
	public String getDate1() {
		return date1;
	}

	public void setDate1(String date1) {
		this.date1 = date1;
	}

	public String getDate2() {
		return date2;
	}

	public void setDate2(String date2) {
		this.date2 = date2;
	}

	public int getAdults() {
		return adults;
	}

	public void setAdults(int adults) {
		this.adults = adults;
	}

	public int getChildren() {
		return children;
	}

	public void setChildren(int children) {
		this.children = children;
	}
	
	public Customer()
	{
		
	}

	 

	 

	public Customer(int id,String name, String email, String phone, String roomtype,String date1, String date2, int adults, int children)  {
		
		this.id=id;
		this.name=name;
		this.email=email;
		this.phone=phone;
		this.roomtype=roomtype;
		this.date1=date1;
		this.date2=date2;
		this.adults=adults;
		this.children=children;
		
	}

	 
	
	

}
