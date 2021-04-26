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
                <thead>
                <tr>
                    <td>Bund</td>
                    <td>Topping</td>
                    <td>Antal</td>
                    <td>pris</td>

                </tr>
                </thead>

                <c:forEach var="cupcakeEntry" items="${sessionScope.shoppingcart.getCupcakes()}">
                    <tr>
                        <td>${cupcakeEntry.getBottom().getName()}</td>
                        <td>${cupcakeEntry.getTopping().getName()}</td>
                        <td>${cupcakeEntry.amount}</td>
                        <td>${cupcakeEntry.price}</td>

                    </tr>

                </c:forEach>

            </table>

            <b>Total pris:  ${sessionScope.shoppingcart.totalPrice()} Kr</b>
        <br/>
        <br/>


       <div>

            <a class="btn btn-primary" role="button" href="${pageContext.request.contextPath}/fc/cupcakes" >Shop more</a>


           <c:if test="${sessionScope.user == null }">
               <a type="button" class="btn btn-sm  btn-outline-secondary"
                  href="${pageContext.request.contextPath}/fc/loginpage">betale</a>
           </c:if>

           <c:if test="${sessionScope.user != null }">
               <a type="button" class="btn btn-sm  btn-outline-secondary"
                  href="${pageContext.request.contextPath}/fc/pay">betale</a>
           </c:if>

       </div>

    </jsp:body>
</t:genericpage>
