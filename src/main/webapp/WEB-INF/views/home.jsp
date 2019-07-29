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
                <h2 class="text-center">Casa do Código</h2>
                <p class="text-center"><br>Com um conteudo diversificado e que vai direto ao ponto, a Casa do Código edita e desenvolve livros de alta qualidade, escritos por autores com experiência nos assuntos.<br><br></p>
            </div>
            <div class="buttons"></div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>

</html>