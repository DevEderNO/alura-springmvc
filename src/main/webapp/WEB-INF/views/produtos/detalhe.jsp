<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<!DOCTYPE html>
<html class="w-100">

<head>
    <c:url value="/" var="contextPath" />
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>

<body>
    
    <!-- Header -->
    <%@ include file="/WEB-INF/views/header.jsp" %>
    
    <section class="container">
        <div id="${produto.id }" class="mb-3 card border-0">
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
			                        <div class="card ">
				                        <div class="card-body row ">
				                        	<div class="col-md-3 p-0">
				                        		<input type="radio" class="radio" name="tipoPreco" id="tipoPreco" value="${preco.tipo }" checked/>
					                            <label> ${preco.tipo }</label>
				                        	</div>
				                            <label class="col-md-6 container">R$ ${preco.valor }</label>
				                            <button type="submit" class="btn btn-primary btn-block col-md-3 p-0 m-0" title="Compre Agora!">Compre Agora</button>
				                        </div>
	
			                        </div>
					            </div>
					            <%-- <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token} }" /> --%>
			           		</c:forEach>
				        </form:form>
					</div>
                </div>
            </div>
        </div>
        
        
        <div>
            <section class="data product-detail">
                <h2 class="section-title">Dados do livro:</h2>
                <p>Número de páginas:
                    <span>${produto.paginas }</span>
                </p>
                <p>Data de publicação: 
                	<span>
                		<fmt:formatDate pattern="dd/MM/yyyy" value="${produto.dataLancamento.time }"/>
                	</span>
                </p>
            </section>
        </div>
    </section>
    
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>

</html>