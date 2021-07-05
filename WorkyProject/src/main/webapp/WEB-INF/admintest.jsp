<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>	
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isErrorPage="true" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<style>
	body {
		background-color: rosybrown;
        padding: 20px;
	}
</style>
<title>Insert title here</title>
</head>
<body>
	
	<h2>Edit Event</h2>
	<form:form method="POST" action="/addc" modelAttribute="cate">
		<div class="form-group">
	<form:label path="name">Name</form:label>
	<form:errors path="name"></form:errors>
	<form:input path="name" class="form-control" placeholder="Name" required="true"></form:input>
	</div>
	<br />
	<div class="form-group">
	<form:label path="img">Date</form:label>
	<form:errors path="img"></form:errors>
	<form:input path="img" class="form-control" placeholder="img" required="true"></form:input>
	</div>

	<br />
	<input type="submit" value="Create Category" class="btn btn-primary"/>
	</form:form>
	<br><br>
		<table class="table table-hover">
	  <thead>
	    <tr>
	      <th scope="col">#</th>
	      <th scope="col">Name</th>
	      <th scope="col">img</th>
	    </tr>
	  </thead>
	  <tbody>
	  	<c:forEach items="${categories}" var="c">
			    <tr>
			      <td> <c:out value="${c.id}"></c:out> </td>
			      <td> <c:out value="${c.name}"></c:out> </td>
			      <td> <c:out value="${c.img}"></c:out> </td>

			    </tr>
	    </c:forEach>
	  </tbody>
	</table>
</body>
</html>