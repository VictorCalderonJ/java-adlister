
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Register" />
    </jsp:include>
</head>
<head>
    <title>Registration Form</title>
</head>
<body>

<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<h1>Registration Form</h1>
<c:if test="${invalid == true}">
    <h1> Please fill out For</h1>
</c:if>
<form action="/register" method="POST">
    <label for="username">Username:</label>
    <input type="text" id="username" name="username" required><br><br>

    <label for="email">Email:</label>
    <input type="email" id="email" name="email" required><br><br>

    <label for="password">Password:</label>
    <input type="password" id="password" name="password" required><br><br>

    <label for="confirm_password">Confirm Password:</label>
    <input type="password" id="confirm_password" name="confirm_password" required><br><br>

    <input type="submit" value="Register">
</form>

</body>
</html>
