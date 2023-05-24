package com.room;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class PriceServlet
 */
@WebServlet("/PriceServlet")
public class PriceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
     private PriceDBUtil priceDetails;
     
     public void init()
 	{
 		priceDetails=new PriceDBUtil();
 	}
     
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

	 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String type=request.getParameter("type");
		
		priceDetails.setType(type); 
		
		request.setAttribute("price", priceDetails.Selectroom(priceDetails));
		 
		RequestDispatcher rd = request.getRequestDispatcher("price.jsp");//redirect to welcome page
		rd.forward(request, response);			
				
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	 

}
