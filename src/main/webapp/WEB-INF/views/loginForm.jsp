<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>loginForm</title>
    <link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/fonts/ionicons.min.css">
    <link rel="stylesheet" href="resources/css/Login-Form-Dark.css">
    <link rel="stylesheet" href="resources/css/styles.css">
</head>

<body>
	<div class="slider-ctn loginBackgroundImage">
	    <div class="login-dark ">
	        <form:form servletRelativeAction="/login"  method="post">
	            <h2 class="sr-only">Login Form</h2>
	            <div class="illustration"><i class="icon ion-ios-locked-outline"></i></div>
	            <div class="form-group"><input class="form-control" type="email" name="username" placeholder="Email"></div>
	            <div class="form-group"><input class="form-control" type="password" name="password" placeholder="Password"></div>
	            <div class="form-group"><button class="btn btn-primary btn-block" type="submit">Log In</button></div>
	         </form:form>
	    </div>
	</div>
    <script src="resources/js/jquery.min.js"></script>
    <script src="resources/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>