<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<nav class="navbar navbar-expand-lg navbar-light bg-light" >
  <a class="navbar-brand" href="#">Home</a>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav">

		<c:url value="/classes" var="classes"></c:url>
		<c:url value="/courses" var="course"></c:url>
		<c:url value="/students" var="student"></c:url>
		<c:url value="/registrations" var="registration"></c:url>


		<li class="nav-item"><a class="nav-link" href="${course}">Course</a></li>
		<li class="nav-item"><a class="nav-link" href="${classes }">Classes</a></li>
		<li class="nav-item"><a class="nav-link" href="${student }">Student</a></li>
		<li class="nav-item"><a class="nav-link" href="${registration}">Registration</a></li>
    </ul>
  </div>
</nav>
