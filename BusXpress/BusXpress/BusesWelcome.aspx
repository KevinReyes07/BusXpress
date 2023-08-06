<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BusesWelcome.aspx.cs" Inherits="BusXpress.BusesWelcome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Buses - Welcome</title>

    <!-- CSS here -->
            <link rel="stylesheet" href="assets/css/bootstrap.min.css">
            <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
            <link rel="stylesheet" href="assets/css/gijgo.css">
            <link rel="stylesheet" href="assets/css/slicknav.css">
            <link rel="stylesheet" href="assets/css/animate.min.css">
            <link rel="stylesheet" href="assets/css/magnific-popup.css">
            <link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
            <link rel="stylesheet" href="assets/css/themify-icons.css">
            <link rel="stylesheet" href="assets/css/slick.css">
            <link rel="stylesheet" href="assets/css/nice-select.css">
            <link rel="stylesheet" href="assets/css/style.css">
            <link rel="stylesheet" href="assets/css/responsive.css">
</head>
<body>
    <form id="form1" runat="server">

        <!-- Preloader Start -->
    <div id="preloader-active">
        <div class="preloader d-flex align-items-center justify-content-center">
            <div class="preloader-inner position-relative">
                <div class="preloader-circle"></div>
                <div class="preloader-img pere-text">
                    <strong>BusXpress</b>
                </div>
            </div>
        </div>
    </div>
    <!-- Preloader Start -->

    <header>
        <!-- Header Start -->
       <div class="header-area header-sticky">
            <div class="main-header ">
                <div class="container">
                    <div class="row align-items-center">
                        <!-- logo -->
                        <div class="col-xl-2 col-lg-2">
                            <div class="logo">
                               <a href="/Welcome.aspx"><img src="assets/img/logo/logobus.png" alt=""></a>
                            </div>
                        </div>
                    <!--div class="col-xl-8 col-lg-8">
                            <main-menu >
                            <div class="main-menu f-right d-none d-lg-block">
                                <nav>
                                    <ul id="navigation">                                                                                                                                     
                                        <li><a href="index.html">Log In</a></li>
                                        <li><a href="about.html">Sign Up</a></li>
                                        <li><a href="services.html">Service</a></li>
                                        
                                        <li><a href="blog.html">Blog</a>
                                            <ul class="submenu">
                                                <li><a href="blog.html">Blog</a></li>
                                                <li><a href="single-blog.html">Blog Details</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="#">Pages</a>
                                            <ul class="submenu">
                                                <li><a href="rooms.html">Rooms</a>
                                                <li><a href="elements.html">Element</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="contact.html">Contact</a></li>
                                    </ul>
                                </nav>
                            </div>
                        </div-->      
                        
                        <%--***************************************--%>

                        <div class="col-xl-2 col-lg-2">
                            <!-- header-btn -->
                            <div class="header-btn">
                                <a href="/SignUp.aspx"  class="btn btn1 d-none d-lg-block ">Sign In</a>
                                
                            </div>
                        </div>
                        <div class="col-xl-2 col-lg-2">
                            <!-- header-btn -->
                            <div class="header-btn">
                                <a href="/Login.aspx" class="btn btn1 d-none d-lg-block ">Log In</a>
                            </div>
                        </div>
                        
                        <!-- Mobile Menu -->
                        <div class="col-12">
                            <div class="mobile_menu d-block d-lg-none"></div>
                        </div>
                    </div>
                </div>
            </div>
       </div>
        <!-- Header End -->
    </header>
    <main>

       

        <!-- Booking Room Start-->
        <div class="booking-area">
            <div class="container">
               <div class="row ">
               <div class="col-12">
                <form action="">
               
            </form>
               </div>
               </div>
            </div>
        </div>
        <!-- Booking Room End-->

     

        <!-- Room Start -->
        <section class="room-area">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-xl-8">
                        <!--font-back-tittle  -->
                        <br />
                          <br />
                          <br />
                          <br />
                          <br />
                          <br />
                          <br />
                          <br />
                          <br />
                        <div class="font-back-tittle mb-45">
                            <div class="archivment-front">
                                <h3>Avalibe buses</h3>
                            </div>
                            <h3 class="archivment-back">Our buses</h3>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xl-4 col-lg-6 col-md-6">
                        <!-- Single Room -->
                        <div class="single-room mb-50">
                            <div class="room-img">
                               <a href="/Login.aspx"><img src="images/autobus1-0.jpg" alt=""></a>
                            </div>
                            <div class="room-caption">
                                <h3><a href="/Login.aspx">BSX 1002-50</a></h3>
                                <div class="per-night">
                                    <span><u></u><span> Capacity: 24 </span></span>
                                    <br />
                                    <br />
                                     <span><u></u><span> Departs from: Terminal orient, San Salvador </span></span>
                                    <br />
                                    <br />
                                      <span><u></u><span> Arrive: San Jose, Costa Rica </span></span>
                                    <br />
                                    <br />
                                    </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-6 col-md-6">
                        <!-- Single Room -->
                       <div class="single-room mb-50">
                            <div class="room-img">
                               <a href="/Login.aspx"><img src="images/autobus2-0.jpg" alt=""></a>
                            </div>
                            <div class="room-caption">
                                <h3><a href="/Login.aspx">BSX 631-503</a></h3>
                                <div class="per-night">
                                    <span><u></u><span> Capacity: 24 </span></span>
                                    <br />
                                    <br />
                                     <span><u></u><span> Departs from: Terminal south, Honduras </span></span>
                                    <br />
                                    <br />
                                      <span><u></u><span> Arrive: San Salvador, El Salvador </span></span>
                                    <br />
                                    <br />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-6 col-md-6">
                        <!-- Single Room -->
                      <div class="single-room mb-50">
                            <div class="room-img">
                               <a href="/Login.aspx"><img src="images/autobus3-0.jpg" alt=""></a>
                            </div>
                            <div class="room-caption">
                                <h3><a href="/Login.aspx">BSX 464-20</a></h3>
                                <div class="per-night">
                                    <span><u></u><span> Capacity: 24 </span></span>
                                    <br />
                                    <br />
                                     <span><u></u><span> Departs from: Terminal south, Costa Rica </span></span>
                                    <br />
                                    <br />
                                      <span><u></u><span> Arrive: San Salvador, El Salvador </span></span>
                                    <br />
                                    <br />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-6 col-md-6">
                        <!-- Single Room -->
                       <div class="single-room mb-50">
                            <div class="room-img">
                               <a href="/Login.aspx"><img src="images/autobus4-0.jpg" alt=""></a>
                            </div>
                            <div class="room-caption">
                                <h3><a href="/Login.aspx">BSX 512-9</a></h3>
                                <div class="per-night">
                                    <span><u></u><span> Capacity: 24 </span></span>
                                    <br />
                                    <br />
                                     <span><u></u><span> Departs from: Terminal orient, San Salvador </span></span>
                                    <br />
                                    <br />
                                      <span><u></u><span> Arrive:  Terminal north, Panama </span></span>
                                    <br />
                                    <br />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-6 col-md-6">
                        <!-- Single Room -->
                       <div class="single-room mb-50">
                            <div class="room-img">
                               <a href="/Login.aspx"><img src="images/autobus5-0.jpg" alt=""></a>
                            </div>
                            <div class="room-caption">
                                <h3><a href="/Login.aspx">BSX 405-24</a></h3>
                                <div class="per-night">
                                    <span><u></u><span> Capacity: 24 </span></span>
                                    <br />
                                    <br />
                                     <span><u></u><span> Departs from:  Terminal north, Panama </span></span>
                                    <br />
                                    <br />
                                      <span><u></u><span> Arrive: San Jose, Costa Rica </span></span>
                                    <br />
                                    <br />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-6 col-md-6">
                        <!-- Single Room -->
                       <div class="single-room mb-50">
                            <div class="room-img">
                               <a href="/Login.aspx"><img src="images/autobus6-0.jpg" alt=""></a>
                            </div>
                            <div class="room-caption">
                                <h3><a href="/Login.aspx">BSX 503-54</a></h3>
                                <div class="per-night">
                                    <span><u></u><span> Capacity: 24 </span></span>
                                    <br />
                                    <br />
                                     <span><u></u><span> Departs from: Terminal orient, Guatemala </span></span>
                                    <br />
                                    <br />
                                      <span><u></u><span> Arrive: Terminal north, Panama </span></span>
                                    <br />
                                    <br />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-6 col-md-6">
                </div>

                <!-------<div class="row justify-content-center">
                    <div class="room-btn pt-70">
                        <a href="#" class="btn view-btn1">View more  <i class="ti-angle-right"></i> </a>
                    </div>
                </div>----->
            </div>
        </section>
        <!-- Room End -->

        <!-- Dining Start -->
        <!--div class="dining-area dining-padding-top">
            <!-- Single Left --
            <div class="single-dining-area left-img"> 
                <div class="container">
                    <div class="row justify-content-end">
                        <div class="col-lg-8 col-md-8">
                            <div class="dining-caption">
                                <span>BusXpress</span>
                                <h3>Our company and travels</h3>
                                <p><br> Our BusXpress team members are all willing to help their team succeed and achieve the company's goals. They treat others with respect and understand that everyone has something to contribute, regardless of position or status, have superior written and oral communication skills that are pleasant to be around.<br></p>
                                <a href="/AboutUsWelcome.aspx" class="btn border-btn">Learn More<i class="ti-angle-right"></i> </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>               
       </!--div>
       <!-- Footer End-->
   </footer>
   
	<!-- JS here -->
	
		<!-- All JS Custom Plugins Link Here here -->
        <script src="./assets/js/vendor/modernizr-3.5.0.min.js"></script>
		
		<!-- Jquery, Popper, Bootstrap -->
		<script src="./assets/js/vendor/jquery-1.12.4.min.js"></script>
        <script src="./assets/js/popper.min.js"></script>
        <script src="./assets/js/bootstrap.min.js"></script>
	    <!-- Jquery Mobile Menu -->
        <script src="./assets/js/jquery.slicknav.min.js"></script>

		<!-- Jquery Slick , Owl-Carousel Plugins -->
        <script src="./assets/js/owl.carousel.min.js"></script>
        <script src="./assets/js/slick.min.js"></script>
        <!-- Date Picker -->
        <script src="./assets/js/gijgo.min.js"></script>
		<!-- One Page, Animated-HeadLin -->
        <script src="./assets/js/wow.min.js"></script>
		<script src="./assets/js/animated.headline.js"></script>
        <script src="./assets/js/jquery.magnific-popup.js"></script>

		<!-- Scrollup, nice-select, sticky -->
        <script src="./assets/js/jquery.scrollUp.min.js"></script>
        <script src="./assets/js/jquery.nice-select.min.js"></script>
		<script src="./assets/js/jquery.sticky.js"></script>
        
        <!-- contact js -->
        <script src="./assets/js/contact.js"></script>
        <script src="./assets/js/jquery.form.js"></script>
        <script src="./assets/js/jquery.validate.min.js"></script>
        <script src="./assets/js/mail-script.js"></script>
        <script src="./assets/js/jquery.ajaxchimp.min.js"></script>
        
		<!-- Jquery Plugins, main Jquery -->	
        <script src="./assets/js/plugins.js"></script>
        <script src="./assets/js/main.js"></script>
        <div>
        </div>
    </form>
</body>
</html>
