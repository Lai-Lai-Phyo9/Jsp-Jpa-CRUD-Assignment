<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<jsp:include page="resources/common.jsp"></jsp:include>
</head>
<body>
	<div class="container-fluid">
		<jsp:include page="resources/menu.jsp"></jsp:include>
		<div class="container">
	<h3 class="my-4 text-center">All Students</h3>
	<div class="btn-gp text-right">
		<a href="student-add.jsp" class="btn btn-outline-secondary">Add New Student</a>
	</div>
	<table class="table bg-secondary text-light mt-3">
		<thead>
			<tr>
				<th>No</th>
				<th>Student Name</th>
				<th>Email</th>
				<th>Phone Number</th>
				<th>Action</th>
			</tr>
		</thead>
		<tbody>	
		<!-- courses List -->		
		   <c:forEach items="${student}" var="s">
				<tr>
					<td><c:set var="numberOfRows" value="${numberOfRows+1}"/>
						<c:out value="${numberOfRows}"/></td>
					<td>${s.name }</td>
					<td>${s.email }</td>
					<td>${s.phone }</td>
					<td>
						<c:url var="action" value="/student-edit">
							<c:param name="studentid">${s.id }</c:param>
						</c:url>
						<a href="${action}" class="btn btn-outline-success">Edit</a>
						
						<c:url var="del" value="/student-delete">
							<c:param name="studentid">${s.id }</c:param>
						</c:url>
						<a href="${del }" class="btn btn-outline-danger">Delete</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	</div>
	</div>
</body>
</html>