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
						<h4 class="col-6 mt-2">${not empty course ? 'Edit Course':'Add New Course'}</h4>
						<hr/>
						<c:url value="/course-add" var="save"></c:url>
						<form action="${save }" class="form col-6" method="post">
							<input type="hidden" name="courseid" value="${course.id }"> 
							<div class="form-group">
								<input type="text" name="coursename" value="${course.name }" class="form-control" required="required" placeholder="Enter Course Name" />
							</div>
							<div class="form-group">
								<input type="number" name="fees" value="${course.fees }" class="form-control" required="required" placeholder="Enter  Fees" />
							</div>
							<div class="form-group">
								 <input type="text" name="duration" value="${course.duration }" class="form-control" required="required" placeholder="Enter Duration" />
							</div>
							<div class="form-group">
								<label>Level</label> 
								 <select name="level" class="form-control">
									 <option value="Basic" ${"Basic"==course.level?'selected':'' }>Basic</option>
									 <option value="Intermediate" ${"Intermediate"==course.level?'selected':'' }>Intermediate</option>
									 <option value="Advance" ${"Advance"==course.level?'selected':'' }>Advance</option>
								 </select>
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