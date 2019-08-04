<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<header>
       <nav class="navbar navbar-dark navbar-expand-md bg-dark">
           <div class="container-fluid">
           <a class="navbar-brand font-graduate" href="/casadocodigo" >
           		<s:message code="menu.home"/>
           </a>
               <button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1">
                   <span class="sr-only">Toggle navigation</span>
                   <span class="navbar-toggler-icon"></span>
               </button>
               <div class="collapse navbar-collapse justify-content-end" id="navcol-1">
                   <ul class="nav navbar-nav">
                       <security:authorize access="isAuthenticated()">
                       	<li class="nav-item" >
                        	<a class="nav-link disabled" href="#">
                        		<security:authentication property="principal" var="usuario"/>
                        		<s:message code="menu.usuario" arguments="${usuario.username }"/>
                        	</a>
                        </li>
                        <li class="nav-item" ><a class="nav-link" href="${s:mvcUrl('PC#listar').build() }">
                        	<s:message code="menu.listagem"/>
                        </a></li>
                        <li class="nav-item" ><a class="nav-link" href="${s:mvcUrl('PC#form').build() }">
							<s:message code="menu.cadastro"/>
						</a></li>
                        <li class="nav-item" ><a class="nav-link" href="<c:url value = "/logout"/>">
                        	<s:message code="menu.sair"/>
                        </a></li>
                   	</security:authorize>
                   	<li class="nav-item" ><a class="nav-link" href="${s:mvcUrl('CCC#itens').build() }">
                   		<s:message code="menu.carrinho" arguments="${carrinhoCompras.quantidade }"/>
                   	</a></li>
                   	<li class="nav-item dropdown">
				        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				          <s:message code="menu.idioma"/>
				        </a>
				        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
				          <a class="dropdown-item" href="?locale=pt"><s:message code="menu.pt"/></a>
				          <a class="dropdown-item" href="?locale=en_US"><s:message code="menu.en"/></a>
				        </div>
				    </li>
                   	<security:authorize access="!isAuthenticated()">
	                   	<li class="nav-item" ><a class="nav-link" href="<c:url value = "/login"/>">
	                   		<s:message code="menu.entrar"/>
	                   	</a></li>
                   	</security:authorize>
                   </ul>
               </div>
           </div>
       </nav>
   </header>