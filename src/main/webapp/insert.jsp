 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
     
     <% 	String userName,userId;
    	if ((String)session.getAttribute("userName") == null){
    		userName = "not Loggedin";
    		userId = "NULL";
    	}else{
    		userName = (String)session.getAttribute("username");
    		userId = (String)session.getAttribute("userId");
    	}
    %>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Register Page</title>
	 <link rel="stylesheet" href="css2/style.css">
	 <link rel="stylesheet" href="css/bootstrap.min.css.css">

	<link rel="icon" href="img/favicon.png" type="image/png">
  <link rel="stylesheet" href="vendors/bootstrap/bootstrap.min.css">
  <link rel="stylesheet" href="vendors/fontawesome/css/all.min.css">
	<link rel="stylesheet" href="vendors/themify-icons/themify-icons.css">
	<link rel="stylesheet" href="vendors/linericon/style.css">
  <link rel="stylesheet" href="vendors/magnefic-popup/magnific-popup.css">
  <link rel="stylesheet" href="vendors/nice-select/nice-select.css">

  <link rel="stylesheet" href="css/style.css">
  
	
</head>
<body>

<div class="wrapper">

	<p><b>*Room is available.Please fill the form given below to confirm the reservation</b></p>
 
  	<form action="RoomInsertServlet" method="post">
  	    <input type="hidden" name="id" value="${userId}"><br>
  	    Name:	<br>
  	    <div class="input-box">
  	    <input type="text" name="name">
  	    </div><br>
  		Email:<br>	<div class="input-box">	
  			<input type="text" name="email">
  			</div>
  			<br>
  		Phone Number:<br>
  		<div class="input-box">
  			<input type="text" name="phone">
  			</div><br>
  		
  		Room Type:<br>
  		
  		<div class="row">
            <div class="col-sm">
              <div class="form-group">
                <div class="form-select-custom">
  			<select name="roomtype">
             <option value="" disabled selected>Select Room Type</option>
             <option value="superioroceanvista">Superior Ocean Vista</option>
             <option value="Deluxe Room">Deluxe Room</option>
             <option value="middlesuite">Middle Suite</option>
             <option value="cornersuite">Corner Suite</option>
          </select>
          </div>
          </div>
          </div>
          </div>
          
          <label for="exampleFormControlInput1 ">Arrival Date</label>
		  <input type="date" name="date1" class="form-control" id="exampleFormControlInput1"><br>	
		  
		  <label for="exampleFormControlInput2 ">Depature Date</label>
		  <input type="date" name="date2" class="form-control" id="exampleFormControlInput2"><br>
		  No of Adults:<br>
		  <div class="row">
            <div class="col-sm">
              <div class="form-group">
                <div class="form-select-custom">
		  <select name="adults">
		  
		  <option value="" disabled selected>Adult</option>
             <option value="1">1</option>
             <option value="2">2</option>
		  
		  </select>
		  </div>
		  </div></div></div>
		  
		   No of Children:<br>
		   <div class="row">
            <div class="col-sm">
              <div class="form-group">
                <div class="form-select-custom">
		   <select name="children">
		  
		  <option value="" disabled selected>Children</option>
		     <option value="0">0</option>
             <option value="1">1</option>
             <option value="2">2</option>
		  
		  </select>
		  </div>
		  </div></div></div>
		  
  		
  		<div class="input-box button">
          <button   type="submit">Confirm Reservation</button>
          </div>
         
  	</form>
  	</div>
  	
  	

</body>
</html>