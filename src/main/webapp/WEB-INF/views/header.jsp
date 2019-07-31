<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<header class="mb-4">
        <nav class="navbar navbar-light navbar-expand-md bg-light">
            <div class="container-fluid"><a class="navbar-brand" href="/casadocodigo">Home</a>
                <button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-end" id="navcol-1">
                    <ul class="nav navbar-nav">
                        <security:authorize access="isAuthenticated()">
                        	<li class="nav-item" role="presentation">
	                        	<a class="nav-link disabled" href="#">
	                        		<security:authentication property="principal" var="usuario"/>
	                        		Usuário: ${usuario.username }
	                        	</a>
	                        </li>
	                        <li class="nav-item" role="presentation"><a class="nav-link active" href="${s:mvcUrl('PC#listar').build() }">Listagem</a></li>
	                        <li class="nav-item" role="presentation"><a class="nav-link" href="${s:mvcUrl('PC#form').build() }">Cadastro</a></li>
	                        <li class="nav-item" role="presentation"><a class="nav-link" href="<c:url value = "/logout"/>">Sair</a></li>
                    	</security:authorize>
                    	<li class="nav-item" role="presentation"><a class="nav-link" href="carrinho">Seu Carrinho (${carrinhoCompras.quantidade })</a></li>
                    	<li class="nav-item" role="presentation"><a class="nav-link" href="<c:url value = "/login"/>">Entrar</a></li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
</body>
</html>