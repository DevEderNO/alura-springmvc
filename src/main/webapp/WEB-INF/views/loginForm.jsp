<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<tags:pageTemplate titulo="Login">
	<div class="container-fluid p-5 imageFundoLogin" align="center">
	    <div class="login-dark">
	        <form:form servletRelativeAction="/login"  method="post">
	            <h2 class="sr-only">Login Form</h2>
	            <div class="illustration"><i class="icon ion-ios-locked-outline"></i></div>
	            <div class="form-group"><input class="form-control" type="email" name="username" placeholder="Email"></div>
	            <div class="form-group"><input class="form-control" type="password" name="password" placeholder="Password"></div>
	            <div class="form-group"><button class="btn btn-primary btn-block" type="submit">Log In</button></div>
	         </form:form>
	    </div>
	</div>
</tags:pageTemplate>