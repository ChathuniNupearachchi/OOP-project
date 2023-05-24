package com.room;

import java.sql.Connection;
import java.sql.PreparedStatement;

import java.sql.SQLException;

 
public class CustomerDBUtil {
	
	private static final String INSERT_USERS_SQL = "insert into user(id,name,email,phone,type,arrival_date,depature_date,adults,children) values"
			+ " (?,?,?,?,?,?,?,?,?);";


	private static Connection connection=null;
	
	public void insertCustomer(Customer user) throws SQLException {
		try { connection = DBConnect.getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL);
				
		    preparedStatement.setInt(1, user.getId());
			preparedStatement.setString(2, user.getName());
			preparedStatement.setString(3, user.getEmail());
			preparedStatement.setString(4, user.getPhone());
			preparedStatement.setString(5, user.getRoomtype());
			preparedStatement.setString(6, user.getDate1());
			preparedStatement.setString(7, user.getDate2());
			preparedStatement.setInt(8, user.getAdults());
			preparedStatement.setInt(9, user.getChildren());
		
			System.out.println(preparedStatement);
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
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
