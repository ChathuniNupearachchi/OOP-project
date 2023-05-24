package com.room;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

 
@WebServlet("/RoomReservationServlet")
public class ReservationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	System.out.print("\n\n<<--  Inside ReservationsServlet -->>\n\n ");

		
		int uid = Integer.parseInt(request.getParameter("userId"));
		
		System.out.println("User Id : " + uid);		
		
		Selectuser selectById = new Selectuser();
		
		selectById.setId(uid);

		request.setAttribute("RoomRes", selectById.byID(selectById));
		
		RequestDispatcher rd = request.getRequestDispatcher("reservation.jsp");//redirect to welcome page
		
		rd.forward(request, response);			
				
						
	}

}
