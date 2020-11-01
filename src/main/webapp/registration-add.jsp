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
						<h4 class="col-6">${not empty registrations?'Edit Registration':'Add New Registration' }</h4>
						<hr/>
						<c:url value="/reg-add" var="save"></c:url>
						<form action="${save }" class="form" method="post">
							<input type="hidden" name="regid" value="${registrations.id }" >
							<div class="form-group">
								<select name="stuid" class="form-control col-6">
									<c:forEach items="${student}" var="s">
									<option value="${s.id }" ${registrations.student.id==s.id?'selected':'' }>${s.name }</option>
									</c:forEach>
								</select>
							</div>
							<div class="form-group">
								<select name="classid" class="form-control col-6">
									<c:forEach items="${classes}" var="c">
									<option value="${c.id }" ${registrations.classes.id==c.id?'selected':'' }>${c.name }</option>
									</c:forEach>
								</select>
							</div>
							<div class="form-group">
								<input type="date" value="${registrations.reg_date}" name="regdate" class="form-control" required="required" />	
							</div>
							<div class="form-group">
								<input type="number" value="${registrations.paid_amt}" name="amt" class="form-control" required="required" placeholder="Enter  Paid Amount"/>
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