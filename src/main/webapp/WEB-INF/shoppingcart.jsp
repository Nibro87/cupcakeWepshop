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
                <c:forEach var="cupcakeEntry" items="${sessionScope.shoppingcart.cupcakes}">
                    <tr>
                        <td>${cupcakeEntry.bottom.name}</td>
                        <td>${cupcakeEntry.topping.name}</td>
                        <td>${cupcakeEntry.amount}</td>
                        <td>${cupcakeEntry.price}</td>
                        <td><button class="btn btn-danger btn-sm" type="submit" name="delete" value="${cupcakeEntry.topping}">delete</button> </td>
                    </tr>

                </c:forEach>

            </table>

            <b>pris i ale:  ${sessionScope.shoppingcart.totalPrice()} Kr</b>
        <br/>
        <br/>


       <div>

            <a class="btn btn-primary" role="button" href="${pageContext.request.contextPath}" >Shop more</a>

            <a class="btn btn-primary" role="button" href="pay" >Betal</a>
       </div>

    </jsp:body>
</t:genericpage>
