package com.room;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


 
@WebServlet("/RoomServlet")
public class RoomServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
private RoomDBUtil roomDetails; 
	
	public void init()
	{
		roomDetails=new RoomDBUtil();
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		this.doGet(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
        String roomtype=request.getParameter("roomtype");
        String arrivaldate=request.getParameter("date1");
        String depaturedate=request.getParameter("date2");

		
		room room=new room();
		room.setType(roomtype);
		room.setArrivaldate(arrivaldate);
		room.setDepaturedate(depaturedate);
		
		
	try{
		if(roomDetails.validate(room)) {
			
			response.sendRedirect("sorry.jsp");
			
		}else{
		
			
			response.sendRedirect("insert.jsp");
		}
	}
		catch(ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		
		
	}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	 

