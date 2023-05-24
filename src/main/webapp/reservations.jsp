<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.ArrayList" %>
    <%@page import="com.Dining.Dining" %>
    
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
    
    <%ArrayList dinRes = (ArrayList)request.getAttribute("dinRes");%>
    

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="ISO-8859-1">
  	<meta charset="UTF-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1.0">
  	<meta http-equiv="X-UA-Compatible" content="ie=edge">
  	
  	<title>My Reservation List</title>
	<link rel="stylesheet" href="css/bootstrap.min.css.css">
	
	<link rel="icon" href="img/favicon.png" type="image/png">
  	<link rel="stylesheet" href="vendors/bootstrap/bootstrap.min.css">
  	<link rel="stylesheet" href="vendors/fontawesome/css/all.min.css">
	<link rel="stylesheet" href="vendors/themify-icons/themify-icons.css">
	<link rel="stylesheet" href="vendors/linericon/style.css">
  	<link rel="stylesheet" href="vendors/magnefic-popup/magnific-popup.css">
  	<link rel="stylesheet" href="vendors/owl-carousel/owl.theme.default.min.css">
  	<link rel="stylesheet" href="vendors/owl-carousel/owl.carousel.min.css">
  	<link rel="stylesheet" href="vendors/nice-select/nice-select.css">

  	<link rel="stylesheet" href="css/dining.css">
  	
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
            <h4><em>Dining reservation list</em></h4>
            <a class="button home-banner-btn" href="dining.jsp#form"> <i class="ti-plus"></i> Add new</a><br><br>
            
            <table class="table bg-light" style="margin-left:35px; width:95%; height: auto;">
  <thead class="thead-dark">
    <tr>
      
      <th scope="col">Name</th>
      <th scope="col">Email</th>
      <th scope="col">Phone Number</th>
      <th scope="col">Num of People</th>
      <th scope="col">Date</th>
      <th scope="col">Time</th>
      <th scope="col">Meal Plan</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  
  <%for (int i=0; i< dinRes.size(); i++){ %>
  
  	<% Dining din = (Dining)dinRes.get(i); %>
  
    <tr>
   
      <td><%= din.getName()%></td>
      <td><%= din.getEmail()%></td>      
      <td><%= din.getPhone()%></td>
      <td><%= din.getNumOfpeople()%></td>
      <td><%= din.getDate()%></td>
      <td><%= din.getTime()%></td>
      <td><%= din.getMeal()%></td>
      
      <td>      
      	<button type="button" class="btn btn-secondary"> <a href="EditeServlet?did=<%=din.getDid()%>&userId=<%=din.getUid()%>"><i class="ti-reload"></i> Edit</a></button>
      	<button onclick="cheker()"  type="button" class="btn btn-danger"><a href="DiningDeleteServlet?did=<%=din.getDid()%>&userId=<%=din.getUid()%>" ><i class="ti-trash"></i> Delete</a></button>
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