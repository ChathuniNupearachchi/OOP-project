<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<% 	String userName,userId;
    	if ((String)session.getAttribute("userName") == null){
    		userName = "not Loggedin";
    		userId = "NULL";
    	}else{
    		userName = (String)session.getAttribute("userName");
    		userId = (String)session.getAttribute("userId");
    	}
%>    
<!DOCTYPE html>
<html>
<head>
	<title>Wedding Edit Form</title>
  	<meta charset="ISO-8859-1">
  	<meta charset="UTF-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1.0">
  	<meta http-equiv="X-UA-Compatible" content="ie=edge">
  	
  	<link rel="stylesheet" href="vendors/bootstrap/bootstrap.min.css">
  	<link rel="stylesheet" href="vendors/owl-carousel/owl.carousel.min.css">
  	<link rel="stylesheet" href="vendors/nice-select/nice-select.css">
	<link rel="stylesheet"  href="css/style.css" media="screen">
</head>

<body>
	
	<!-- ================ header section start ================= -->	
	<header class="header_area">
    <div class="header-top">
      	<div class="container">
        	<div class="d-flex align-items-center">
          		<div id="logo">
            	<a href="index.html"><img src="img/Logo.png" alt="" title="" width= "150" height="70" /></a>
          		</div>
          	<div class="ml-auto d-none d-md-block d-md-flex">
            	<div class="media header-top-info">
              		<div class="media-body">
                	<p>Contact Us</p>
                	<p>: <a href="Tel +94 77 999 4374">+94 77 999 4374</a></p>
              		</div>
            	</div>
            	<div class="media header-top-info">
              		<div class="media-body">
                	<p>Contact Us</p>
                	<p>: <a href="royal@gmail.com">royal@gmail.com</a></p>
              		</div>
            	</div>
            	
            	<div class="media header-top-info">
              	<span class="header-top-info__icon"><i class="ti-user"></i></span>
              		<div class="media-body">
                	<p>User ID : ${userId}</p>
                	<p>User Name : ${userName} </p>
              		</div>
            	</div>
            	
          	</div>
       		</div>
      	</div>
    </div>


    <jsp:include page="navBar.jsp"></jsp:include>
    
	</header><br><br><br><br><br><br><br><br>
	<!-- ================ header section end ================= -->
	
	<div class="fm">
	<form action="UpdateServlet" method="get">
	
	<caption>
		<h3>
		<c:if test="${wedding != null}">Edit Previous Wedding Details</c:if>
		<c:if test="${wedding == null}"><h3>Edit Form Below</h3><br></c:if></h3>
	</caption>

	<c:if test="${wedding != null}">
		<input type="hidden" name="id" value="<c:out value='${wedding.id}' />" />
	</c:if>

	<fieldset class="form-group">
		<label>Full Name :</label> 
		<input type="text" value="<c:out value='${wedding.fullName}' />" class="form-control" name="fullName" required="required" placeholder="Enter your full name">
	</fieldset>

	<fieldset class="form-group">
		<label>Contact No :</label> 
		<input type="text" value="<c:out value='${wedding.phone}' />" class="form-control" name="phone" pattern="[0-9]{10}" placeholder="Phone No should be 10 digit" >
	</fieldset>

	<fieldset class="form-group">
		<label>Email :</label> 
		<input type="text" value="<c:out value='${wedding.email}' />" class="form-control" name="email" placeholder="Enter valid Email address">
	</fieldset>
				
	<fieldset class="form-group">
		<label>No of Attendees :</label> 
		<input type="text" value="<c:out value='${wedding.attendees}' />" class="form-control" name="attendees" placeholder="Enter No of attendees">
	</fieldset>
				
	<fieldset class="form-group">
		<label>Additional Information :</label> 
		<input type="text" value="<c:out value='${wedding.additional}' />" class="form-control" name="additional" placeholder="Enter additional details">
	</fieldset>

	<input type="submit" value = "Update" class="button">
	<button type="button" class="button"><a href="DeleteServlet?id=<c:out value='${wedding.id}' />">Delete</a></button><br><br>
	</form>
				
	</div><br><br><br><br>
				
	<!-- ================ start footer Area ================= -->
  		<footer class="footer-area section-gap">
			<div class="container">
				<div class="row">
					<div class="col-xl-2 col-sm-6 mb-4 mb-xl-0 single-footer-widget">
						<h4>IT21836954</h4>
						<ul><li><a>Home</a></li><li></li></ul>
					</div>
					<div class="col-xl-2 col-sm-6 mb-4 mb-xl-0 single-footer-widget">
						<h4>IT21833816</h4>
						<ul><li><a>About</a></li><li></li></ul>
					</div>
					<div class="col-xl-2 col-sm-6 mb-4 mb-xl-0 single-footer-widget">
						<h4>IT21836268</h4>
						<ul><li><a>Contact Us</a></li><li></li></ul>
					</div>
					<div class="col-xl-2 col-sm-6 mb-4 mb-xl-0 single-footer-widget">
						<h4>IT21834806</h4>
						<ul><li><a>Privacy Policy</a></li><li></li></ul>
					</div>
					</div>
					<div class="footer-bottom row align-items-center text-center text-lg-left">
						<p class="footer-text m-0 col-lg-8 col-md-12">
						Copyright &copy;<script>document.write(new Date().getFullYear());</script> All Rights Reserved. Design by SE/OOP Group 2023 S1 WD44 SLIIT MALABE</p>
					</div>
			</div>
		</footer>
  		<!-- ================ End footer Area ================= -->
				
<style>
body{
	background-color: #CBCDCD;
}
p{
	text-align: justify;
}
h2{
	color: #10C1EC;
	text-shadow: 2px 1px black;
}
h3{
	color: #09C1C1;
	text-shadow: 1px 1px black;
}
.fm {
  	border-radius: 15px;
  	background-color: #f2f2f2;
  	padding: 20px;
  	width: 60%;
  	margin-left : auto;
  	margin-right : auto;
}
.button1 {
	width: 1230px;
	background-color: #f44336;
}
.button1:hover{
	width: 1230px;
	
}
.button{
	border-radius: 8px;
	border: 2px solid #008CBA;
	background-color: #008CBA;
	font-size: 20px;
	padding: 5px;
	width: 10%;
	box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
}
.button:hover {
  	background-color: #555555;
  	color: white;
  	box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
  	width: 10%;
}
a {
  	color: black;
}
a:hover{
	color: white;
}
</style>

</body>
</html>