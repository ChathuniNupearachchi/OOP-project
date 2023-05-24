<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>The Royal</title>

	<link rel="icon" href="img/favicon.png" type="image/png">
  <link rel="stylesheet" href="vendors/bootstrap/bootstrap.min.css">
  <link rel="stylesheet" href="vendors/fontawesome/css/all.min.css">
	<link rel="stylesheet" href="vendors/themify-icons/themify-icons.css">
	<link rel="stylesheet" href="vendors/linericon/style.css">
  <link rel="stylesheet" href="vendors/magnefic-popup/magnific-popup.css">
  <link rel="stylesheet" href="vendors/owl-carousel/owl.theme.default.min.css">
  <link rel="stylesheet" href="vendors/owl-carousel/owl.carousel.min.css">
  <link rel="stylesheet" href="vendors/nice-select/nice-select.css">

  <link rel="stylesheet" href="css/style.css">
</head>
<body>
<!-- ================ header section start ================= -->	
	<header class="header_area">
    <div class="header-top">
      <div class="container">
        <div class="d-flex align-items-center">
          <div id="logo">
            <a href="Home.jsp"><img src="img/Logo.png" alt="" title="" width= "150" height="70" /></a>
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
          </div>
        </div>
      </div>
    </div>


    <div class="main_menu">
      <nav class="navbar navbar-expand-lg navbar-light">
        <div class="container">
          <!-- Brand and toggle get grouped for better mobile display -->
          <!-- <a class="navbar-brand logo_h" href="index.html"><img src="img/logo.png" alt=""></a> -->
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <!-- Collect the nav links, forms, and other content for toggling -->
          <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
            <ul class="nav navbar-nav menu_nav">
              <li class="nav-item active"><a class="nav-link" href="index.html">Home</a></li>
              <li class="nav-item"><a class="nav-link" href="rooms.html">Rooms</a></li>
              <li class="nav-item"><a class="nav-link" href="dining.html">Dining</a></li>
              <li class="nav-item submenu dropdown">
                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                aria-expanded="false">Events</a>
                <ul class="dropdown-menu">
                  <li class="nav-item"><a class="nav-link" href="wedding.html">Weddings</a></li>
				  <li class="nav-item"><a class="nav-link" href="celebrations.html">Celebrations</a></li>
                  <li class="nav-item"><a class="nav-link" href="meeting.html">Meetings</a></li>
                </ul>
              </li>
			  <li class="nav-item"><a class="nav-link" href="gallery.html">Gallery</a></li>
              <li class="nav-item"><a class="nav-link" href="contact.html">Contact</a></li>
			  <li class="nav-item"><a class="nav-link" href="about.html">About</a></li>
            </ul>
          </div>

          <ul class="social-icons ml-auto">
            <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
            <li><a href="#"><i class="fab fa-linkedin-in"></i></a></li>
            <li><a href="#"><i class="fab fa-twitter"></i></a></li>
            <li><a href="#"><i class="fab fa-google-plus-g"></i></a></li>
            <li><a href="#"><i class="fas fa-rss"></i></a></li>
          </ul>
        </div>
      </nav>
    </div>
	</header>
	<!-- ================ header section end ================= -->	

  <main class="site-main">
    

    <!-- ================ start banner area ================= --> 
    <section class="home-banner-area" id="home">
      <div class="container h-100">
        <div class="home-banner">
          <div class="text-center">
            <h4>Welcome to the Royal Group</h4>
            <h1>Moments <em>of</em> pleasure</h1>
            <a class="button home-banner-btn" href="#">Book Now</a><br><br>
        	<a class="button home-banner-btn" href="useraccount.jsp">Your Details</a>
		 </div>
        </div>
      </div>
    </section>
    <!-- ================ end banner area ================= -->
  

    <!-- ================ start banner form ================= --> 
    <form class="form-search form-search-position">
      <div class="container">
        <div class="row">
          <div class="col-lg-6 gutters-19">
            <div class="form-group">
              <input class="form-control" type="text" placeholder="Enter your keywords.." required>
            </div>
          </div>
          <div class="col-lg-6 gutters-19">
            <div class="row">
              <div class="col-sm">
                <div class="form-group">
                  <div class="form-select-custom">
                    <select name="" id="">
                      <option value="" disabled selected>Arrival</option>
                      <option value="8 AM">8 AM</option>
                      <option value="2 PM">2 PM</option>
                    </select>
                  </div>
                </div>
              </div>
              <div class="col-sm gutters-19">
                <div class="form-group">
                  <div class="form-select-custom">
                    <select name="" id="">
                      <option value="" disabled selected>Number of room</option>
                      <option value="r1">1</option>
                      <option value="r2">2</option>
					  <option value="r3">3</option>
					  <option value="r4">4</option>
                    </select>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-sm gutters-19">
            <div class="form-group">
              <div class="form-select-custom">
                <select name="" id="">
                  <option value="" disabled selected>Departure</option>
                  <option value="12 PM">12 PM</option>
                  <option value="6 PM">6 PM</option>
                </select>
              </div>
            </div>
          </div>
          <div class="col-sm gutters-19">
            <div class="form-group">
              <div class="form-select-custom">
                <select name="" id="">
                  <option value="" disabled selected>Adult</option>
                  <option value="a1">1</option>
                  <option value="a2">2</option>
				  <option value="a3">3</option>
				  <option value="a4">4</option>
				  <option value="a5">5</option>
                </select>
              </div>
            </div>
          </div>
          <div class="col-sm gutters-19">
            <div class="form-group">
              <div class="form-select-custom">
                <select name="" id="">
                  <option value="" disabled selected>Child</option>
                  <option value="c1">1</option>
                  <option value="c2">2</option>
				  <option value="c3">3</option>
                </select>
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

    <!-- ================ welcome section start ================= --> 
    <section class="welcome">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-lg-5 mb-4 mb-lg-0">
            <div class="row no-gutters welcome-images">
              <div class="col-sm-7">
                <div class="card">
                  <img class="" src="img/home/welcomeBanner1.jpg" alt="Card image cap">
                </div>
              </div>
              <div class="col-sm-5">
                <div class="card">
                  <img class="" src="img/home/welcomeBanner2.jpg" alt="Card image cap">
                </div>
              </div>
              <div class="col-lg-12">
                <div class="card">
                  <img class="" src="img/home/welcomeBanner3.jpg" alt="Card image cap">
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-7">
            <div class="welcome-content">
              <h2 class="mb-4"><span class="d-block">Welcome</span> to the Royal Group</h2>
              <p>On behalf of the entire team here at Royal Hotel, I would like to extend a warm welcome to you. We are thrilled to have you with us and look forward to providing you with exceptional service and an unforgettable stay.</p>
			  <p>Please do not hesitate to reach out to us if you need any assistance during your time here. Our staff is available 24/7 to ensure your comfort and satisfaction.</p>
              <p>Thank you for choosing to stay with us. We hope you enjoy your stay and look forward to creating many wonderful memories with you.</p>
              <a class="button button--active home-banner-btn mt-4" href="#">Learn More</a>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- ================ welcome section end ================= --> 


    <!-- ================ Explore section start ================= -->
    <section class="section-margin">
      <div class="container">
        <div class="section-intro text-center pb-80px">
          <div class="section-intro__style">
            <img src="img/home/bed-icon.png" alt="">
          </div>
          <h2>Explore Our Rooms</h2>
        </div>

        <div class="row">
          <div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
            <div class="card card-explore">
              <div class="card-explore__img">
                <img class="card-img" src="img/home/explore1.png" alt="">
              </div>
              <div class="card-body">
                <h3 class="card-explore__price">$100.00 <sub>/ Per Night</sub></h3>
                <h4 class="card-explore__title"><a href="#">Superior Rooms</a></h4>
                <p>Scenic ocean views combined with comfort; Superior Rooms at Anantaya Resort & Spa Chilaw provide the ideal settings for a relaxing holiday. </p>
                <a class="card-explore__link" href="#">Book Now <i class="ti-arrow-right"></i></a>
              </div>
            </div>
          </div>

          <div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
            <div class="card card-explore">
              <div class="card-explore__img">
                <img class="card-img" src="img/home/explore2.png" alt="">
              </div>
              <div class="card-body">
                <h3 class="card-explore__price">$150.00 <sub>/ Per Night</sub></h3>
                <h4 class="card-explore__title"><a href="#">Deluxe Rooms</a></h4>
                <p>Enjoy a getaway with stunning sea and lagoon vistas. Deluxe Rooms at Anantaya Chilaw are elegantly designed to make you feel like home.</p>
                <a class="card-explore__link" href="#">Book Now <i class="ti-arrow-right"></i></a>
              </div>
            </div>
          </div>

          <div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
            <div class="card card-explore">
              <div class="card-explore__img">
                <img class="card-img" src="img/home/explore3.png" alt="">
              </div>
              <div class="card-body">
                <h3 class="card-explore__price">$170.00 <sub>/ Per Night</sub></h3>
                <h4 class="card-explore__title"><a href="#">Premium Rooms</a></h4>
                <p>16 Premium Rooms offer lagoon views and a range of facilities that guarantee total comfort during your stay. Who can say no to glorious views and a relaxing holiday! </p>
                <a class="card-explore__link" href="#">Book Now <i class="ti-arrow-right"></i></a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- ================ Explore section end ================= --> 


    <!-- ================ special section start ================= -->
    <section class="section-padding bg-porcelain">
      <div class="container">
        <div class="section-intro text-center pb-80px">
          <div class="section-intro__style">
            <img src="img/home/bed-icon.png" alt="">
          </div>
          <h2>Special Facilities</h2>
        </div>
        <div class="special-img mb-30px">
          <img class="img-fluid" src="img/home/special.jpg" alt="">
        </div>

        <div class="row">
          <div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
            <div class="card card-special">
              <div class="media align-items-center mb-1">
                <span class="card-special__icon"><i class="ti-home"></i></span>
                <div class="media-body">
                  <h4 class="card-special__title">Conference Room</h4>
                </div>
              </div>
              <div class="card-body">
                <p>Conference rooms are spaces where people gather to discuss ideas and collaborate on projects.</p>
              </div>
            </div>
          </div>

          <div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
            <div class="card card-special">
              <div class="media align-items-center mb-1">
                <span class="card-special__icon"><i class="ti-bell"></i></span>
                <div class="media-body">
                  <h4 class="card-special__title">Swimming Pool</h4>
                </div>
              </div>
              <div class="card-body">
                <p>A swimming pool is a refreshing place to cool off and enjoy aquatic activities.</p>
              </div>
            </div>
          </div>

          <div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
            <div class="card card-special">
              <div class="media align-items-center mb-1">
                <span class="card-special__icon"><i class="ti-car"></i></span>
                <div class="media-body">
                  <h4 class="card-special__title">Sports Culb</h4>
                </div>
              </div>
              <div class="card-body">
                <p>A sports club provides a community for individuals who share a passion for physical activity and healthy living./p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- ================ special section end ================= -->

    <!-- ================ carousel section start ================= -->
    <section class="section-margin">
      <div class="container">
        <div class="section-intro text-center pb-20px">
          <div class="section-intro__style">
            <img src="img/home/bed-icon.png" alt="">
          </div>
          <h2>Our Guest Love Us</h2>
        </div>
        <div class="owl-carousel owl-theme testi-carousel">
          <div class="testi-carousel__item">
            <div class="media">
              <div class="media-body">
                <p>Stayed there a while back. It's a picturesque hotel with a beautiful surrounding. There were 2 large pools and the plenty of space where you can walk and spend time leisurely, including the beach.!</p>
                <div class="testi-carousel__intro">
                  <h3>Avishka</h3>
                  <p>Guest</p>
                </div>
              </div>
            </div>
          </div>

          <div class="testi-carousel__item">
            <div class="media">
              <div class="media-body">
                <p>Beautiful location. Staff very friendly. Food was excellent.</p>
                <div class="testi-carousel__intro">
                  <h3>Dananjaya</h3>
                  <p>Guest</p>
                </div>
              </div>
            </div>
          </div>
		  
		  <div class="testi-carousel__item">
            <div class="media">
              <div class="media-body">
                <p>This was my second visit to Anantaya Chilaw. We stayed on 2022.12.17. Nice and calm vibe. Food is good with almost all the meat varieties. Good spread. Dinner was the pick of the meal. Nice rooms.</p>
                <div class="testi-carousel__intro">
                  <h3>Sabaragamuwa</h3>
                  <p>Guest</p>
                </div>
              </div>
            </div>
          </div>

          <div class="testi-carousel__item">
            <div class="media">
              <div class="media-body">
                <p>Excellent hotel and Great ambience.. Food is great.. Another think I really appreciate is, they kept the room ready before we arrive.</p>
                <div class="testi-carousel__intro">
                  <h3>Dilmini</h3>
                  <p>Guest</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- ================ news section end ================= -->

  </main>



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