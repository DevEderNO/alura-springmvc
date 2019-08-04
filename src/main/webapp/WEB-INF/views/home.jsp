<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>

<tags:pageTemplate titulo="Casa do Código">
<div class="highlight-clean">
	<div class="container">
		<div class="intro">
			<h2 class="text-center font-graduate" >Casa do Código</h2>
			<p class="text-center">
				<br>Com um conteudo diversificado e que vai direto ao ponto, a Casa do Código edita e desenvolve livros de alta qualidade, escritos por autores com experiência nos assuntos.<br>
			</p>
		</div>
	</div>
	<div class="container">
		<div class="row justify-content-around">
			<c:forEach items="${produtos }" var="produto">
				<div class="card col-md-3 p-0">
					<img src="https://cdn.shopify.com/s/files/1/0155/7645/products/testes-de-software-featured_large.png?v=1429091541" alt="${produto.titulo }" class="img img-fluid">
					<div class="card-body d-flex flex-column h-100">
						<div class="align-items-end">
							<h5 class="card-title">${produto.titulo }</h5>
							<a href="${s:mvcUrl('PC#detalhe').arg(0,produto.id).build() }" class="btn btn-primary btn-sm btn-block">Comprar</a>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
</div>
</tags:pageTemplate>