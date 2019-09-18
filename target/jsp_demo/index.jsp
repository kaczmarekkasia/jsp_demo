<%--to jest część odpowiedzialna za polską czcionkę--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="/style.css">
</head>
<body>
<h2>Tabliczka mnożenia</h2>
<form action="index.jsp" method="post">
    Rozmiar X: <input type="number" min="1" name="x">
    <br/>
    <br/>
    Rozmiar Y: <input type="number" min="1" name="y">
    <br/>
    <input type="submit">
</form>
<%--rozpoczécie i deklaracja bloku w którym bédzie pisany kod JAVA--%>
<%--zadaniem out jest wypisaywanie treßci na ekran (do HTMLa), troché jak SOUT w Java--%>

<table>
    <%
        //coś co jest wysłane do pfrzeglądarki, od klienta
        String wielkoscX = request.getParameter("x");
        Integer rozmiarX = 10;
        try {
            rozmiarX = Integer.parseInt(wielkoscX);
        } catch (NumberFormatException nfe){

        }

        String wielkoscY = request.getParameter("y");
        Integer rozmiarY = 10;
        try {
            rozmiarY = Integer.parseInt(wielkoscY);
        } catch (NumberFormatException nfe){

        }
        //
        for (int i = 1; i <= rozmiarY ; i++) {
            out.print("<tr>");
            for (int j = 1; j <= rozmiarX ; j++) {
                out.print("<td>");
                out.print(i * j);
                out.print("</td>");
            }
            out.print("</tr>");
        }
    %>
</table>




</body>
</html>
