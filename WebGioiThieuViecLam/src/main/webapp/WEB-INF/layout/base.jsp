<%-- 
    Document   : base
    Created on : 24 Aug 2022, 20:40:38
    Author     : tusnhi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>
            <tiles:insertAttribute name="title" />
        </title>
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
