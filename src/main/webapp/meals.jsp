<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://sargue.net/jsptags/time" prefix="javatime" %>
<html>
<head>
    <title>Meals</title>
</head>
<body>
<h3><a href="index.html">Home</a></h3>
<hr>
<h2>Meals</h2>

<table border="1">
    <tr>
        <th>Дата</th>
        <th>Название</th>
        <th>Калории</th>
    </tr>

    <c:forEach var="meal" items="${listMeal}">
        <c:set var="color" value="${meal.excess ? '#FF0000' : '#008000'}"/>
    <tr>
        <td><font color=${color}><javatime:format value="${meal.dateTime}" style="MS"/></font></td>
        <td><font color=${color}>${meal.description}</font></td>
        <td><font color=${color}>${meal.calories}</font></td>
    </tr>
    </c:forEach>

</body>
</html>