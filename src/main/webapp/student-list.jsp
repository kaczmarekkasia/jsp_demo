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
    <title>Student List</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="/style.css">
</head>
<body>
<jsp:include page="/navigator.jsp"/>
<table class="table table-striped" style="width: 100%">
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Surname</th>
        <th>Age</th>
        <th>Is Alive</th>
        <th></th>
    </tr>
    <c:forEach var="student" items="${requestScope.moja_ukochana_lista}">
        <tr>
            <td>${student.getId()}</td>
            <td>${student.getName()}</td>
            <td>${student.getSurname()}</td>
            <td>${student.getAge()}</td>
            <td>${student.isAlive()}</td>
            <td>
                <table>
                    <tr>
                        <td>
                            <a href="/student-delete?studentId=${student.getId()}">Delete</a>
                        </td>
                        <td>
                            <a href="/student-edit?studentId=${student.getId()}">Edit</a>
                        </td>
                        <td>
                            <a href="/grade-list?studentId=${student.getId()}">List grades</a>
                        </td>
                        <td>
                            <a href="/grade-add?studentId=${student.getId()}">Add grade</a>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </c:forEach>
    <%--<%--%>
        <%--List<Student> studentList = (List<Student>) request.getAttribute("moja_ukochana_lista");--%>
        <%--for (Student student : studentList) {--%>
            <%--out.print("<tr>");--%>
            <%--out.print("<td>" + student.getId() + "</td>");--%>
            <%--out.print("<td>" + student.getName() + "</td>");--%>
            <%--out.print("<td>" + student.getSurname() + "</td>");--%>
            <%--out.print("<td>" + student.getAge() + "</td>");--%>
            <%--out.print("<td>" + student.isAlive() + "</td>");--%>
            <%--out.print("</tr>");--%>
        <%--}--%>

    <%--%>--%>
</table>
</body>
</html>
