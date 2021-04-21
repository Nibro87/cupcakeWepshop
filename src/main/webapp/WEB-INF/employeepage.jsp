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

        <form action="${pageContext.request.contextPath}/fc/manegeuser" method="post">
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
                    <td>
                        <a href="InsertUser?code=${users.id}">Indsæt</a>
                    </td>
                    <td>
                        <button type="submit" name="delete" value="${users.id}">Slet</button>
                    </td>
                        </c:forEach>
            </table>
            <c:if test="${requestScope.error != null }">
                <p style="color:red">
                        ${requestScope.error}
                </p>
            </c:if>

        </div>
        </form>
    </jsp:body>
</t:genericpage>

