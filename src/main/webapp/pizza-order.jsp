<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Pizza Order Form</title>
</head>
<body>
<h1>Pizza Order Form</h1>

<form action="pizzaOrder" method="POST">
<%--    Selecting Crust--%>
    <div>
        <label for="crust">Crust</label>
        <select name="crust">
            <option value="thin">Thin</option>
            <option value="regular">Regular</option>
            <option value="thick">Thick</option>
        </select>
    </div>
<%--    Selecting Sauce--%>
    <div>
        <label for="sauce">Sauce</label>
        <select name="sauce">
            <option value="red">Red</option>
            <option value="white">White</option>
            <option value="marinara">Marinara</option>
        </select>
    </div>
<%--    Selecting Size--%>
    <div>
        <label for="size">Size</label>
        <select name="size">
            <option value="small">Small</option>
            <option value="medium">Medium</option>
            <option value="large">Large</option>
        </select>
    </div>
<%--    Array of Toppings--%>
    <div>
        <label for="toppings">Toppings</label>
        <input type="checkbox" name="toppings[]" value="cheese">Cheese
        <input type="checkbox" name="toppings[]" value="pepperoni">Pepperoni
        <input type="checkbox" name="toppings[]" value="mushrooms">Mushrooms
        <input type="checkbox" name="toppings[]" value="olives">Olives
    </div>
<%--    Type Address--%>
    <div>
        <label for="address">Delivery Address</label>
        <input type="text" name="address" placeholder="123 Main Street, Anytown, CA 12345">
    </div>
    <div>
        <input type="submit" value="Submit">
    </div>
</form>


</body>
</html>
