<%-- 
    Document   : lista
    Created on : Dec 13, 2016, 12:55:27 AM
    Author     : breno
--%>

<%@page import="dao.ClienteDao"%>
<%@page import="models.*"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Clientes - TIBank</title>
    </head>
    <body>
        <%@include file="includes/header.jsp" %>
        <div class="container-fluid">
            <h1>Clientes</h1>
            <div class="row">
                <div class="col-sm-12">
                    <form method="post" action="servletCliente?action=buscaCPF">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Procure o cliente pelo CPF" name="cpf">
                            <span class="input-group-btn">
                              <button type="submit" class="btn btn-default" type="button">Procurar</button>
                            </span>
                        </div>
                    </form>
                </div>
            </div>
            <table class="table table-striped table-hover">
                <thead>
                    <tr>
                        <th>Nome</th>
                        <th>CPF</th>
                        <th>Conta</th>
                        <th>Agencia</th>
                        <th>Ações</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        ClienteDao dao = new ClienteDao();
                        List<Cliente> clientes = dao.getClientes();
                        request.setAttribute("clientes", clientes);
                    %>
                    <c:forEach items="${clientes}" var="cliente"> 
                        <tr>
                                <td><c:out value="${cliente.getNome()}"/></td>
                                <td><c:out value="${cliente.getCpf()}"/></td>
                                <td><c:out value="${cliente.getConta().getNumero()}"/></td>
                                <td><c:out value="${cliente.getConta().getAgencia()}"/></td>
                                <td>
                                    <form method="post" action="servletCliente?action=buscaCPF">
                                        <input class="hidden" name="cpf" value="${cliente.getCpf()}"/>
                                        <button class="btn btn-sm btn-default" type="submit"><span class="glyphicon glyphicon-chevron-right"></span></button>
                                    </form>
                                </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </body>
</html>
