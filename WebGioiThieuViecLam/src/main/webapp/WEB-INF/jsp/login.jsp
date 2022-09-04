<%-- 
    Document   : login
    Created on : 24 Aug 2022, 16:57:56
    Author     : tusnhi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<br>
<br>
<br>
<br>
<!--<h1 class="text-center ">DANG NHAP</h1>-->


<c:if test="${param.error != null}">
    <div class="alert alert-danger">
        Da co loi xay ra! Vui long quay lai sau!
    </div>
</c:if>

<c:url value="/login" var="action" />

<!--
    <div class="form-group">

        <label for="username">Username</label>
        <input type="text" id="username" name="username" class="form-control" />
    </div>
    <div class="form-group">
        <label for="password">Password</label>
        <input type="password" id="password" name="password" class="form-control" />
    </div>
    
    <div class="form-group">
        <input type="submit" value="DANG NHAP" class="boxed-btn3"/>

    </div>
</form>-->


<form method="post" >  
    <div class="container-fluid vh-100" style="margin-top:50px">
        <div class="" style="margin-top:100px">
            <div class="rounded d-flex justify-content-center">
                <div class="col-md-4 col-sm-12 shadow-lg p-5 bg-light">
                    <div class="text-center">
                        <h3 class="text-primary">Sign In</h3>
                    </div>
                        <div class="p-4">
                            <div class="input-group mb-3">
                                <span><i
                                        class="bi bi-person-plus-fill text-white"></i></span>
                                <input type="text" id="username" name="username" class="form-control" placeholder="Username">
                                <label for="username"></label>
                            </div>
                            <div>
                                <span>
                                       <i class="bi-key-fill" text-white"></i></span>
                                <input type="password" id="password" name="password" class="form-control" placeholder="password">
                            </div>
                            <div class="form-check" style="margin-top:10px">
                                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                <label class="form-check-label" for="flexCheckDefault">
                                    Remember Me
                                </label>
                            </div >
                            <button class="boxed-btn3" type="submit" style="margin-top: 10px">
                                Login
                            </button>
                            <p class="text-center mt-5">Don't have an account?
                                <a href="<c:url value="/register"/>" class="fw-bold text-body" ><u>Register</u></a>
                            </p>
                        </div>
                </div>
            </div>
        </div>
    </div>
</form>