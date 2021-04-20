<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:wrapper title="cubcakes">



    <!DOCTYPE html>
    <html lang="en">
    <head>
        <title>Cubcakes</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
    </head>
    <body>


    <form method="POST" action="">
    <div class="container">

        <select class="form-select form-select-lg mb-3"  aria-label="Bund" id="topping">
            <option selected>Vælg topping</option>
          <c:forEach var="toppings" items="${applicationScope.toppingsList}">
              <option value="topping">${toppings.name} &nbsp;&nbsp; ${toppings.price}Kr. </option>
          </c:forEach>


        </select>

        <select class="form-select form-select-lg mb-3"  aria-label="Bund" id="topping">
            <option selected>Vælg bund</option>
            <c:forEach var="bottom" items="${applicationScope.bottomList}">
                <option value="topping">${bottom.name} &nbsp;&nbsp; ${bottom.price}Kr. </option>
            </c:forEach>


        </select>

        <select class="form-select form-select-lg mb-3" aria-label="antal">
            <option selected>Vælg antal</option>
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
            <option value="4">4</option>
            <option value="5">5</option>
        </select>

        <button class="btn btn-primary" type="submit">Læg i kurv</button>
    </div>




    </form>

    </body>
    </html>
</t:wrapper>