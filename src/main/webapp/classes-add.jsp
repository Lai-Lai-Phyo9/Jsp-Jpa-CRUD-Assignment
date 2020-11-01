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
						<h4 class="col-6 mt-2">${not empty classes ? 'Edit Class':'Add New Class'}</h4>
						<hr/>
						<c:url value="/classes-add" var="save"></c:url>
						<form action="${save }" class="form col-6" method="post">
							<input type="hidden" name="classid" value="${classes.id }"> 
							<div class="form-group">
								<input name="classname" value="${classes.name }" class="form-control " placeholder="Enter Class Name" type="text" required="required"/>
							</div>
							<div class="form-group">
								<input type="date" name="sdate" value="${classes.start_date }" class="form-control " placeholder="Enter Start Date"required="required"/>
							</div>
							<button class="btn btn-danger" type="reset">Clear</button>
							<button class="btn btn-primary" type="submit">Save</button>					
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	
</body>
</html>