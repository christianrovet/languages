<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Show</title>
    <link rel="stylesheet" href="/webjars/bootstrap/4.5.0/css/bootstrap.min.css" />
    <script src="/webjars/jquery/3.5.1/jquery.min.js"></script>
    <script src="/webjars/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<div class="card text-center">
  			<div class="card-header">
  				<a class="nav-link" href="/languages">Home </a>
    			<br>Language Details
  		</div>
  		<div class="card-body">
    		<h5 class="card-title"><c:out value="${language.name}"/></h5>
    		<p class="card-text">Creator: <c:out value="${language.creator}"/>
    			<br>Version: <c:out value="${language.version}"/></p>
    		
    		<a href="/languages/${language.id}/edit" class="btn btn-lg btn-primary">Edit</a>
    	</div>
    	<div class="card-footer text-muted">
    		<form action="/languages/<c:out value="${language.id}"/>" method="post">
				<input type="hidden" name="_method" value="delete">
    			<input type="submit" class="btn btn-link" value="delete">
    		</form>
  		</div>
  		
		</div>
	</div>
</body>
</html>