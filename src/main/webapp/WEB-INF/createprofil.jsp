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

    <div class="container">
        <h2>Opret bruger</h2>

        <form action="/action_page.php">
            <div class="form-group row ">
                <label for="fornavn">Fornavn:</label>
                <input type="fornavn" class="col-md-6 .offset-md-3 col-form-label" id="fornavn" placeholder="Indtast fornavn" name="fornavn">
            </div>

            <div class="form-group row">
                <label for="efternavn">Efternavn:</label>
                <input type="efternavn" class="col-md-6 .offset-md-3 col-form-label" id="efternavn" placeholder="Indtast efternavn" name="efternavn">
            </div>

            <div class="form-group row">
                <label for="adresse">Adresse:</label>
                <input type="adresse" class="col-md-6 .offset-md-3 col-form-label" id="adresse" placeholder="Indtast Adresse" name="adresse">
            </div>

            <div class="form-group row">
                <label for="by">BY:</label>
                <input type="by" class="col-md-6 .offset-md-3 col-form-label" id="by" placeholder="Indtast by" name="by">
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