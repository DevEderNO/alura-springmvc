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

<body class="h-100 w-100">
    <header id="layout-header">
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark mb-3 justify-content-center">
            <div class="collapse navbar-collapse container" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item"><a class="nav-link" href="http://www.casadocodigo.com.br">Home</a></li>
                </ul>
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item"><a class="nav-link" href="/collections/livros-de-front-end">Front End</a></li>
                </ul>
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item"><a class="nav-link" href="/collections/livros-de-games">Games</a></li>
                </ul>
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item"><a class="nav-link" href="/collections/livros-de-java">Java</a></li>
                </ul>
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item"><a class="nav-link" href="/collections/livros-de-mobile">Mobile</a></li>
                </ul>
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item"><a class="nav-link" href="/collections/livros-desenvolvimento-web">Web</a></li>
                </ul>
            </div>
        </nav>
    </header>
    <section class="container">
        <div id="${produto.id }" class="mb-3">
            <div class="row">
                <div class="col-md-4">
                    <img src="http://cdn.shopify.com/s/files/1/0155/7645/products/css-eficiente-featured_large.png?v=1435245145" class="img-fluid" />
                </div>
                <div class="col-md-8">
                    <h1 class="product-title">${produto.titulo }</h1>
                    <p class="book-description">${produto.descricao }</p>
		        	<form action="/carrinho/add" method="post">
			            <input type="hidden" value="${produto.id }" name="produtoId" />
		            	<c:forEach items="${produto.precos }" var="preco">
				            <div class="rows">
		                        <div class="card">
			                        <div class="card-body ">
			                            <label class="col-sm-6">${preco.tipo } - R$ ${preco.valor }</label>
			                            <label class="col-sm-auto"></label>
			                            <button type="submit" class="btn btn-primary btn-lg" title="Compre Agora!">Compre Agora</button>
			                        </div>

		                        </div>
				            </div>
		           		</c:forEach>
			        </form>
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
    
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
</body>

</html>