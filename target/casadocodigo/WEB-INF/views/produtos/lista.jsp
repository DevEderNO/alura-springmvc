<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Livros de Java, Android, iPhone, Ruby, PHP e muito mais - Casa do Código</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script type="javascript">
        $('.alert').alert()
    </script>
</head>
<body class="jumbotron">
    <div class="center" align="center">
        <h1>Cadastro de Produtos</h1>
    </div>

    <c:if test="${sucesso != null}">
        <div class="alert alert-primary alert-dismissible fade show" role="alert">
            <a>${sucesso}</a> 
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
    </c:if>
    <div>
        <table class="table">
            <thead class="thead-dark">
                <tr align="center">
                    <th>Título</th>
                    <th>Descrição</th>
                    <th>Páginas</th>
                    <th>Ações</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${produtos}" var="produto">
                    <tr>
                        <td>${produto.titulo}</td>
                        <td>${produto.descricao}</td>
                        <td align="center">${produto.paginas}</td>
                        <td align="center">
	                        <a class="btn btn-primary" href="${s:mvcUrl('PC#detalhe').arg(0, produto.id).build() }">Editar</a> 
	                    </td>
                    </tr>
                </c:forEach>
                <c:if test="${produtos.size()<=0}">
                   	<tr>
                   		<td colspan="3" class="text-center" ><h3>Não a Produto Cadastrado</h3></td>
                   	</tr>
			    </c:if>
            </tbody>
        </table>
        
        <a class="btn btn-primary" href="${s:mvcUrl('PC#form').build() }">Novo</a> 
    </div>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>