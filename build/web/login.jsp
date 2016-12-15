<%-- 
    Document   : login
    Created on : Dec 12, 2016, 11:24:36 PM
    Author     : breno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login - TIBank</title>
    </head>
    <body>
        <%@include file="includes/header.jsp" %>
        <div class="container-fluid">
            <c:if test="${errorMsg != null}">
                <div class="alert alert-warning">
                    <strong>Não encontrado!</strong> <c:out value='${errorMsg}'/>
                </div>
            </c:if>
            <div class="col-xs-12 col-sm-6 col-sm-offset-3 col-md-4 col-md-offset-4 col-lg-4 col-lg-offset-4" style="border: 1px solid #888; border-radius:0.2em;height:18em;margin-top:2em;padding:0em 2em 2em 2em;">
                <h3 style="text-align:center;">Login</h3>
                <form method="post" action="login">
                    <div class="form-group">
                        <label for="email">Email address</label>
                        <input type="email" class="form-control" id="email" placeholder="Email" name="email">
                    </div>
                    <div class="form-group">
                        <label for="password">Password</label>
                        <input type="password" class="form-control" id="password" placeholder="Password" name="password">
                    </div>
                    <div class="col-xs-4 col-xs-offset-4">
                        <button type="submit" class="btn btn-default">Login</button>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>
