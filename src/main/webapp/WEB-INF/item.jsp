<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. --> 
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Formatting (dates) --> 
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>One Piece Mang</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/main.css"> <!-- change to match your file/naming structure -->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>

</head>
<body>
	<div class="container" >
		<h1>ALL DEVIL FRUITS:</h1>
		<h2>Pick Your Favorite:</h2>
		
<!-- For loop to display all Fruits  -->
<%-- TEST!
	<c:forEach var="df" items="${ devilFruits}">
			<h3>
				<c:out value="${df.name}" /> <c:out value="${df.price}" />
			</h3>
		</c:forEach> --%>
		
		<table class="table" style="background-color: aqua" >
			<thead>
				<tr>
					<th> Pirate Name </th>
					<th> Fruit Name </th>
					<th> # of Users </th>
				</tr>
			</thead>
			<tbody>
				<tr>
								<td>
						<c:forEach var="df" items="${ devilFruits}">
							<h3>
								<c:out value="${df.owner}" /> 
							</h3>
						</c:forEach>
					
					</td>
					<td>
						<c:forEach var="df" items="${ devilFruits}">
							<h3>
								<c:out value="${df.name}" /> 
							</h3>
						</c:forEach>
					
					</td>
					<td>
						<c:forEach var="df" items="${ devilFruits}">
							<h3>
								<c:out value="${df.price}" />
							</h3>
						</c:forEach>
					
					</td>
				</tr>
			</tbody>
		</table>

	</div>

</body>
</html>