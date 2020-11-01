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
	<h3 class="my-4 text-center">All Classes</h3>
	<div class="btn-gp text-right">
		<a href="classes-add.jsp" class="btn btn-outline-secondary">Add New Class</a>
	</div>
	<table class="table bg-secondary text-light mt-3">
		<thead>
			<tr>
				<th>No</th>
				<th>Class Name</th>
				<th>Start Date</th>
				<th>Action</th>
			</tr>
		</thead>
		<tbody>	
		<!-- Classes List -->		
		  <c:forEach items="${classes}" var="c">
			<tr>
				<td><c:set var="numberOfRows" value="${numberOfRows+1}"/>
					<c:out value="${numberOfRows}"/></td>
				<td>${c.name }</td>
				<td>${c.start_date }</td>
				
				<td>
				<c:url var="action" value="/class-edit">
				<c:param name="classid">${c.id }</c:param></c:url>
				<a href="${action }" class="btn btn-outline-success">Edit</a>
				<c:url var="del" value="/class-delete">
				<c:param name="classid">${c.id }</c:param></c:url>
				<a href="${del}" class="btn btn-outline-danger">Delete</a></td> 
			</tr>
		 </c:forEach>
		</tbody>
	</table>
	</div>
	</div>
</body>
</html>