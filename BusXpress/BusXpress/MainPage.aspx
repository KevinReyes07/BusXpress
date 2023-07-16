<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="BusXpress.MainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>BusXpress</title>
     <meta name="description" content=""/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>

       
		<!-- CSS here -->
            <link rel="stylesheet" href="assets/css/bootstrap.min.css"/>
            <link rel="stylesheet" href="assets/css/owl.carousel.min.css"/>
            <link rel="stylesheet" href="assets/css/gijgo.css"/>
            <link rel="stylesheet" href="assets/css/slicknav.css"/>
            <link rel="stylesheet" href="assets/css/animate.min.css"/>
            <link rel="stylesheet" href="assets/css/magnific-popup.css"/>
            <link rel="stylesheet" href="assets/css/fontawesome-all.min.css"/>
            <link rel="stylesheet" href="assets/css/themify-icons.css"/>
            <link rel="stylesheet" href="assets/css/slick.css"/>
            <link rel="stylesheet" href="assets/css/nice-select.css"/>
            <link rel="stylesheet" href="assets/css/style.css"/>
            <link rel="stylesheet" href="assets/css/responsive.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div>
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
                               <a href="/MainPage.aspx"><img src="assets/img/logo/logobus.png" alt=""></a>
                            </div>
                        </div>
                    <div class="col-xl-8 col-lg-8">
                            <main-menu >
                            <div class="main-menu f-right d-none d-lg-block">
                                <nav>
                                    <ul id="navigation">                                                                                                                                     
                                        <li><a href="MainPage.aspx">Home</a></li>
                                        <li><a href="/About.aspx">About</a></li>
                                        <li><a href="/TravelOptions.aspx">Tickets</a></li>
                                        
                                        <!--li><a href="blog.html">Blog</a>
                                            <ul class="submenu">
                                                <li><a href="blog.html">Blog</a></li>
                                                <li><a href="single-blog.html">Blog Details</a></li>
                                            </ul>
                                        </!--li-->
                                        <!--li><a href="#">Pages</a>
                                            <ul class="submenu">
                                                <li><a href="rooms.html">Rooms</a>
                                                <li><a href="elements.html">Element</a></li>
                                            </ul>
                                        </li-->
                                <%--        <li><a href="contact.html">Contact</a></li>
                                    </ul>
                                </nav>--%>
                            </div>
                        </div>             
                        <!--div class="col-xl-2 col-lg-2">
                            <-- header-btn >
                            <div class="header-btn">
                                <a href="#"  class="btn btn1 d-none d-lg-block ">Sign Up</a>
                                
                            </div>
                        </!--div>
                        <div class="col-xl-2 col-lg-2">
                            <!-- header-btn -->
                            <div class="header-btn">
                                <a href="/Welcome.aspx" class="btn btn2 d-none d-lg-block ">Log Out</a>
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

        <!-- slider Area Start-->
        <div class="slider-area ">
            <!-- Mobile Menu -->
            <div class="slider-active dot-style">
                <div class="single-slider  hero-overly slider-height d-flex align-items-center" data-background="assets/img/hero/bus1.jpg" >
                    <div class="container">
                        <div class="row justify-content-center text-center">
                            <div class="col-xl-9">
                                <div class="h1-slider-caption">
                                    <h1 data-animation="fadeInUp" data-delay=".4s">top trips in central america</h1>
                                    <!--h3 data-animation="fadeInDown" data-delay=".4s">BusXpress</h3-->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="single-slider  hero-overly slider-height d-flex align-items-center" data-background="assets/img/Busdriver.jpg" >
                    <div class="container">
                        <div class="row justify-content-center text-center">
                            <div class="col-xl-9">
                                <div class="h1-slider-caption">
                                    <h1 data-animation="fadeInUp" data-delay=".4s">Safety at the wheel in all your trips</h1>
                                    <!--h3 data-animation="fadeInDown" data-delay=".4s">BusXpress</!--h3-->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="single-slider  hero-overly slider-height d-flex align-items-center" data-background="assets/img/Turismoo.jpg" >
                    <div class="container">
                        <div class="row justify-content-center text-center">
                            <div class="col-xl-9">
                                <div class="h1-slider-caption">
                                    <h1 data-animation="fadeInUp" data-delay=".4s">Visit and learn more about our tourist attractions</h1>
                                    <!--h3 data-animation="fadeInDown" data-delay=".4s">BusXpress</h3-->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- slider Area End-->

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

        <!-- Make customer Start-->
        <section class="make-customer-area customar-padding fix">
            <div class="container-fluid p-0">
                <div class="row">
                   <div class="col-xl-5 col-lg-6">
                        <div class="customer-img mb-120">
                            <img src="assets/img/customer/BusAbout.jpg" class="customar-img1" alt="">
                            <img src="assets/img/customer/customar2.png" class="customar-img2" alt="">
                            <div class="service-experience heartbeat">
                                <h3>6 Years of Service<br>Experience</h3>
                            </div>
                        </div>
                   </div>
                    <div class=" col-xl-4 col-lg-4">
                        <div class="customer-caption">
                            <span>About our company</span>
                            <h2>BusXpress</h2>
                            <div class="caption-details">
                                <p class="pera-dtails">We started as a small team of 5 persons, we wanted to create a good website for people who wants to travel around Central America, all this project was created with external applications that help us to complete our website. </p>
                                <p></p>
                                <a href="/About.aspx" class="btn more-btn1">Learn More <i class="ti-angle-right"></i> </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Make customer End-->

        <!-- Room Start -->
        <section class="room-area">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-xl-8">
                        <!--font-back-tittle  -->
                        <div class="font-back-tittle mb-45">
                            <div class="archivment-front">
                                <h3>Our Travels</h3>
                            </div>
                            <h3 class="archivment-back">Our Travels</h3>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xl-4 col-lg-6 col-md-6">
                        <!-- Single Room -->
                        <div class="single-room mb-50">
                            <div class="room-img">
                               <a href="/TravelOptions.aspx"><img src="assets/img/El Salvador.jpeg" alt=""></a>
                            </div>
                            <div class="room-caption">
                                <h3><a href="/TravelOptions.aspx">El Salvador</a></h3>
                                <div class="per-night">
                                    <span><u></u><span> El Salvador is a country full of tourist attractions that offer a unique and unforgettable experience. From beaches to volcanoes, archaeological sites and colonial cities, there is something for everyone. In addition, the cuisine is delicious and varied, making the experience even more memorable. </span></span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-6 col-md-6">
                        <!-- Single Room -->
                        <div class="single-room mb-50">
                            <div class="room-img">
                               <a href="/TravelOptions.aspx"><img src="assets/img/Guatemala.jpg" alt=""></a>
                            </div>
                            <div class="room-caption">
                                <h3><a href="/TravelOptions.aspx">Guatemala</a></h3>
                                <div class="per-night">
                                    <span><u></u><span> Guatemala is a country full of natural beauty, with volcanoes, lakes and national parks that attract and captivate tourists. Some of the most popular places are the Pacaya Volcano, Lake Atitlan and Semuc Champey National Park. In addition, Guatemala is famous for its biodiversity and unique species of flora and fauna. </span></span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-6 col-md-6">
                        <!-- Single Room -->
                        <div class="single-room mb-50">
                            <div class="room-img">
                               <a href="/TravelOptions.aspx"> <img src="assets/img/Costa Rica.png" alt=""></a>
                            </div>
                            <div class="room-caption">
                                <h3><a href="/TravelOptions.aspx">Costa Rica</a></h3>
                                <div class="per-night">
                                    <span><u></u><span> Costa Rica offers a wide variety of outdoor activities, such as hiking on nature trails, exploring national parks, rafting, canopy tours and much more. Some places you could visit are the Arenal Volcano, the Pacuare River and the Monteverde Cloud Forest Biological Reserve. </span></span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-6 col-md-6">
                        <!-- Single Room -->
                        <div class="single-room mb-50">
                            <div class="room-img">
                                <a href="/TravelOptions.aspx"><img src="assets/img/Nicaragua.jpg" alt=""></a>
                            </div>
                            <div class="room-caption">
                                <h3><a href="/TravelOptions.aspx">Nicaragua</a></h3>
                                <div class="per-night">
                                    <span><u></u> <span> Nicaragua is a country full of natural beauty, with beaches, volcanoes and national parks that attract and captivate tourists. Some of the most popular places are Masaya Volcano, Mombacho Volcano National Park and Cerro Negro National Park. In addition, Nicaragua is famous for its biodiversity and unique flora and fauna species. </span></span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-6 col-md-6">
                        <!-- Single Room -->
                        <div class="single-room mb-50">
                            <div class="room-img">
                                <a href="/TravelOptions.aspx"><img src="assets/img/Honduras.jpg" alt=""></a>
                            </div>
                            <div class="room-caption">
                                <h3><a href="/TravelOptions.aspx">Honduras</a></h3>
                                <div class="per-night">
                                    <span><u></u><span> Honduras has a large number of national parks and reserves that offer a wide variety of outdoor activities such as hiking, bird watching, boating and much more. Some of the most popular places are Pico Bonito National Park, Rio Platano Biosphere Reserve and Lake Yojoa. </span></span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-6 col-md-6">
                        <!-- Single Room -->
                        <div class="single-room mb-50">
                            <div class="room-img">
                               <a href="/TravelOptions.aspx"> <img src="assets/img/Panama.png" alt=""></a>
                            </div>
                            <div class="room-caption">
                                <h3><a href="/TravelOptions.aspx">Panama</a></h3>
                                <div class="per-night">
                                    <span><u></u><span> Panama is a mix of modern and historic. You can visit Casco Viejo, a historic district with colonial buildings and cobblestone streets, or the Panama Canal, one of the wonders of modern engineering. You can also enjoy the nightlife in the Zona Rosa or go shopping in the Albrook Ma. </span></span>
                                </div>
                            </div>
                        </div>
                    </div>
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
            <!-- Single Left img --
            <div class="single-dining-area left-img"> 
                <div class="container">
                    <div class="row justify-content-end">
                        <div class="col-lg-8 col-md-8">
                            <div class="dining-caption">
                                <span>About Us</span>
                                <h3>Our Company and About Travels</h3>
                                <p><br> Our BusXpress team members are all willing to help their team succeed and achieve the company's goals. They treat others with respect and understand that everyone has something to contribute, regardless of position or status, have superior written and oral communication skills that are pleasant to be around.<br></p>
                                <a href="/About.aspx" class="btn border-btn">Learn More<i class="ti-angle-right"></i> </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>               
       </!--div-->
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
        </div>
    </form>
</body>
</html>
