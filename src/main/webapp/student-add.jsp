<%@ page import="model.Student" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: so-vi
  Date: 17.09.2019
  Time: 19:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Student</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="/style.css">
</head>
<body>
<form action="/student-add" method="post">
    Name: <input type="text" name="student_name">
    <br/>
    Surname: <input type="text" name="student_lastname">
    <br/>
    Age: <input type="number" name="student_age">
    <br/>
    Is Alive: <input type="checkbox" name="student_isalive">
    <br/>
    <br/>
    <input type="submit">

</form>

</body>
</html>
