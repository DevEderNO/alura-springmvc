<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>


<tags:pageTemplate titulo="Casa do Código">
	<main  class="container">
	    <h2 class="text-center font-graduate">Lista de Livros</h2>
	    <c:if test="${sucesso != null}">
	        <div class="alert alert-primary alert-dismissible fade show" role="alert">
	            <a>${sucesso}</a> 
	            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
	                <span aria-hidden="true">&times;</span>
	            </button>
	        </div>
	    </c:if>
	    <c:if test="${erro != null}">
	        <div class="alert alert-danger alert-dismissible fade show" role="alert">
	            <a>${erro}</a> 
	            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
	                <span aria-hidden="true">&times;</span>
	            </button>
	        </div>
	    </c:if>
	    <div class="container">
	        <div class="table-bordered text-center">
	            <table class="table table-striped table-bordered">
	                <thead>
	                    <tr>
	                        <th>Título</th>
	                        <th>Descrição</th>
	                        <th>Páginas</th>
	                        <th>Preços</th>
	                        <th>Ações</th>
	                    </tr>
	                </thead>
	                <tbody>
	                    <c:forEach items="${produtos}" var="produto">
		                    <tr>
		                        <td>${produto.titulo}</td>
		                        <td>${produto.descricao}</td>
		                        <td align="center">${produto.paginas}</td>
		                        <td align="center">${produto.precos}</td>
		                        <td align="center">
			                        <a class="btn btn-primary" href="${s:mvcUrl('PC#detalhe').arg(0, produto.id).build() }">Detalhes</a> 
			                    </td>
		                    </tr>
		                </c:forEach>
		                <c:if test="${produtos.size()<=0}">
		                   	<tr>
		                   		<td colspan="4" align="center" ><h3>Não a Produto Cadastrado</h3></td>
		                   	</tr>
					    </c:if>
	                </tbody>
	            </table>
	        </div>
	    </div>
	</main>
</tags:pageTemplate>