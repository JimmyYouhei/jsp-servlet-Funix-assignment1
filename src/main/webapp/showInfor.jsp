<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
	<%@ include file="parts/header.jsp" %>
<title>show information from Course Form</title>
</head>

<body class="bg-secondary">

	<div class="container">
	
		<h1 class="text-info text-center font-weight-bold">Course Enrollment Form Detail</h1>
		<hr>
	
		<table class="table table-bordered table-dark">
			<thead>
				<tr>
					<th scope="col">Given Name</th>
					<th scope="col">Family Name</th>
					<th scope="col">Phone Number</th>
					<th scope="col">Email</th>
					<th scope="col">Enroll to IT course?</th>
					<th scope="col">Enroll to Economics course?</th>
					<th scope="col">Enroll to Health Science course?</th>
				</tr>
			</thead>
		
			<tbody>
				<tr>
					<td scope="row">${param['givenName']}</td>
					<td><%= request.getParameter("familyName")%></td>
					<td>${phoneNumber}</td>
					<td>${email}</td>
					<td>
						<c:choose>
							<c:when test="${enrollIt}">
								<input type="checkbox" checked="checked" name="enrollIt" disabled="disabled">
							</c:when>
							<c:otherwise>
								<input type="checkbox" name="enrollIt" disabled="disabled">
							</c:otherwise>
						</c:choose>
					</td>
					
					<td>
						<c:choose>
							<c:when test="${enrollEconomics}">
								<input type="checkbox" checked="checked" name="enrollEconomics" disabled="disabled">
							</c:when>
							<c:otherwise>
								<input type="checkbox" name="enrollEconomics" disabled="disabled">
							</c:otherwise>
						</c:choose>
					</td>
					
					
					<td>
						<c:choose>
							<c:when test="${enrollHealth}">
								<input type="checkbox" checked="checked" name="enrollHealth" disabled="disabled">
							</c:when>
							<c:otherwise>
								<input type="checkbox" name="enrollHealth" disabled="disabled">
							</c:otherwise>
						</c:choose>
					</td>
					
				</tr>
			</tbody>
		
		</table>
	
	</div>
	
	<%@ include file="parts/backToMainPage.jsp" %>
	<%@ include file="parts/footer.jsp" %>
	
</body>
</html>

				
				