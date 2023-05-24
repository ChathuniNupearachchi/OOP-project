package com.room;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

 
@WebServlet("/RoomUpdateServlet")

public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private static Connection connection=null;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		this.doGet(request, response);
	}

 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
		connection = DBConnect.getConnection();
		
		System.out.println("Inside Update Servlet");
		
		int bookingid=Integer.parseInt(request.getParameter("bookingId"));
		//int id=Integer.parseInt(request.getParameter("id"));
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String roomtype=request.getParameter("type");
		String date1=request.getParameter("date1");
		String date2=request.getParameter("date2");
		int adults=Integer.parseInt(request.getParameter("adults"));
		int children=Integer.parseInt(request.getParameter("children"));
		
		
		
		
		PreparedStatement stmt=connection.prepareStatement("update user set name=?,email=?,phone=?,type=?,arrival_date=?,depature_date=?,adults=?,children=? where booking_id=?");

	      stmt.setString(1,name);
	      stmt.setString(2,email);
	      stmt.setString(3,phone);
	      stmt.setString(4,roomtype);
	      stmt.setString(5,date1);
	      stmt.setString(6,date2);
	      stmt.setInt(7,adults);
	      stmt.setInt(8,children);
	      stmt.setInt(9,bookingid);
	      
	      int i=stmt.executeUpdate();
	      System.out.println(stmt);
	      
	      if(i>0)
			 {
				 
				 RequestDispatcher rd = request.getRequestDispatcher("thankyou.jsp");//redirect to welcome page
					rd.forward(request, response);
			 }
			 else {
					
				    response.sendRedirect("sorry.jsp");
					System.out.println("<font color=red size=18>Update Failed!!<br>");
					System.out.println("<a href='update.jsp'>Try AGAIN!!</a>");
				}
		}
	      
	      catch (SQLException e) {
				
				e.printStackTrace();
			}
				
	      
	}
	
	}

	 
	 

