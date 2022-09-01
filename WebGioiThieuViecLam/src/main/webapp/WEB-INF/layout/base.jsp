<%-- 
    Document   : base
    Created on : 24 Aug 2022, 20:40:38
    Author     : tusnhi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>JobEntry - Job Portal Website Template</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="" name="keywords">
        <meta content="" name="description">

        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com/%22%3E
              <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Inter:wght@700;800&display=swap" rel="stylesheet">

        <!-- Icon Font Stylesheet -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

        <!-- Libraries Stylesheet -->
        <link href="lib/animate/animate.min.css" rel="stylesheet">
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

        <!-- Customized Bootstrap Stylesheet -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="css/style.css" rel="stylesheet">

        <!-- CSS here -->

        <link  href="<c:url value="/css/animate.css"/>" rel="stylesheet">
        <link  href="<c:url value="/css/animate.min.css"/>" rel="stylesheet">
        <link  href="<c:url value="/css/bootstrap.min.css"/>" rel="stylesheet">
        <link rel="stylesheet" href="<c:url value="/css/owl.carousel.css"/>">
        <link rel="stylesheet" href="<c:url value="/css/owl.carousel.min.css"/>">
        <link rel="stylesheet" href="<c:url value="/css/owl.theme.default.css"/>">

        <link rel="stylesheet" href="<c:url value="/css/theme.default.min.css"/>">
        <link rel="stylesheet" href="<c:url value="/css/theme.green.css"/>">
        <link rel="stylesheet" href="<c:url value="/css/theme.green.min.css"/>">
        <link rel="stylesheet" href="<c:url value="/css/style.css"/>" >
    </head>
    <body>
        <!-- HEADER-->
        <tiles:insertAttribute name="header" />

        <!-- CONTENT-->
        <tiles:insertAttribute name="content" />

        <!-- FOOTER-->
        <tiles:insertAttribute name="footer" />


    </body>
</html>
