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

            <h3>Du har valgt følgende cupcakes:</h3>

            <br/>

            <table class="table table-striped">
                <thead><th>Bund</th><th>Topping</th><th>Antal</th><th>pris</th><th></th></thead>
                <c:forEach var="cupcake" items="${sessionScope.Shoppingcart.cupcakes}">
                    <tr>
                        <td>${cupcake.bottom.name}</td>
                        <td>${cupcake.topping.name}</td>
                        <td>${cupcake.amount}</td>
                        <td>${cupcake.price}</td>
                        <td><button class="btn btn-danger btn-sm" type="submit" name="delete" value="${cupcake.topping}">delete</button> </td>
                    </tr>

                </c:forEach>

            </table>

            <b>pris i alt:  ${sessionScope.Shoppingcart.totalSum()} Kr</b>
        <br/>
        <br/>


       <div>

            <a class="btn btn-primary" role="button" href="${pageContext.request.contextPath}" >Shop more</a>

            <a class="btn btn-primary" role="button" href="pay" >Betal</a>
       </div>

    </jsp:body>
</t:genericpage>
