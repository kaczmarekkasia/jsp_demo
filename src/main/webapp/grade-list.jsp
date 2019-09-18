<%@ page import="model.Grade" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: so-vi
  Date: 18.09.2019
  Time: 14:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Grade List</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="/style.css">
</head>
<body>
<table class="table table-striped">
    <tr>
        <th>Id</th>
        <th>Subject</th>
        <th>Added date</th>
        <th>Value</th>
        <th></th>
    </tr>
    <%
        List<Grade> gradeList = (List<Grade>) request.getAttribute("lista ocen");

        for (Grade grade : gradeList) {
            out.print("<tr>");
            out.print("<td>" + grade.getId()+ "</td>");
            out.print("<td>" + grade.getSubject()+ "</td>");
            out.print("<td>" + grade.getDateAdded().withNano(0)+ "</td>");
            out.print("<td>" + grade.getValue()+ "</td>");
            out.print("<td></td>");
            out.print("</tr>");
        }

    %>

</table>

</body>
</html>
