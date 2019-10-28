<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>       
<!DOCTYPE html>
<html>
<head>

	<%@ include file="parts/header.jsp" %>
	
<title>Fibonacci List</title>
</head>
<body class="bg-light">
	<div class="container">
		<h1 class="text-center font-weight-bold">Fibonacci List</h1>
		
		<hr>
		
		<ul class="list-inline">
			<c:forEach var="aFibonacciNumber" items="${fibonacciList}">
				<li class="list-inline-item">${aFibonacciNumber}</li>
				
			</c:forEach>
		</ul>
	</div>
	
	<%@ include file="parts/backToMainPage.jsp" %>
	<%@ include file="parts/footer.jsp" %>
</body>
</html>