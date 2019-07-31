<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Livros de Java, Android, iPhone, Ruby, PHP e muito mais - Casa do Código</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
    
    <!-- Header -->
    <%@ include file="/WEB-INF/views/header.jsp" %>
    
    <div class="container" style="max-width: 480px">
        <form:form method="post" action="${s:mvcUrl('PC#gravar').build()}" enctype="multipart/form-data" commandName="produto">
            <h2 class="text-center">Cadastro de Livros</h2>
            <div class="form-group">
            	<label for="titulo">Título</label>
            	<form:input class="form-control" placeholder="Título" path="titulo"></form:input>
                <form:errors path="titulo"/>
            </div>
            <div class="form-group">
	            <label for="descricao">Descrição</label>
	            <form:textarea class="form-control" path="descricao" rows="5" cols="20"></form:textarea>
                <form:errors path="descricao"/>
            </div>
            <div class="form-group">
	            <label for="paginas">Páginas</label>
	            <form:input class="form-control" type="text" path="paginas" inputmode="numeric"/>
                <form:errors path="paginas"/>
            </div>
            <div class="form-group">
	            <label for="dataLancamento">Data Lançamento</label>
	            <form:input class="form-control" type="text" id="dataLancamento" path="dataLancamento"/>
            </div>
            <c:forEach items="${tipos}" var="tipoPreco" varStatus="status">
	            <div class="form-group">
		            <label>${tipoPreco}</label>
		            <form:hidden class="form-control" path="precos[${status.index}].tipo" value="${tipoPreco}"/>
		            <form:input class="form-control" type="text" path="precos[${status.index}].valor"/>
	            </div>
            </c:forEach>
            <div class="form-group">
            	<label for="sumario">Sumário</label>
                <div class="custom-file mb-3">
	                <input class="custom-file-input" type="file" name="sumario"/>
	                <label class="custom-file-label">Procurar Arquivo</label>
                </div>
            </div>
            <div class="form-group d-md-flex justify-content-md-center">
            	<button class="btn btn-primary" type="submit">Cadastrar</button>
            </div>
        </form:form>
    </div>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>