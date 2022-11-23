<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.io.OutputStream"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Database User</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>	
.button {
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}

nav {
	padding: 7px 7px;
	color: green;
	font-weight: bold;
}

.button1 {background-color: crimson;}	
</style>
</head>
<body>
<form method="post" action="./index.jsp"><button class="button button1">Home</button></form>
<br><br>
<header>
<nav>
	<div>
		<a href="<%=request.getContextPath()%>/list"
			class="nav-link">View All Data</a>
	</div>
</nav>

</header>
<br>
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">

					<form action="view" method="post">

					<input type="hidden" name="id" value="<c:out value='${task.id}' />" />


				<fieldset class="form-group">
					
				<c:out value='${"Name : "}' />	<c:out value='${task.name}' />
				</fieldset>
<br>
				<fieldset class="form-group">
				<c:out value='${"Email : "}' />		<c:out value='${task.email}' />
				</fieldset>
<br>
				<fieldset class="form-group">
				<c:out value='${"Address : "}' />		<c:out value='${task.address}' />
				</fieldset>
<br>			
				<fieldset class="form-group">
				<c:out value='${"Phone : "}' />		<c:out value='${task.phone}' />
				</fieldset>
<br>				
				<fieldset class="form-group">
				<c:out value='${"City : "}' />		<c:out value='${task.city}' />
				</fieldset>
<br>				
				<fieldset class="form-group">
				<c:out value='${"Country : "}' />		<c:out value='${task.country}' />
				</fieldset>
<br>				
				<fieldset class="form-group">
				<c:out value='${"Education : "}' />		<c:out value='${task.education}' />
				</fieldset>
<br>				
				<fieldset class="form-group">
				<c:out value='${"Phone : "}' />		<c:out value='${task.phone}' />
				</fieldset>
<br>				
				<fieldset class="form-group">
				<c:out value='${"Photo : "}' />	
				<img src="getimage?id=<c:out value='${task.id}' />"width="125" height ="125"  border="1">
				</fieldset>
				
				
				<a href="edit?id=<c:out value='${task.id}' />">Edit</a>
								&nbsp;&nbsp;&nbsp;&nbsp; 
				<a href="delete?id=<c:out value='${task.id}' />">Delete</a>
				</form>
				<input type="submit" value="Download PDF" name="download" onclick="window.print()" /> 
			</div>
		</div>
	</div>
</body>
</html>