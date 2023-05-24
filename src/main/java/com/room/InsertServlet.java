package com.room;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




 
@WebServlet("/RoomInsertServlet")
public class InsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private CustomerDBUtil customerDetails; 
		
	public void init()
	{
		customerDetails=new CustomerDBUtil();
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		this.doGet(request, response);
	}
	



	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id=Integer.parseInt(request.getParameter("id"));
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String roomtype=request.getParameter("roomtype");
		String date1 = request.getParameter("date1");
		String date2 = request.getParameter("date2");
		int adults=Integer.parseInt(request.getParameter("adults"));
		int children=Integer.parseInt(request.getParameter("children"));
		
		
	  Customer newUser=new Customer(id,name,email,phone,roomtype,date1,date2,adults,children);
		
	try {
			customerDetails.insertCustomer(newUser);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		response.sendRedirect("room.jsp");
		
		 
	}
}

 
	 
