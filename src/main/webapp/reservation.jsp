<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
    
    <%@page import="java.util.ArrayList" %>
    <%@page import="com.room.Customer" %>
    
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
    
    <%ArrayList RoomRes = (ArrayList)request.getAttribute("RoomRes");%>
    
    
    
<!DOCTYPE html>
 <html lang="en">
<head>

<style>


</style>

	<meta charset="ISO-8859-1">
  	<meta charset="UTF-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1.0">
  	<meta http-equiv="X-UA-Compatible" content="ie=edge">
  	
  	<title>My Reservation List</title>
	<link rel="stylesheet" href="css/bootstrap.min.css.css">
	
	<link rel="icon" href="img/favicon.png" type="image/png">
  	<link rel="stylesheet" href="vendors2/bootstrap/bootstrap.min.css">
  	<link rel="stylesheet" href="vendors2/fontawesome/css/all.min.css">
	<link rel="stylesheet" href="vendors2/themify-icons/themify-icons.css">
	<link rel="stylesheet" href="vendors2/linericon/style.css">
  	<link rel="stylesheet" href="vendors2/magnefic-popup/magnific-popup.css">
  	<link rel="stylesheet" href="vendors2/owl-carousel/owl.theme.default.min.css">
  	<link rel="stylesheet" href="vendors2/owl-carousel/owl.carousel.min.css">
  	<link rel="stylesheet" href="vendors2/nice-select/nice-select.css">
  	<link rel="stylesheet" href="css/dining.css">

  	 
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
          	</div>
       		</div>
      	</div>
    </div>


    <jsp:include page="navBar.jsp"></jsp:include>
    
    
	</header>
	<!-- ================ header section end ================= -->	

  	<main class="site-main">
    
	<!-- ================ start banner area ================= --> 
    <section class="home-banner-area" id="home">
      	<div class="container h-100">
        <div class="home-banner">
        <div class="text-center">
            <h4><em>Room reservation list</em></h4>
            <a class="button home-banner-btn" href="room.jsp">Add new</a><br><br>
            
            <table class="table bg-light">
  <thead class="thead-dark">
    <tr>
      <th scope="col">Booking ID</th>
      <th scope="col">User ID</th>
      <th scope="col">Name</th>
      <th scope="col">Email</th>
      <th scope="col">Phone Number</th>
      <th scope="col">Room Type</th>
      <th scope="col">Arrival Date</th>
      <th scope="col">Depature Date</th>
      <th scope="col">No of Adults</th>
      <th scope="col">No of Children</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  
  <%for (int i=0; i< RoomRes.size(); i++){ %>
  
  	<% Customer cus = (Customer)RoomRes.get(i); %>
  	
  	 
  	
  	
  	
  
    <tr>
       <td><%=cus.getBookingid()%></td>
       <td><%=cus.getId()%></td>
       <td><%=cus.getName()%></td>
      <td><%=cus.getEmail()%></td>      
      <td><%=cus.getPhone()%></td>
      <td><%=cus.getRoomtype()%></td>
      <td><%=cus.getDate1()%></td>
      <td><%=cus.getDate2()%></td>
      <td><%=cus.getAdults()%></td>
      <td><%=cus.getChildren()%></td>
      

      
      <td>      
      	<button type="button" class="btn btn-secondary"> <a href="update.jsp?&userId=${userId}&bookingId=<%=cus.getBookingid()%>&name=<%=cus.getName()%>&email=<%=cus.getEmail()%>&phone=<%=cus.getPhone()%>&type=<%=cus.getRoomtype()%>&date1=<%=cus.getDate1()%>&date2=<%=cus.getDate2()%>&adults=<%=cus.getAdults()%>&children=<%=cus.getChildren()%>">Edit</a></button>  

      	
      	
      	
      	
      	
      	
      	    
      	
      	 
  <button type="button" class="btn btn-danger"><a href="RoomDeleteServlet?bookingId=<%= cus.getBookingid()%>&userId=<%=cus.getId()%>" >Delete</a></button>
      	 
	  </td>
	</tr>
	
	<%} %>
	
  </tbody>
</table>

      	</div>
        </div>
            	
      	</div>
      	
  
    </section>
    
    
    
    
    <!-- ================ end banner area ================= -->
  




  <!-- ================ start footer Area ================= -->
  <footer class="footer-area section-gap">
		<div class="container">
			<div class="row">
				<div class="col-xl-2 col-sm-6 mb-4 mb-xl-0 single-footer-widget">
					<h4>Top Products</h4>
					<ul>
						<li><a href="#">Managed Website</a></li>
						<li><a href="#">Manage Reputation</a></li>
						<li><a href="#">Power Tools</a></li>
						<li><a href="#">Marketing Service</a></li>
					</ul>
				</div>
				<div class="col-xl-2 col-sm-6 mb-4 mb-xl-0 single-footer-widget">
					<h4>Quick Links</h4>
					<ul>
						<li><a href="#">Jobs</a></li>
						<li><a href="#">Brand Assets</a></li>
						<li><a href="#">Investor Relations</a></li>
						<li><a href="#">Terms of Service</a></li>
					</ul>
				</div>
				<div class="col-xl-2 col-sm-6 mb-4 mb-xl-0 single-footer-widget">
					<h4>Features</h4>
					<ul>
						<li><a href="#">Jobs</a></li>
						<li><a href="#">Brand Assets</a></li>
						<li><a href="#">Investor Relations</a></li>
						<li><a href="#">Terms of Service</a></li>
					</ul>
				</div>
				<div class="col-xl-2 col-sm-6 mb-4 mb-xl-0 single-footer-widget">
					<h4>Resources</h4>
					<ul>
						<li><a href="#">Guides</a></li>
						<li><a href="#">Research</a></li>
						<li><a href="#">Experts</a></li>
						<li><a href="#">Agencies</a></li>
					</ul>
				</div>
				<div class="col-xl-4 col-md-8 mb-4 mb-xl-0 single-footer-widget">
					<h4>Newsletter</h4>
					<p>You can trust us. we only send promo offers,</p>
					<div class="form-wrap" id="mc_embed_signup">
						<form target="_blank" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01"
						 method="get" class="form-inline">
							<input class="form-control" name="EMAIL" placeholder="Your Email Address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Your Email Address '"
							 required="" type="email">
							<button class="click-btn btn btn-default text-uppercase">subscribe</button>
							<div style="position: absolute; left: -5000px;">
								<input name="b_36c4fd991d266f23781ded980_aefe40901a" tabindex="-1" value="" type="text">
							</div>

							<div class="info"></div>
						</form>
					</div>
				</div>
			</div>
			<div class="footer-bottom row align-items-center text-center text-lg-left">
				<p class="footer-text m-0 col-lg-8 col-md-12"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
			Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved</p>
				<div class="col-lg-4 col-md-12 text-center text-lg-right footer-social">
					<a href="#"><i class="fab fa-facebook-f"></i></a>
					<a href="#"><i class="fab fa-twitter"></i></a>
					<a href="#"><i class="fab fa-dribbble"></i></a>
					<a href="#"><i class="fab fa-behance"></i></a>
				</div>
			</div>
		</div>
	</footer>
  <!-- ================ End footer Area ================= -->


	<script src="js/bootstrap.min.js"></script>
  	<script src="vendors/jquery/jquery-3.2.1.min.js"></script>
  	<script src="vendors/bootstrap/bootstrap.bundle.min.js"></script>
  	<script src="vendors/magnefic-popup/jquery.magnific-popup.min.js"></script>
  	<script src="vendors/owl-carousel/owl.carousel.min.js"></script>
	<script src="vendors/easing.min.js"></script>
  	<script src="vendors/superfish.min.js"></script>
  	<script src="vendors/nice-select/jquery.nice-select.min.js"></script>
  	<script src="vendors/jquery.ajaxchimp.min.js"></script>
  	<script src="vendors/mail-script.js"></script>
  	<script src="js/main.js"></script>
</body>
</html>