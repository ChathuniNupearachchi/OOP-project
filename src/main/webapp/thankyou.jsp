   <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
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
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>The Royal</title>
  <link rel="stylesheet" href="css/bootstrap.min.css.css">

	<link rel="icon" href="img/favicon.png" type="image/png">
  <link rel="stylesheet" href="vendors/bootstrap/bootstrap.min.css">
  <link rel="stylesheet" href="vendors/fontawesome/css/all.min.css">
	<link rel="stylesheet" href="vendors/themify-icons/themify-icons.css">
	<link rel="stylesheet" href="vendors/linericon/style.css">
  <link rel="stylesheet" href="vendors/magnefic-popup/magnific-popup.css">
  <link rel="stylesheet" href="vendors/nice-select/nice-select.css">

  <link rel="stylesheet" href="css/style.css">
  
  
  <link rel="stylesheet" href="vendors2/bootstrap/bootstrap.min.css">
  	<link rel="stylesheet" href="vendors2/fontawesome/css/all.min.css">
	<link rel="stylesheet" href="vendors2/themify-icons/themify-icons.css">
	<link rel="stylesheet" href="vendors2/linericon/style.css">
  	<link rel="stylesheet" href="vendors2/magnefic-popup/magnific-popup.css">
  	<link rel="stylesheet" href="vendors2/owl-carousel/owl.theme.default.min.css">
  	<link rel="stylesheet" href="vendors2/owl-carousel/owl.carousel.min.css">
  	<link rel="stylesheet" href="vendors2/nice-select/nice-select.css">



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
              	<span class="header-top-info__icon"><i class="fas fa-phone-volume"></i></span>
              		<div class="media-body">
                	<p>Contact Us</p>
                	<p>: <a href="Tel +94 77 999 4374">+94 77 999 4374</a></p>
              		</div>
            	</div>
            	<div class="media header-top-info">
              	<span class="header-top-info__icon"><i class="ti-email"></i></span>
              		<div class="media-body">
                	<p>Contact Us</p>
                	<p>: <a href="royal@gmail.com">royal@gmail.com</a></p>
              		</div>
            	</div>
            	
            	<div class="media header-top-info">
              	<span class="header-top-info__icon"><i class="ti-user"></i></span>
              		<div class="media-body">
                	<p>UserName  ${userId}</p>
                	<h4>: ${userName} </h4>
              		</div>
            	</div>
            	
            	<div class="media header-top-info">
              	<span class="header-top-info__icon"><i class="ti-plate-utensils"></i></span>
              		<div class="media-body">
              		<p>View reservations</p>
                	<button type="button" class="btn btn-success"><a href="RoomReservationServlet?userId=${userId}">View</a></button>
              		</div>
            	</div>
          	</div>
       		</div>
      	</div>
    </div>
   


   <jsp:include page="navBar.jsp"></jsp:include>
   
	</header>
	<!-- ================ header section end ================= -->	
  
  <!-- ================ start banner area ================= -->	
	<section class="contact-banner-area" id="contact">
		<div class="container h-100">
			<div class="contact-banner">
				<div class="text-center">
					<h1>Succsess!</h1>
					<!--<nav aria-label="breadcrumb" class="banner-breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="#"></a></li>
              <li class="breadcrumb-item active" aria-current="page"></li>
            </ol>
          </nav>-->
				</div>
			</div>
    </div>
 </section>
 <footer class="footer-area section-gap">
		<div class="container">
			<div class="row">
				<div class="col-xl-2 col-sm-6 mb-4 mb-xl-0 single-footer-widget">
					 
				</div>
				<div class="col-xl-2 col-sm-6 mb-4 mb-xl-0 single-footer-widget">
					 
				</div>
				<div class="col-xl-2 col-sm-6 mb-4 mb-xl-0 single-footer-widget">
					 
				</div>
				<div class="col-xl-2 col-sm-6 mb-4 mb-xl-0 single-footer-widget">
					 
				</div>
				<div class="col-xl-4 col-md-8 mb-4 mb-xl-0 single-footer-widget">
					 
				</div>
			
			<div class="footer-bottom row align-items-center text-center text-lg-left">
				<p class="footer-text m-0 col-lg-8 col-md-12"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->

<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
				</div>
				</div> 
		</div>
	</footer>