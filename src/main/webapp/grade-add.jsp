<%--
  Created by IntelliJ IDEA.
  User: so-vi
  Date: 18.09.2019
  Time: 14:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Grade</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="/style.css">
</head>
<body>
<form action="/grade-add" method ="post">
    Subject: <select name="grade_subject">
                <option value="ENGLISH">English</option>
                <option value="POLISH">Polish</option>
                <option value="CHEMISTRY">Chemistry</option>
                <option value="IT">IT</option>
                <option value="HISTORY">HISTORY</option>
                <option value="MATH">MATH</option>
                <option value="PHYSICS">PHYSICS</option>
            </select>
    <br/>
    Value:  <select name="grade_value">
                <option>1.0</option>
                <option>1.5</option>
                <option>2.0</option>
                <option>2.5</option>
                <option>3.0</option>
                <option>3.5</option>
                <option>4.0</option>
                <option>4.5</option>
                <option>5.0</option>
                <option>5.5</option>
                <option>6.0</option>
            </select>
    <br/>
    <br/>
    <input type="submit">
</form>
</body>
</html>
