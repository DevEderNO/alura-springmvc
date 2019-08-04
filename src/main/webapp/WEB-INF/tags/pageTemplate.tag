<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="titulo" required="true" %>
<%@ attribute name="bodyClass" required="false" %>
<!DOCTYPE html>
<html class="h-100">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
	<title>${titulo} - Casa do Código</title>
	<!-- CSS -->
    <%@ include file="/WEB-INF/views/css.jsp" %>
</head>
<body class="${bodyClass} d-flex flex-column h-100">
	<!-- Header -->
	<%@ include file="/WEB-INF/views/header.jsp" %>
	
	
	<jsp:doBody/>
	
	
	
	<!-- Footer -->
	<%@ include file="/WEB-INF/views/footer.jsp" %>
	<!-- Scripts  -->
	<%@ include file="/WEB-INF/views/end-scripts.jsp" %>
</body>
</html>
