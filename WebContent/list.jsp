<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Show Database Application</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<style>	
table, th, td {
  	border: 1px solid black;
  	border-collapse: collapse;
  	padding: 10px;
  	margin-left: auto;
  	margin-right: auto;
}

.btn-add {
	font-weight: bold;
}

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

.button1 {background-color: #7FB77E;}	


.download {
	
  	border: 1px solid #7FB77E;
  	text-align: center;
  	font-size: 14px;
	padding: 5px;
}

</style>
</head>
<body>
	<form method="post" action="./index.jsp"><button class="button button1">Home</button></form>
	<br><br><br>
	
	<br>

	<div class="row">
		<div align="center" class="container">
			
			<div class="container text-left">
				<a href="<%=request.getContextPath()%>/new" 
					class="btn-add">Add New User</a>
			</div>
			<br> 

			<table style="width:70%">
				<thead>
					<tr>
						<th>ID</th>
						<th>Name</th>
						<th>Date</th>
						
						
						<th>City</th>
						<th>Status</th>
						<th>Operation</th>
					</tr>
				</thead>
				<tbody>
				
					<c:forEach var="task" items="${listTask}">

						<tr>
							<td><c:out value="${task.id}"/></td>
							<td><c:out value="${task.date}"/></td>
							<td><c:out value="${task.name}"/></td>
							<td><c:out value="${task.city}"/></td>
							<td><a href="view?id=<c:out value='${task.id}' />">view</a>
							<td><a href="edit?id=<c:out value='${task.id}' />">Edit</a>
								&nbsp;&nbsp;&nbsp;&nbsp; <a
								href="delete?id=<c:out value='${task.id}' />">Delete</a></td>
								
						</tr>
					</c:forEach>
		
				</tbody>

			</table>
		</div>
	</div>
	<br>
	<div align="center">
		<input class="download" type="submit" value="Download PDF" name="download" onclick="window.print()" /> 
	</div>
</body>
</html>