<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Home</title>
    <link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/css/Footer-Dark.css">
    <link rel="stylesheet" href="resources/fonts/ionicons.min.css">
    <link href="https://fonts.googleapis.com/css?family=Amiri&display=swap" rel="stylesheet">
</head>

<body>
    <header>
        <nav class="navbar navbar-light navbar-expand-md bg-light">
            <div class="container-fluid"><a class="navbar-brand" href="/casadocodigo">Home</a>
                <button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-end" id="navcol-1">
                    <ul class="nav navbar-nav">
                        <li class="nav-item" role="presentation"><a class="nav-link active" href="${s:mvcUrl('PC#listar').build() }">Listagem</a></li>
                        <li class="nav-item" role="presentation"><a class="nav-link" href="${s:mvcUrl('PC#form').build() }">Cadastro</a></li>
                    	<li class="nav-item" role="presentation"><a class="nav-link" href="carrinho">Seu Carrinho (${carrinhoCompras.quantidade })</a></li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
    <div class="highlight-clean">
        <div class="container">
            <div class="intro">
                <h2 class="text-center pt-4">Casa do Código</h2>
                <p class="text-center"><br>Com um conteudo diversificado e que vai direto ao ponto, a Casa do Código edita e desenvolve livros de alta qualidade, escritos por autores com experiência nos assuntos.<br><br></p>
            </div>
        </div>
        <div class="container">
	        <div class="row justify-content-around">
	       		<c:forEach items="${produtos }" var="produto">
	        			<div class="card m-1 col-md-3 p-0">
						  <img src="https://cdn.shopify.com/s/files/1/0155/7645/products/testes-de-software-featured_large.png?v=1429091541" 
						  	   alt="${produto.titulo }" class="img img-fluid">
						  <div class="card-body">
						    <h5 class="card-title">${produto.titulo }</h5>
						    <a href="${s:mvcUrl('PC#detalhe').arg(0,produto.id).build() }" class="btn btn-primary btn-sm btn-block">Comprar</a>
						  </div>
						</div>
	       		</c:forEach>
	        </div>
        </div>
    </div>
    <div class="footer-dark">
        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-md-3 item">
                        <h3>Links</h3>
                        <ul>
                            <li><a href="#">Home</a></li>
                            <li><a href="#">Listagem</a></li>
                            <li><a href="#">Cadastro</a></li>
                        </ul>
                    </div>
                    <div class="col-sm-6 col-md-3 item">
                        <h3>Sobre</h3>
                        <ul>
                            <li><a href="#">Empresa</a></li>
                            <li><a href="#">Team</a></li>
                            <li><a href="#">Careers</a></li>
                        </ul>
                    </div>
                    <div class="col-md-6 item text">
                        <h3>Casa do Código</h3>
                        <p>Com um conteudo diversificado e que vai direto ao ponto, a Casa do Código edita e desenvolve livros de alta qualidade, escritos por autores com experiência nos assuntos.<br></p>
                    </div>
                    <div class="col item social"><a href="#"><i class="icon ion-social-facebook"></i></a><a href="#"><i class="icon ion-social-twitter"></i></a><a href="#"><i class="icon ion-social-snapchat"></i></a><a href="#"><i class="icon ion-social-instagram"></i></a></div>
                </div>
                <p class="copyright">DevEderNo © 2019</p>
            </div>
        </footer>
    </div>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="resources/bootstrap/js/bootstrap.min.js"></script>
    <script src="resources/js/jquery.min.js"></script>
</body>

</html>