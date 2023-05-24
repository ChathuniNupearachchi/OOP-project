package com.room;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DeleteReservation  {
	
	private static Connection connection=null;
	
public void deleteRes (int bookingid){
		
		System.out.print("\n\n<<--  DeleteByID -->>\n\n ");

		System.out.print("Booking ID : " + bookingid);
		
		connection = DBConnect.getConnection();
		
		
		
		
		try {
			
			String query = "delete from user where booking_id=?";
			PreparedStatement stmt = connection.prepareStatement(query);
			stmt.setInt(1,bookingid);
			
			stmt.executeUpdate();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		
	}
	
	
	
	

}
