package com.room;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class RoomDBUtil {
	
	private static final String SELECT_ROOMTYPE = "SELECT * FROM user where type=? and arrival date=? and depature date=?";
	
	private static Connection connection=null;
	
public boolean validate(room room)throws ClassNotFoundException{
		
		boolean status=false;
		
		
		try{connection = DBConnect.getConnection();
			
		

				// Step 2:Create a statement using connection object
		PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ROOMTYPE); 
			preparedStatement.setString(1,room.getType());
			preparedStatement.setString(2,room.getArrivaldate());
			preparedStatement.setString(3,room.getDepaturedate());
			
			
			
			System.out.println(preparedStatement);
			ResultSet rs = preparedStatement.executeQuery();
			status = rs.next();

			 

}
		 catch (SQLException e) {
				// process sql exception
				printSQLException(e);
			}
		return status;
			}

private void printSQLException(SQLException ex) {
	for (Throwable e : ex) {
		if (e instanceof SQLException) {
			e.printStackTrace(System.err);
			System.err.println("SQLState: " + ((SQLException) e).getSQLState());
			System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
			System.err.println("Message: " + e.getMessage());
			Throwable t = ex.getCause();
			while (t != null) {
				System.out.println("Cause: " + t);
				t = t.getCause();
			}
		}
	}
}

}
