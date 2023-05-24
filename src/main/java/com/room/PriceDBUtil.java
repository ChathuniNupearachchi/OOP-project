package com.room;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class PriceDBUtil {
	
	private static Connection connection=null;
	
	private String type;
	
	public String getType() {
		return type;
	}
	
	public void setType(String type) {
		this.type=type;
	}

	public Price Selectroom(PriceDBUtil details) {
		
		Price price=new Price();
		
		try {
			
			connection = DBConnect.getConnection();
			String SELECT_PRICE_SQL="SELECT * FROM hotel.` price` where ` type`=?";
		
			PreparedStatement stmt = connection.prepareStatement(SELECT_PRICE_SQL);
			stmt.setString(1, details.getType());
			
			System.out.println("id in selectByID : "+ details.getType());
			
			ResultSet res = stmt.executeQuery();
			
			if(res.next()) {
				
				 
				
				price.setType(res.getString(2));
				price.setPrice(res.getString(3));
				
			} 
		
		
		}catch (SQLException e) {
			
			e.printStackTrace();
			
		}//sql statement
		
		return price;
	}

}
