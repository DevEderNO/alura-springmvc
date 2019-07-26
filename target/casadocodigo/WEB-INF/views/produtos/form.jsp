<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Livros de Java, Android, iPhone, Ruby, PHP e muito mais - Casa do Código</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body class="jumbotron d-flex flex-column h-100">
    <h1>Cadastro de Produtos</h1>
    <div class="flex-shrink-0">
        <form:form action="${s:mvcUrl('PC#gravar').build()}" method="POST" commandName="produto" enctype="multipart/form-data">
            <div class="form-group">
                <label for="titulo">Título</label>
                <form:input path="titulo" class="form-control"/>
                <form:errors path="titulo"/>
            </div>
    
            <div class="form-group">
                <label for="descricao">Descrição</label>
                <form:textarea path="descricao" cols="20" rows="5" class="form-control"/>
                <form:errors path="descricao"/>
            </div>

            <div class="form-group">
                <label for="paginas">Páginas</label>
                <form:input path="paginas" class="form-control"/>
                <form:errors path="paginas"/>
            </div>

            <div class="form-group">
                <label for="dataLancamento">Data Lançamento</label>
                <form:input id="dataLancamento" class="form-control" path="dataLancamento"/>
            </div>

            <c:forEach items="${tipos}" var="tipoPreco" varStatus="status">
                <div class="form-group">
                    <label>${tipoPreco}</label>
                    <form:input class="form-control" path="precos[${status.index}].valor"/>
                    <form:hidden path="precos[${status.index}].tipo" value="${tipoPreco}"/>
                </div>
            </c:forEach>
            <label for="sumario">Sumário</label>
            <div class="custom-file mb-3">
                <input id="sumario" class="custom-file-input" type="file" name="sumario"/>
                <label for="sumario" class="custom-file-label">Procurar Arquivo</label>
            </div>

            <button type="submit" class="btn btn-primary">Cadastrar</button>        
        </form:form>
    </div>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>