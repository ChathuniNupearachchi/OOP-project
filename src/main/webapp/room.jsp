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
  	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
  	
  	<style>
    .search-bar-section {
  background-color: #f8f8f8;
  padding: 20px 0;
  display: flex;
  align-items: center;
  justify-content: center;
}

.search-form {
  display: flex;
  align-items: center;
  justify-content: center;
}

.search-form .form-group {
  margin-right: 10px;
  
}

.search-form select,
.search-form input[type="text"] {
  padding: 10px;
  border: 1px solid #ccc;
  border-radius: 4px;
}

.search-form button {
  padding: 10px 20px;
  background-color: #333;
  color: #fff;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

.search-form button:hover {
  background-color: #555;
}
    
  	
  	</style>



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
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	
	 
	<!-- ================ header section end ================= -->	
  
  <!-- ================ start banner area ================= -->	
	<section class="contact-banner-area" id="contact">
		<div class="container h-100">
			<div class="contact-banner">
				<div class="text-center">
				<h1>Rooms</h1>
				 <section class="search-bar-section">
  <div class="container">
    <form class="search-form" action="PriceServlet" method="post">
      <div class="form-group">
        <select name="type">
           <option value="" disabled selected>Select Room Type</option>
             <option value="Superior Ocean Vista">Superior Ocean Vista</option>
             <option value="Deluxe Room">Deluxe Room</option>
             <option value="Middle Suite">Middle Suite</option>
             <option value="Corner Suite">Corner Suite</option>
        </select>
      </div>
       
      <button type="submit"><i class="fas fa-search"></i></button>
    </form>
  </div>
</section>
					 
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
  <!-- ================ end banner area ================= -->
  

  <!-- ================ start banner form ================= -->	
  <form class="form-search form-search-position accomodation" action="RoomServlet" method="post">
    <div class="container">
      <div class="row">
        <div class="col-lg-6 gutters-19">
          <div class="form-group">
           <div class="col-lg-6 gutters-19">
           
           
          <div class="row">
            <div class="col-sm">
              <div class="form-group">
                <div class="form-select-custom">
          <select name="roomtype">
             <option value="" disabled selected>Select Room Type</option>
             <option value="Superior Ocean Vista">Superior Ocean Vista</option>
             <option value="Deluxe Room">Deluxe Room</option>
             <option value="Middle Suite">Middle Suite</option>
             <option value="Corner Suite">Corner Suite</option>
          </select>
          </div>
         </div>
         </div></div>
         <div class="row">
            <div class="col-sm">
              <div class="form-group">
                <div class="form-select-custom">
           
		  <label for="exampleFormControlInput1 " class="form-label">Arrival Date</label>
		  <input type="date" name="date1" class="form-control" id="exampleFormControlInput1">	
		  
		    
		 
		
          </div>
         </div>
         </div></div>
         
         <div class="row">
            <div class="col-sm">
              <div class="form-group">
                <div class="form-select-custom">
           
		  <label for="exampleFormControlInput2 " class="form-label">Depature Date</label>
		  <input type="date" name="date2" class="form-control" id="exampleFormControlInput2">	
		  
		    
		 
		
          </div>
         </div>
         </div></div>
         
         
         
         
         </div>
         
         
          
          </div>
        </div>
   
        <div class="col-lg-4 gutters-19">
          <div class="form-group">
            
            <button class="button button-form" type="submit">Check Availability</button>
            
          </div>
        </div>
      </div>
    </div>
  </form>
	<!-- ================ end banner form ================= -->	


 

  <!-- ================ start footer Area ================= -->
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
  <!-- ================ End footer Area ================= -->



   
</body>
</html>