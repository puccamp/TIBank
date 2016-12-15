<%-- 
    Document   : header
    Created on : Dec 12, 2016, 11:11:38 PM
    Author     : breno
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        
<script src="http://code.jquery.com/jquery-3.1.1.min.js" integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8=" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
        
<nav class="navbar navbar-default"style="background-color:#3f51b5;border-color: #3f51b5;">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-digital" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/NuBank" style="color:white;">TIBank</a>
        </div>
        <div class="collapse navbar-collapse" id="navbar-digital">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="index.jsp" style="color:white;">Home</a></li>
                <li><a href="about.jsp" style="color:white;">Sobre</a></li>
                <c:if test="${sessionScope.usuario != null}">
                    <li><a href="lista.jsp" style="color:white;">Clientes</a></li>
                    <li><a href="login?action=logout" style="color:white;">Logout</a></li>
                </c:if>
                <c:if test="${sessionScope.usuario == null}">
                    <li><a href="login.jsp" style="color:white;">Login</a></li>
                </c:if>
            </ul>
        </div
    </div>
</nav>
