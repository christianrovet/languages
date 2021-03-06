<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Index</title>
    <link rel="stylesheet" href="/webjars/bootstrap/4.5.0/css/bootstrap.min.css" />
    <script src="/webjars/jquery/3.5.1/jquery.min.js"></script>
    <script src="/webjars/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
		<div class="row justify-content-center mb-2">
			<div class="col p-4">
				<h1 class="text-center">List of Languages</h1>
			</div>
		</div>
		<div class="row">
			 <table class="table table-bordered table-striped">
				<thead class="thead-dark">
					<tr>
						<th scope="col">Name</th>
						<th scope="col">Creator</th>
						<th scope="col">Version</th>
						<th scope="col">Actions</th>
					</tr>					        		
				</thead>
				<c:forEach items="${languages}" var="language">								    
					<tr>
						<td><a href="/languages/<c:out value="${language.id}"/>"><c:out value="${language.name}"/></a></td>
						<td><c:out value="${language.creator}"/></td>
						<td><c:out value="${language.version}"/></td>
						<td>
							<div class="row">
								<div class="col-sm-6 border-right">
									<form >
									<a href="/languages/delete/${language.id}">delete</a>
									</form>
								</div>
								<div class="col-sm-6 border-left">
									<form action="/languages/${language.id}/edit" method="get">
						    		<input type="submit" class="btn btn-link" value="edit">
									</form>
								</div>
							</div>				
		
						</td>
					</tr>
				</c:forEach>
			</table>
		</div>
		<div class="row justify-content-center mb-4">
			<div class="col">
				<h2 class="text-center">New Language</h2>
				</div>
		</div>
		<div class="row justify-content-center">
			<div class="col-4 p-2">
				<form:form action="/languages" method="post" modelAttribute="language">
		<div class="row justify-content-start">
			<div class="col-6">
				<form:label path="name">Name</form:label>
				<p class="text-danger"><form:errors path="name"/></p>
			</div>
			<div class="col-6">
				<form:input path="name"/>
			</div>
		</div>
		<div class="row justify-content-start">
			<div class="col-6">
				<form:label path="creator">Creator</form:label>
				<p class="text-danger"><form:errors path="creator"/></p>
			</div>
			<div class="col-6">  
				<form:input path="creator"/>
			</div>
		</div>
		<div class="row justify-content-start">
			<div class="col-6">
				<form:label path="version">Version</form:label>
				<p class="text-danger"><form:errors path="version"/></p>
			</div>
			<div class="col-6">  
			<form:input path="version"/>
			</div>
		</div>
		<div class="row justify-content-end">
			<div class="col-2-offset-5">
				<input type="submit" value="Submit" class="btn btn-success"/>
			</div>
		</div>
		</form:form>
		</div>
	</div>
</div>
</body>
</html>