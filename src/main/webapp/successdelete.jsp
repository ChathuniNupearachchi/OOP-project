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
	<title>Success Deleted</title>
  	<meta charset="ISO-8859-1">
  	<meta charset="UTF-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1.0">
  	<meta http-equiv="X-UA-Compatible" content="ie=edge">
  	
  	<link rel="stylesheet" href="vendors/bootstrap/bootstrap.min.css">
  	<link rel="stylesheet" href="vendors/owl-carousel/owl.carousel.min.css">
  	<link rel="stylesheet" href="vendors/nice-select/nice-select.css">
	<link rel="stylesheet"  href="css/style.css" media="screen">
	<link rel="stylesheet" href="css/styles.css">
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
	
	<section>
    	<div class="rt-container">
          	<div class="col-rt-12">
              	<div class="Scriptcontent">
              		<div id='card' class="animated fadeIn">
  						<div id='upper-side'>
    						<?xml version="1.0" encoding="utf-8"?>
	      						<!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN" "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd">
						      	<svg version="1.1" id="checkmark" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" xml:space="preserve">
						        <path d="M131.583,92.152l-0.026-0.041c-0.713-1.118-2.197-1.447-3.316-0.734l-31.782,20.257l-4.74-12.65
								c-0.483-1.29-1.882-1.958-3.124-1.493l-0.045,0.017c-1.242,0.465-1.857,1.888-1.374,3.178l5.763,15.382
								c0.131,0.351,0.334,0.65,0.579,0.898c0.028,0.029,0.06,0.052,0.089,0.08c0.08,0.073,0.159,0.147,0.246,0.209
								c0.071,0.051,0.147,0.091,0.222,0.133c0.058,0.033,0.115,0.069,0.175,0.097c0.081,0.037,0.165,0.063,0.249,0.091
								c0.065,0.022,0.128,0.047,0.195,0.063c0.079,0.019,0.159,0.026,0.239,0.037c0.074,0.01,0.147,0.024,0.221,0.027
								c0.097,0.004,0.194-0.006,0.292-0.014c0.055-0.005,0.109-0.003,0.163-0.012c0.323-0.048,0.641-0.16,0.933-0.346l34.305-21.865
								C131.967,94.755,132.296,93.271,131.583,92.152z" />
					        	
					        	<circle fill="none" stroke="#ffffff" stroke-width="5" stroke-miterlimit="10" cx="109.486" cy="104.353" r="32.53" />
					      		</svg>
					      		<h3 id='status'>
					      			Success
					    		</h3>
					  	</div>
					  	<div id='lower-side'>
					    	<p id='message'>Your Details has been Successfully Deleted.</p>
					    	<a href="ListServlet?uid=${userId}" id="contBtn">Continue</a>
						</div>
					</div>
    			</div>
			</div>
    	</div>
	</section><br><br><br><br><br><br><br>
	
	
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
</body>
</html>