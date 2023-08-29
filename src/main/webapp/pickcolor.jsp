<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Pick a Color</title>
</head>
<body>

<h1> Hey there! What's your favorite color?</h1>

<form action="viewcolor" METHOD="POST">
    <label for="favcolor">Select your favorite color:</label>
    <input type="color" id="favcolor" name="favcolor" value="#ff0000">
    <input type="submit" value="Submit">
</form>

</body>
</html>
