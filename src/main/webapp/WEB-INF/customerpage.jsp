<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:genericpage>
    <jsp:attribute name="header">

    </jsp:attribute>
    <jsp:attribute name="footer">
    </jsp:attribute>

    <jsp:body>
        <h1>Hello ${sessionScope.email} </h1>
        You are now logged in as a Customer of our wonderful site.
        Role: ${sessionScope.role}

        <div class="container">

        <table class="table table-striped">
            <tr>
                <th>Email</th>
                <th>Saldo</th>
            </tr>
            <td>${sessionScope.email}</td>
            <td>${sessionScope.saldo}</td>

        </table>




    </jsp:body>

</t:genericpage>

