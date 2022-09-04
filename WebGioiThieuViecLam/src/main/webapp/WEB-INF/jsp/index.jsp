<%-- 
    Document   : home
    Created on : 1 Sep 2022, 20:53:24
    Author     : tusnhi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!doctype html>
<html class="no-js" lang="zxx">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Job Board</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- <link rel="manifest" href="site.webmanifest"> -->
        <link rel="shortcut icon" type="image/x-icon" href="img/favicon.png">
        <!-- Place favicon.ico in the root directory -->

        <!-- CSS here -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/magnific-popup.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/themify-icons.css">
        <link rel="stylesheet" href="css/nice-select.css">
        <link rel="stylesheet" href="css/flaticon.css">
        <link rel="stylesheet" href="css/gijgo.css">
        <link rel="stylesheet" href="css/animate.min.css">
        <link rel="stylesheet" href="css/slicknav.css">

        <link rel="stylesheet" href="css/style.css">
        <!-- <link rel="stylesheet" href="css/responsive.css"> -->
    </head>

    <body>

        <!-- slider_area_start -->
        <div class="slider_area">
            <div class="single_slider  d-flex align-items-center slider_bg_1">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-7 col-md-6">
                            <div class="slider_text">
                                <!--<h5 class="wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".2s">4536+ Jobs listed</h5>-->
                                <h3 class="wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".3s">Find your Dream Job</h3>
                                <p class="wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".4s">We provide online instant cash loans with quick approval that suit your term length</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="ilstration_img wow fadeInRight d-none d-lg-block text-right" data-wow-duration="1s" data-wow-delay=".2s">
                <img src="img/banner/illustration.png" alt="">
            </div>
        </div>
        <!-- slider_area_end -->

        <!-- catagory_area -->
        <form action="">
            <div class="catagory_area">
                <div class="container">
                    <div class="row cat_search">
                        <div class="col-md-7">
                            <div class="single_input">
                                <input class="form-control" type="text" name="kw" placeholder="Search keyword">
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="job_btn">
                                <input type="submit" value="Search" class="btn boxed-btn3"/>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
        <!--/ catagory_area -->

        <!--               job_listing_area_start  -->
        <div class="job_listing_area">
            <div class="container">
                <div class="row align-items-center">
                    <div class="section_title">
                        <h3>Job Listing</h3>
                    </div>                                         
                    <div class="job_lists">
                        <div class="row">
                            <c:forEach var="recr" items="${recruitmentNewses}"> 
                                <div class="card col-md-4">
                                    <div class="card-body">
                                        <img class="img-fluid" src="${recr.image}" alt=" ${recr.title}" />
                                    </div>
                                    <div class="card-footer">
                                        <h3>${recr.title}</h3>
                                        <p>${recr.salary} VND</p>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--job_listing_area_end-->  


        <!-- link that opens popup -->
        <!-- JS here -->
        <script src="js/vendor/modernizr-3.5.0.min.js"></script>
        <script src="js/vendor/jquery-1.12.4.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/isotope.pkgd.min.js"></script>
        <script src="js/ajax-form.js"></script>
        <script src="js/waypoints.min.js"></script>
        <script src="js/jquery.counterup.min.js"></script>
        <script src="js/imagesloaded.pkgd.min.js"></script>
        <script src="js/scrollIt.js"></script>
        <script src="js/jquery.scrollUp.min.js"></script>
        <script src="js/wow.min.js"></script>
        <script src="js/nice-select.min.js"></script>
        <script src="js/jquery.slicknav.min.js"></script>
        <script src="js/jquery.magnific-popup.min.js"></script>
        <script src="js/plugins.js"></script>
        <script src="js/gijgo.min.js"></script>



        <!--contact js-->
        <script src="js/contact.js"></script>
        <script src="js/jquery.ajaxchimp.min.js"></script>
        <script src="js/jquery.form.js"></script>
        <script src="js/jquery.validate.min.js"></script>
        <script src="js/mail-script.js"></script>


        <script src="js/main.js"></script>
    </body>

</html>