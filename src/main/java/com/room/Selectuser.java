package com.room;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class Selectuser {
	
	private static Connection connection=null;

	
	private int id;
	 
	
	public int getId() {
		return id;
	}
	public void setId(int uid) {
		this.id = uid;
	}
	 
public ArrayList<Customer> byID(Selectuser sbID){
		
		ArrayList<Customer> roomRes = new ArrayList<Customer>();
		 
		
		
		
		
		
		try {
			connection = DBConnect.getConnection();

				String query = "SELECT * FROM user where id=?";	
				
				PreparedStatement stmt = connection.prepareStatement(query);
				stmt.setInt(1, sbID.getId());
				
				System.out.println("id in selectByID : "+ sbID.getId());
				
				ResultSet res = stmt.executeQuery();
				
				
				
				 
					
					while(res.next()) {
						
						Customer cus = new Customer();
						cus.setBookingid(res.getInt(1));
						cus.setId(res.getInt(2));
						cus.setName(res.getString(3));						
						cus.setEmail(res.getString(4));
						cus.setPhone(res.getString(5));
						cus.setRoomtype(res.getString(6));
						cus.setDate1(res.getString(7));
						cus.setDate2(res.getString(8));
						cus.setAdults(res.getInt(9));
						cus.setChildren(res.getInt(10));
						
						 
						
						roomRes.add(cus);
						
						System.out.println("res in selectByID");
					}
					
				
				
			
		} catch (SQLException e) {
			
			e.printStackTrace();
			
		}//sql statement
		
		if(roomRes.isEmpty()) {
			System.out.println("ArrayList in selectByID is EMPTY...!!!");
		}else {
			System.out.println("ArrayList in selectByID is NOT EMPTY...!!!");
		}
		
		
		return roomRes;
		
		
		
	}
	
	
	

}
