<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<tags:pageTemplate titulo="Casa do Código">
    <main class="container" style="max-width: 480px">
        <form:form method="post" action="${s:mvcUrl('PC#gravar').build()}" enctype="multipart/form-data" commandName="produto">
            <h2 class="text-center font-graduate">Cadastro de Livros</h2>
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
            	<button class="btn btn-primary btn-block" type="submit">Cadastrar</button>
            </div>
        </form:form>
    </main>
</tags:pageTemplate>