<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
	<title>Wedding List</title>
  	<meta charset="ISO-8859-1">
  	<meta charset="UTF-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1.0">
  	<meta http-equiv="X-UA-Compatible" content="ie=edge">
  	
  	<link rel="stylesheet" href="vendors/bootstrap/bootstrap.min.css">
  	<link rel="stylesheet" href="vendors/owl-carousel/owl.carousel.min.css">
  	<link rel="stylesheet" href="vendors/nice-select/nice-select.css">
	<link rel="stylesheet"  href="css/style.css" media="screen">
	
	<script>
  		function cheker(){
  			
  			var result = confirm('Are you sure you want to delete this ??');
  			if(result == false){
  				event.preventDefault();
  			}
  			
  		}
	
	</script>
	
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

	<div >
	<h2>Booking Information</h2><br>
	
		<c:forEach var="wedding" items="${listWedding}">
			<table style="width:1000px" class="shadow-lg">
			<tr>
				<th class="thead">Booking ID</th>
				<td class="tbody"><c:out value="${wedding.id}" /></td>
			</tr>
			<tr>
				<th class="thead">Full Name</th>
				<td class="tbody"><c:out value="${wedding.fullName}" /></td>
			</tr>
			<tr>
				<th class="thead">Phone Number</th>
				<td class="tbody"><c:out value="${wedding.phone}" /></td>
			</tr>
			<tr>
				<th class="thead">Email</th>
				<td class="tbody"><c:out value="${wedding.email}" /></td>
			</tr>
			<tr>
				<th class="thead">No of Attendees</th>
				<td class="tbody"><c:out value="${wedding.attendees}" /></td>
			</tr>
			<tr>
				<th class="thead">Additional Infomation</th>
				<td class="tbody"><c:out value="${wedding.additional}" /></td>
			</tr>
			<tr>
				<th class="thead">Actions</th>
				<td class="tbody"><a href="ShowEdit?id=<c:out value='${wedding.id}' />">Edit</a>
				&nbsp;&nbsp;&nbsp;&nbsp; 
				<a onclick="cheker()"  href="DeleteServlet?id=<c:out value='${wedding.id}' />">Delete</a></td>
			</tr>
			</table><br><br>
		</c:forEach>
		<div class="" style="text-align:center;">
			<a href="wedding-form.jsp" class="btn">Book Another Wedding</a>
		</div>
		<br>
	</div><br><br>
	
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
.tbody{
	text-align:left;
	background-color:#B3B6B6;
	color:black;
}
.thead{
	text-align:left;
	width:30%;
	background-color:#12D6FE;
	color:black;
}
th{
  	border: 13px solid black;
}
h2{
	text-align: center;
}
h3{
	margin-left: 1100px;
}
.fm {
  	border-radius: 15px;
  	background-color: #f2f2f2;
  	padding: 20px;
  	width: 60%;
  	margin-left : auto;
  	margin-right : auto;
}
body {
  	font-family: Arial, Helvetica, sans-serif;
  	background-color: #24ABD0;
}
.navbar {
  	overflow: hidden;
  	background-color: #333;
}
.navbar a {
  	float: left;
  	font-size: 16px;
  	color: white;
  	text-align: center;
  	padding: 14px 16px;
  	text-decoration: none;
}
.navbar a:hover, .dropdown:hover .dropbtn {
  	background-color: red;
}
table, th, td {
  	border:1px solid black;
  	border-collapse: collapse;
  	padding: 15px;
  	text-align: center;
  	background-color: #D6EEEE;
  	margin-left: auto;
  	margin-right: auto;
}
a {
  	color: #E80F0F;
  	font-weight: bold;
}
.btn{
	align:center;
	border-radius: 8px;
	border: 2px solid #008CBA;
	background-color: #17CAAF;
	font-size: 20px;
	padding: 15px;
	width: 250px;
	box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
}
</style>
	
</body>
</html>