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
<<<<<<< HEAD
                <thead><th>Bund</th><th>Topping</th><th>Antal</th><th>pris</th><th></th></thead>
                <c:forEach var="cupcake" items="${sessionScope.Shoppingcart.cupcakes}">
                    <tr>
                        <td>${cupcake.bottom.name}</td>
                        <td>${cupcake.topping.name}</td>
                        <td>${cupcake.amount}</td>
                        <td>${cupcake.price}</td>
                        <td><button class="btn btn-danger btn-sm" type="submit" name="delete" value="${cupcake.topping}">delete</button> </td>
=======
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

>>>>>>> a357f7ff71f3393199b87a76eb987466c54707d1
                    </tr>

                </c:forEach>

            </table>

<<<<<<< HEAD
            <b>pris i alt:  ${sessionScope.Shoppingcart.totalSum()} Kr</b>
=======
            <b>Total pris:  ${sessionScope.shoppingcart.totalPrice()} Kr</b>
>>>>>>> a357f7ff71f3393199b87a76eb987466c54707d1
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
