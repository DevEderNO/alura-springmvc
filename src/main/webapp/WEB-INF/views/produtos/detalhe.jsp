<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<!DOCTYPE html>
<html class="w-100">

<head>
    <c:url value="/" var="contextPath" />
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>

<body>
    <header>
        <nav class="navbar navbar-light navbar-expand-md">
            <div class="container-fluid"><a class="navbar-brand" href="/casadocodigo">Home</a>
                <button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-end" id="navcol-1">
                    <ul class="nav navbar-nav">
                        <li class="nav-item" role="presentation"><a class="nav-link active"
                                href="${s:mvcUrl('PC#listar').build() }">Listagem</a></li>
                        <li class="nav-item" role="presentation"><a class="nav-link"
                                href="${s:mvcUrl('PC#form').build() }">Cadastro</a></li>
                        <li class="nav-item" role="presentation"><a class="nav-link" href="carrinho">Seu Carrinho
                                (${carrinhoCompras.quantidade })</a></li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
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
			        	<form action="<c:url value="/carrinho/add" />" method="post">
				            <input type="hidden" value="${produto.id }" name="produtoId" />
			            	<c:forEach items="${produto.precos }" var="preco">
					            <div class="rows mb-1">
			                        <div class="card border-0">
				                        <div class="card-body row ">
				                        	<div class="col-sm-3">
				                        		<input type="radio" name="tipoPreco" id="tipoPreco" value="${preco.tipo }" checked>
					                            <label><h4>${preco.tipo }</h4></label>
				                        	</div>
				                            <label class="col-sm-5"><h4>R$ ${preco.valor }</h4></label>
				                            <button type="submit" class="btn btn-primary btn-block col-sm-3" title="Compre Agora!">Compre Agora</button>
				                        </div>
	
			                        </div>
					            </div>
			           		</c:forEach>
				        </form>
					</div>
                </div>
            </div>
        </div>
        
        
        <div>
            <section class="summary">
	            <h3>E muito mais...
	            	<a href='/pages/sumario-java8'>veja o sumário</a>
	            </h3>
            </section>
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