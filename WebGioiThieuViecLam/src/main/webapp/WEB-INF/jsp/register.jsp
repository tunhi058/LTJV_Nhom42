<%-- 
    Document   : register
    Created on : Sep 2, 2022, 8:27:57 PM
    Author     : Cuong
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<br>
<br>
<br>
<br>
<br>


<c:if test="${errMsg != null}">
    <div class="alert alert-danger">
        ${errMsg}

    </div>

</c:if>

<c:url value="/register" var="action" />

<!--<form method="post" action="${action}" modelAttribute="user">
    <div class="form-group">
        <label for="firstname">First Name</label>
        <input type="text" id="firstname" path="firstName" class="form-control" />
    </div>
    <div class="form-group">
        <label for="lastname">Last Name</label>
        <input type="text" id="lastname" path="lastName" class="form-control" />
    </div>
    <div class="form-group">
        <label for="email">Email</label>
        <input type="text" id="email" path="email" class="form-control" />
    </div>
    <div class="form-group">
        <label for="username">Username</label>
        <input type="text" id="username" path="username" class="form-control" />
    </div>
    <div class="form-group">
        <label for="password">Password</label>
        <input type="password" id="password" path="password" class="form-control" />
    </div>
    <div class="form-group">
        <label for="confirm-password">Confirm Password</label>
        <input type="password" id="confirm-password" path="confirmPassword" class="form-control" />
    </div>

    <div class="form-group">
        <input type="submit" value="DANG KY" class="btn boxed-btn3"/>
    </div>
</form>-->


<form:form method="post" action="${action}" modelAttribute="user">
    <div class="mask d-flex align-items-center h-100 gradient-custom-3">
        <div class="container h-100">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-12 col-md-9 col-lg-7 col-xl-6">
                    <div class="card" style="border-radius: 15px;">
                        <div class="card-body p-5">
                            <h2 class="text-uppercase text-center mb-5">Create an account</h2>

                           
                                <div class="form-outline mb-4">
                                    <label for="firstname">First Name</label>
                                    <form:input type="text" id="firstname" path="firstName" name="firstName" class="form-control" />
                                </div>

                                <div class="form-outline mb-4">
                                    <label for="lastname">Last Name</label>
                                    <form:input type="text" id="lastname" path="lastName" name="lastName" class="form-control" />
                                </div>

                                <div class="form-outline mb-4">
                                    <label for="email">Email</label>
                                    <form:input type="text" id="email" path="email" name="email" class="form-control" />
                                </div>

                                <div class="form-outline mb-4">
                                    <label for="username">Username</label>
                                    <form:input type="text" id="username" path="username" name="username" class="form-control" />
                                </div>

                                <div class="form-outline mb-4">
                                    <label for="password">Password</label>
                                    <form:input type="password" id="password" path="password" name="password" class="form-control" />
                                </div>

                                <div class="form-outline mb-4">
                                    <label for="confirm-password">Confirm Password</label>
                                    <form:input type="password" id="confirm-password" path="confirmPassword" class="form-control" />

                                </div>

                                <div class="d-flex justify-content-center">
                                    <input type="submit"
                                            class="btn btn-success btn-block btn-lg gradient-custom-4 text-body" value="Register"/>
                                </div>
                                <p class="text-center text-muted mt-5 mb-0">Have already an account? <a href="<c:url value="/login"/>"
                                                                                                        class="fw-bold text-body" ><u>Login here</u></a></p>
                          
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</form:form>
