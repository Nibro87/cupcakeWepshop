<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:genericpage>

    <jsp:attribute name="header">
         Home
    </jsp:attribute>

    <jsp:attribute name="footer">
        <c:set var="addHomeLink" value="${false}" scope="request"/>
    </jsp:attribute>

    <jsp:body>
        <form method="POST" action="${pageContext.request.contextPath}/fc/shoppingcart">
            <div class="container">


                <select class="form-select form-select-lg mb-3"  aria-label="Bund" name="topping" id="topping">
                    <option selected>Vælg topping</option>
                    <c:forEach var="toppings" items="${applicationScope.toppingsList}">
                        <option value="toppingId">${toppings.name} &nbsp;&nbsp; ${toppings.price}Kr. </option>
                    </c:forEach>


                </select>


                <select class="form-select form-select-lg mb-3"  aria-label="Bund" name="bottom" id="bottom">


                    <option selected>Vælg bund</option>
                    <c:forEach var="bottoms" items="${applicationScope.bottomList}">
                        <option value="bottomId">${bottoms.name} &nbsp;&nbsp; ${bottoms.price}Kr. </option>
                    </c:forEach>





                </select>


                <select class="form-select form-select-lg mb-3" aria-label="antal" name="amount" id="amount">
                    <option selected>Vælg antal</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                </select>

                <button class="btn btn-primary" type="submit">læg i kurv</button>


            </div>




        </form>



    </jsp:body>
</t:genericpage>