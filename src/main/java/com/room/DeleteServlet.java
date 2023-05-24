package com.room;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DeleteServlet
 */
@WebServlet("/RoomDeleteServlet")

public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.print("\n\n<<--Inside DeleteServlet -->>\n\n ");

		int bookingid = Integer.parseInt(request.getParameter("bookingId"));
	
		System.out.println("Booking ID : " + bookingid);	
		
		new DeleteReservation().deleteRes(bookingid);
		
		
		RequestDispatcher rd = request.getRequestDispatcher("thankyou.jsp");//redirect to welcome page
		rd.forward(request, response);	
		
		
	}

	 
	 

}
