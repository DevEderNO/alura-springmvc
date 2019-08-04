<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<tags:pageTemplate titulo="${produto.titulo }">
    <main class="container">
    	<h3 class="text-center font-graduate">Detalhes de ${produto.titulo }</h3>
        <div id="${produto.id }" class="mb-3 mt-3 card border-0">
            <div class="row no-gutters">
                <div class="col-md-3">
                    <img class="card-img img-fluid" src="http://cdn.shopify.com/s/files/1/0155/7645/products/css-eficiente-featured_large.png?v=1435245145" />
                </div>
                <div class="col-md-8">
                    <div class="card-body">
					    <h2 class="card-title">${produto.titulo }</h2>
					    <p class="card-text">${produto.descricao }</p>
			        	<form:form method="post" servletRelativeAction="/carrinho/add">
				            <input type="hidden" value="${produto.id }" name="produtoId" />
			            	<c:forEach items="${produto.precos }" var="preco">
					            <div class="rows">
			                        <div class="card border-0">
				                        <div class="card-body row d-flex justify-content-between p-1">
				                        	<div class="col-md-auto">
				                        		<input type="radio" class="radio" name="tipoPreco" id="tipoPreco" value="${preco.tipo }" checked/>
					                            <label> ${preco.tipo }</label>
				                        	</div>
				                            <label class="col-md-auto">R$ ${preco.valor }</label>
				                            <button type="submit" class="btn btn-primary col-md-auto" title="Compre Agora!">Compre Agora</button>
				                        </div>
	
			                        </div>
					            </div>
			           		</c:forEach>
				        </form:form>
					</div>
                </div>
            </div>
        </div>
        
        
        <div>
            <section class="data product-detail">
                <h2 class="section-title">Dados do livro</h2>
                <ul>
                	<li>
		                <p>Número de páginas:
		                    <span>${produto.paginas }</span>
		                </p>
                	</li>
                	<li>
		                <p>Data de publicação: 
		                	<span>
		                		<fmt:formatDate pattern="dd/MM/yyyy" value="${produto.dataLancamento.time }"/>
		                	</span>
		                </p>
                	</li>
                </ul>
            </section>
        </div>
    </main>
</tags:pageTemplate>