<%-- 
    Document   : header
    Created on : 1 Sep 2022, 00:12:19
    Author     : tusnhi
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<header>
    <div class="header-area ">
        <div id="sticky-header" class="main-header-area">
            <div class="container-fluid ">
                <div class="header_bottom_border">
                    <div class="row align-items-center">
                        <div class="col-xl-3 col-lg-2">
                            <div class="logo">
                                <a href="<c:url value="/"/>">
                                    <img src="img/logo.png" alt="">
                                </a>
                            </div>
                        </div>
                        <div class="col-xl-6 col-lg-7">
                            <div class="main-menu  d-none d-lg-block">
                                <nav>
                                    <ul id="navigation">
                                        <li><a href="<c:url value="/" />">Home</a></li>
                                        <!--                                        <li><a href="jobs.html">Browse Job</a></li>
                                                                                <li><a href="#">pages <i class="ti-angle-down"></i></a>
                                                                                    <ul class="submenu">
                                                                                        <li><a href="candidate.html">Candidates </a></li>
                                                                                        <li><a href="job_details.html">Job details </a></li>
                                                                                    </ul>
                                                                                </li>-->
                                    </ul>
                                </nav>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-3 d-none d-lg-block">
                            <div class="Appointment">
                                <div class="phone_num d-none d-xl-block">
                                    <li class="nav-item active"><a class="nav-link " href="<c:url value="/login"/>">Login</a></li>
                                </div>
                                <div class="d-none d-lg-block">
                                    <li class="nav-item active"><a class="boxed-btn3" "nav-link " href="<c:url value="/register"/>">Register</a></li>

                                </div>
                                <div class="d-none d-lg-block">
                                    <li class="nav-item active"><a class= "nav-link " href="<c:url value="/logout"/>">Log out</a></li>
                                </div>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="mobile_menu d-block d-lg-none"></div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</header>

