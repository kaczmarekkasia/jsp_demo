<%@ page import="model.Grade" %>
<%@ page import="java.util.List" %>
<%@ page import="java.time.format.DateTimeFormatter" %><%--
  Created by IntelliJ IDEA.
  User: so-vi
  Date: 18.09.2019
  Time: 14:06
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Grade List</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="/style.css">
</head>
<body>
<jsp:include page="/navigator.jsp"/>
<table class="table table-striped">
    <tr>
        <th>Id</th>
        <th>Subject</th>
        <th>Added date</th>
        <th>Value</th>
        <th></th>
    </tr>
    <%--jstl--%>
    <c:forEach var="ocena" items="${requestScope.lista_ocen}">
        <tr>
            <td>${ocena.getId()}</td>
            <td>${ocena.getValue()}</td>
            <td>${ocena.getDateAdded().format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm"))}</td>
            <td>${ocena.getSubject()}</td>
            <td></td>
        </tr>
    </c:forEach>

</table>

</body>
</html>
