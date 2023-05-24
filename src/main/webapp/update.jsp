 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
     
    <% 	
    String userName,userId;
    	if ((String)session.getAttribute("userName") == null){
    		userName = "not Loggedin";
    		userId = "NULL";
    	}else{
    		userName = (String)session.getAttribute("userName");
    		userId = (String)session.getAttribute("userId");
    	}
    	    	 
    %>
     
    
    
     <% 
         
		String id = request.getParameter("userId");
        String bookingid = request.getParameter("bookingId");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String type = request.getParameter("type");
		String arrivaldate=request.getParameter("date1");
		String depaturedate=request.getParameter("date2");
		String adults=request.getParameter("adults");
		String children=request.getParameter("children");
		
		 
	%>
	
    
    
    
<!DOCTYPE html>
 <html lang="en">
<head>
	<meta charset="ISO-8859-1">
  	<meta charset="UTF-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1.0">
  	 
  	
  	<title>Update Reservation </title>
	
	
	 
  	<link rel="stylesheet" href="css2/style.css">

  	 
</head>

<body>

 <div class="wrapper">
	 
          <center>  <h2>Update Reservation</h2></center>
            
             
 <form action="RoomUpdateServlet" method="post" >         
 

   
     
     
       <input type="hidden" name="bookingId" value="<%=bookingid %>"><br>
      
      <input type="hidden" name="id" value="<%=id %>"><br>
      
      
      Name:<br>
       <div class="input-box">
       <input type="text" name="name" value="<%=name %>">
       </div>
      
      Email:<br>
      <div class="input-box">
      <input type="text" name="email" value="<%=email %>">
      </div>
      
      
      Phone Number:<br>
      <div class="input-box">
      <input type="text" name="phone" value="<%=phone %>">
      </div>
      Room Type:<br>
      <div class="input-box">
      <input type="text" name="type" value="<%=type %>">
      </div>
      
      Arrival Date:<br>
      <div class="input-box">
      <input type="text" name="date1" value="<%=arrivaldate %>"> 
      </div>
      
      Depature Date:
      <div class="input-box">
      <input type="text" name="date2" value="<%=depaturedate %>">
      </div>
      
      No of Adults:
      <div class="input-box">
      <input type="text" name="adults" value="<%=adults %>">
      </div>
      
      No of Children:
      <div class="input-box">
      <input type="text" name="children" value="<%=children %>">
      </div>
      
      <div class="input-box button"> 
    <input type="submit" name="submit" value="Update My Data">
    </div>
      	 
	 
</form>
</div>

       
    
    
    <!-- ================ end banner area ================= -->
  




  <!-- ================ start footer Area ================= -->
  < 
</body>
</html>