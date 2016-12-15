<%-- 
    Document   : detalhe
    Created on : Dec 15, 2016, 12:09:07 PM
    Author     : breno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Detalhe - TIBank</title>
    </head>
    <body>
        <%@include file="includes/header.jsp" %>
        <div class="container-fluid">
            <h1>Detalhes cliente</h1>
            <hr class="separator">
            <h3>Pessoal</h3>
            <div class="row">
                <div class="form-group col-md-4">
                    <label class="col-md-12 control-label" for="txtNome">Nome:</label>  
                    <div class="col-md-12">
                    <input id="txtNome" name="nome" type="text" placeholder="Ex: João da Silva" class="form-control input-md" required="true" value="<c:out value='${cliente.getNome()}'/>">
                    </div>
                </div>
                <div class="form-group col-md-4">
                    <label class="col-md-12 control-label" for="txtEmail">CPF:</label>  
                    <div class="col-md-12">
                        <input id="txtCpf" name="cpf" type="text"class="form-control input-md" required="true" value="<c:out value='${cliente.getCpf()}'/>">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="form-group col-md-4">
                    <label class="col-md-12 control-label" for="txtNome">Conta:</label>  
                    <div class="col-md-12">
                    <input id="txtConta" name="conta" type="text" class="form-control input-md" required="true" value="<c:out value='${cliente.getConta().getNumero()}'/>">
                    </div>
                </div>
                <div class="form-group col-md-4">
                    <label class="col-md-12 control-label" for="txtEmail">Agencia:</label>  
                    <div class="col-md-12">
                        <input id="txtAgencia" name="agencia" type="text" class="form-control input-md" required="true" value="<c:out value='${cliente.getConta().getAgencia()}'/>">
                    </div>
                </div>
                <div class="form-group col-md-4">
                    <label class="col-md-12 control-label" for="txtEmail">Saldo:</label>  
                    <div class="col-md-12">
                        <input id="txtSaldo" name="saldo" type="text" class="form-control input-md" required="true" value="<c:out value='${cliente.getConta().getSaldo()}'/>">
                    </div>
                </div>
            </div>
            <div class="row" style="margin-left:0.5em;">
                <h4>Cartões</h4>
                <c:forEach items="${cliente.getConta().getCartoes()}" var="cartao">
                    <div class="col-md-3" style="border:1px solid grey; margin-left:1em;">
                        <div class="row" style="text-align:center;">
                            <p>Numero: <c:out value='${cartao.getNumero()}'/> </p>
                            <p>Nome: <c:out value='${cartao.getNumero()}'/> </p>
                            <p>Limite: <c:out value='${cartao.getLimite()}'/> </p>
                            <p>Vencimento: <c:out value='${cartao.getVencimento()}'/> </p>
                            <p>Codigo Seguranca: <c:out value='${cartao.getCod_seguranca()}'/> </p>
                            <p>Ativo: <c:out value='${cartao.isAtivo()}'/> </p>
                            <c:if test="${cartao.isDesativar()}">
                                <form method="post" action="servletCliente?action=desativarCartao&cpf=<c:out value='${cliente.getCpf()}'/>&num_cartao=<c:out value='${cartao.getNumero()}'/>">
                                    <button class="btn btn-danger" type="submit">Desativar</button>
                                </form>
                            </c:if>
                            <button data-toggle="collapse" data-target="#lancamentos<c:out value='${cartao.getNumero()}'/>" class="btn btn-default">Lançamentos</button>

                        </div>
                        <div class="row" style="margin-left:1em;margin-right:1em;">
                            <table class="table table-striped table-hover collapse" id="lancamentos<c:out value='${cartao.getNumero()}'/>">
                                <thead>
                                    <tr>
                                        <th>Data</th>
                                        <th>Local</th>
                                        <th>Valor</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${cartao.getLancamentos()}" var="lancamento">
                                        <tr>
                                            <td><c:out value='${lancamento.getData()}'/></td>
                                            <td><c:out value='${lancamento.getLocal()}'/></td>
                                            <td><c:out value='${lancamento.getValor()}'/></td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </body>
</html>
