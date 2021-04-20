<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:wrapper title="createprofile">



    <!DOCTYPE html>
    <html lang="en">
    <head>
        <title>Opret profil</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

    </head>
    <body>

    <form name="login" action="${pageContext.request.contextPath}/fc/registercommand" method="POST">
    <div class="container">
        <h2>Opret bruger</h2>

        <form action="/action_page.php">
            <div class="form-group row ">
                <label for="email">Fornavn:</label>
                <input type="email" class="col-md-6 .offset-md-3 col-form-label" id="email" placeholder="Indtast email" name="email">
            </div>


            <div class="form-group row">
                <label for="psw">Password:</label>
                <input type="psw" class="col-md-6 .offset-md-3 col-form-label" id="psw" placeholder="Vælg password" name="psw">
            </div>

            <button type="submit" class="btn btn-primary">Opret</button>
        </form>



    </div>

    </body>
    </html>
</t:wrapper>