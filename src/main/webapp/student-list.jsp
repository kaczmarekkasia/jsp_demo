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
    <title>Student List</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="/style.css">
</head>
<body>
<table class="table table-striped">
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Surname</th>
        <th>Age</th>
        <th>Is Alive</th>
    </tr>
    <%
        List<Student> studentList = (List<Student>) request.getAttribute("moja_ukochana_lista");
        for (Student student : studentList) {
            out.print("<tr>");
            out.print("<td>" + student.getId() + "</td>");
            out.print("<td>" + student.getName() + "</td>");
            out.print("<td>" + student.getSurname() + "</td>");
            out.print("<td>" + student.getAge() + "</td>");
            out.print("<td>" + student.isAlive() + "</td>");
            out.print("</tr>");
        }

    %>
</table>
</body>
</html>
