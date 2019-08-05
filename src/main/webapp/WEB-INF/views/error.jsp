<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>

<tags:pageTemplate titulo="Erro encontrado">
<div class="highlight-clean">
	<div class="container">
		<div class="intro">
			<h2 class="text-center font-graduate" >Algo de errado não está certo!!!</h2>
			
			<!-- 
				Mensagem: ${exception.message}
				 <c:forEach items="${exception.stackTrace }" var="stk">
				 	${stk }
				 </c:forEach>
			 -->
		</div>
	</div>
</div>
</tags:pageTemplate>