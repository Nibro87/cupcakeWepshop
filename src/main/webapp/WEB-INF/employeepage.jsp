<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:genericpage>
    <jsp:attribute name="header">
        shoppingcart
    </jsp:attribute>

    <jsp:attribute name="footer">
    </jsp:attribute>

    <jsp:body>
        <h1>Hello ${sessionScope.email} </h1>
        Kunde Liste, hvor der kan indsættes penge på brugerne konto
        <div class="container">

            <table class="table table-striped">
                <tr>
                    <th>Brugere</th>
                    <th>Saldo</th>
                    <th>Role</th>
                    <th>Indsæt</th>
                    <th>Slet</th>
                </tr>
                <c:forEach var="users" items="${applicationScope.userList}">
                <tr>
                    <td>${users.email}</td>
                    <td>${users.saldo}</td>
                    <td>${users.role}</td>

                        </c:forEach>
            </table>


        </div>
    </jsp:body>
</t:genericpage>

