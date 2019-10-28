<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>       
<!DOCTYPE html>
<html>
<head>

	<%@ include file="parts/header.jsp" %>

<title>Print Odd Numbers</title>
</head>
<body class="bg-light">
	<div class="container">
		<h1 class="text-center font-weight-bold">Print Odd</h1>
		
		<hr>
		
		<ul class="list-inline">
			<c:forEach var="aOddNumber" items="${OddNumberList}">
				<c:if test="${aOddNumber.divisibleBy5}">
					<li class="list-inline-item text-danger font-weight-bold">${aOddNumber.value}</li>
				</c:if>
				
				<c:if test="${!aOddNumber.divisibleBy5}">
					<li class="list-inline-item">${aOddNumber.value}</li>
				</c:if>
	
			</c:forEach>
		</ul>
	</div>
		<%@ include file="parts/backToMainPage.jsp" %>
		<%@ include file="parts/footer.jsp" %>
	
</body>
</html>