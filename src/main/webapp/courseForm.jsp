<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

	<%@ include file="parts/header.jsp" %>

<title>Course Form</title>
</head>
<body class="bg-secondary">

	<div class="container">
		<h1 class="text-info text-center font-weight-bold">Course Enrollment Form</h1>
	
		<hr>
	
		<form action="A1Servlet" method="post">
			<table class="table table-bordered table-dark">
			
				<tbody>
			
					<tr>
						<td scope="row"><label>Given Name</label>
						<td><input type="text" name="givenName"/></td>
					</tr>
						
					<tr>
						<td scope="row"><label>Family Name</label>
						<td><input type="text" name="familyName"/></td>
					</tr>
					
					<tr>
						<td scope="row"><label>Phone Number</label>
						<td><input type="text" name="phoneNumber"/></td>
					</tr>
					
					<tr>
						<td scope="row"><label>Email</label>
						<td><input type="text" name="email"/></td>
					</tr>
					
					<tr>
						<td scope="row"><label>Course to Enroll</label></td>	
						<td>
							<input type="checkbox" name="course" value="it"> IT course</input>
							<input type="checkbox" name="course" value="economics"> Economics course</input>
							<input type="checkbox" name="course" value="health">Health Science course</input>
						</td>
					</tr>
					
					<tr>
						<td scope="row"></td>
						<td><input type="submit" value="Send"/></td>
					</tr>
					
			
				</tbody>
			
			
			</table>
		</form>
	</div>
	<%@ include file="parts/backToMainPage.jsp" %>
	<%@ include file="parts/footer.jsp" %>
</body>
</html>
