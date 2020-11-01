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
			<div class="row mt-3">
				<div class="card col-8 offset-2 ">
					<div class="card-body">
						<h4 class="col-6 mt-2">${not empty student ? 'Edit Student':'Add New Student'}</h4>
						<hr/>
						<c:url value="/classes-add" var="save"></c:url>
						<c:url value="/student-add" var="save"></c:url>
						<form action="${save }" class="form col-6" method="post" >
							<input type="hidden" name="studentid" value="${student.id }"> 
							<div class="form-group">
								<input type="text" name="studentname" value="${student.name }" class="form-control" required="required" placeholder="Enter Student Name" />	
							</div>
							<div class="form-group">
								<input type="email" name="email" value="${student.email }" class="form-control" required="required" placeholder="Enter  Email" />	
							</div>
							<div class="form-group">
								<input type="text" name="phone" value="${student.phone }" class="form-control" required="required" placeholder="Enter Phone No" />	
							</div>
							<button type="submit" class="btn btn-success">Save</button>
							<button type="reset" class="btn btn-danger">Clear</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>