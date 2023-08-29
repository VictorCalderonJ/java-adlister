<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--do get and do post (inside the class)--%>

<%
    if(request.getMethod().equalsIgnoreCase("POST")) {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        if (username.equals("admin") && password.equals("password"))
            response.sendRedirect("profile.jsp");
    }
%>

<html>
<head>
    <title>Login</title>
</head>
<body>
<form action="login.jsp" method="POST">
    <label for="username">Username:</label>
    <input type="text" id="username" name="username" required><br><br>
    <label for="password">Password:</label>
    <input type="password" id="password" name="password" required><br><br>
    <input type="submit" value="Login">
</form>

<c:choose>
    <c:when test="${param.usernmae != null}">
        <c:if test="${param.usernmae != usern}">
            <p> Welcome, ${param.username}!</p>
        </c:if>
    </c:when>
    <c:otherwise>
        <p>Please fill out the form.</p>
    </c:otherwise>
</c:choose>



</body>
</html>
