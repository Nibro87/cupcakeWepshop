<%@tag description="Page Wrapper Tag" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@attribute name="title" required="true" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8">
    <title>Olsker Cubcakes</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">



</head>
<body>
<nav class="topnav bg-secondary">
    <a class="active text-white" href="<%=request.getContextPath()%>">Home</a>

    <a class="nav-link text-white " href="${pageContext.request.contextPath}/fc/cupcakes">Cupcakes</a>

    <a class="nav-link text-white " href="${pageContext.request.contextPath}/fc/shoppingcart">Indkøbskurv</a>

    <a class="nav-link text-white" href="${pageContext.request.contextPath}/fc/profil">Profil</a>

    <a class="nav-link text-white" href="${pageContext.request.contextPath}/fc/createprofil">Opret profil</a>

    <div class="login-container">
        <form action="${pageContext.request.contextPath}">
            <input type="text" placeholder="Username" name="username">
            <input type="text" placeholder="Password" name="password">
            <button type="submit">Login</button>
        </form>


    </div>
</nav>
<img src="${pageContext.servletContext.contextPath}/css/cupcakes.jpg" style="width:100%;height:100%;" height="450" width="1920"/>


<jsp:doBody/>





</body>
</html>