<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

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

        <select class="form-select form-select-lg mb-3"  aria-label="Bund">
            <option selected>Vælg bund</option>
            <option value="1">Chocolate</option>
            <option value="2">vanilla</option>
            <option value="3">Nutmeg</option>
            <option value="4">Pistacio</option>
            <option value="5">Almond</option>
        </select>

        <select class="form-select form-select-lg mb-3" aria-label="Topping">
            <option selected>Vælg topping</option>
            <option value="1">Chocolate</option>
            <option value="2">Blueberry</option>
            <option value="3">Rasberry</option>
            <option value="4">Crispy</option>
            <option value="5">Strawberry</option>
            <option value="6">Rum/Raisin</option>
            <option value="7">Orange</option>
            <option value="8">Lemon</option>
            <option value="9">Blue cheese</option>
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