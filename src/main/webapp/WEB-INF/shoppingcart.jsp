<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:wrapper title="Indkøbs Kurv">

    <div class="container">

        <table class="table table-striped">
            <tr>
                <th>Bund</th>
                <th>Topping</th>
                <th>Antal</th>
                <th>Pris</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>

        </table>

        <a class="btn btn-primary" role="button" href="pay" >Betal</a>
    </div>
</t:wrapper>
