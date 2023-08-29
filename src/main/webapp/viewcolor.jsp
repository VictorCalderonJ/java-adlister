<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View your color!</title>
</head>
<body style="background-color: <%= request.getAttribute("color") %>;">

<h1> hello, your fav color is this background! </h1>
</body>
</html>
