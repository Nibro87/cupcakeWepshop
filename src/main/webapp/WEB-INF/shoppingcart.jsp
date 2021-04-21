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

        <div class="container">

            <table class="table table-striped">
                <tr>
                    <th>Bund</th>
                    <th>Topping</th>
                    <th>Antal</th>
                    <th>Pris</th>
                    <th>Rediger</th>
                    <th>Slet</th>
                </tr>

            </table>

            <a class="btn btn-primary" role="button" href="pay" >Betal</a>
        </div>
    </jsp:body>
</t:genericpage>
