<%@ page import="model.Student" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: so-vi
  Date: 17.09.2019
  Time: 19:13
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Add Student</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="/style.css">
</head>
<body>
<jsp:include page="/navigator.jsp"/>
<%--to pod spodem to skrócony zapis if'a -> jesli student jest albo go nie ma--%>
<form action="${requestScope.studentId==null ?'/student-add' : '/student-edit'}" method="post">
    <input type="hidden" name="student_id" value="${requestScope.studentId}">

    Name: <input type="text" name="student_name" value="${requestScope.studentName}">
    <br/>
    Surname: <input type="text" name="student_lastname" value="${requestScope.studentSurname}">
    <br/>
    Age: <input type="number" name="student_age" value="${requestScope.studentAge}">
    <br/>
    Is Alive: <input type="checkbox" name="student_isalive" checked="${requestScope.studentIsAlive==true ? 'checked' : ''}">
    <br/>
    <br/>
    <input type="submit" class="btn btn-secondary" value="Submit">

</form>

</body>
</html>
