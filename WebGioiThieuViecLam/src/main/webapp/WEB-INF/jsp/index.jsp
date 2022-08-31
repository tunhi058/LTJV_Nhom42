<%-- 
    Document   : index
    Created on : 19 Aug 2022, 19:21:36
    Author     : tusnhi
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
    </head>
    <body>
        <h1>Welcome to website!!</h1>
        <h1>Hello ${name}</h1>
        
        <h1>${fullName}</h1>
        <form:form method="post" action="/hello-post" modelAttribute="user">
            <form:input path="firstName" />
            <form:input path="lastName" />
            <input type="submit" value="Send" />
        </form:form>
    </body>
</html>
