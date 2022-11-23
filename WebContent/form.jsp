<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<style type="text/css">
* {box-sizing: border-box;}

html {
  font-family: Arial, Helvetica, sans-serif;
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
}

.show{
	 text-align: center;
	 border: 1;
	 width: 50%; 
	 height: 50%;
}

.header {
  padding: 60px;
  text-align: center;
  background: #7FB77E;
  color: white;
  font-size: 30px;
}

.navbar a {
   display: inline;
   list-style-type: none;
   margin-right: 20px;
   font-size: 20px;
 }
 
a {
    color: black;
    text-decoration: underline;
    font-weight: bold;
}

.navbar {
   background-color: #B1D7B4;
   padding: 15px;
   top: 0;
 }

.section{
	padding: 250px;
    text-align: center;
	background-color: gray;
}
.btn-group a {
  background-color: #04AA6D; /* Green background */
  border: 1px solid green; /* Green border */
  color: white; /* White text */
  padding: 10px 24px; /* Some padding */
  cursor: pointer; /* Pointer/hand icon */
  float: left; /* Float the buttons side by side */
  width: 50%;
}

.btn-group a:not(:last-child) {
  border-right: none; /* Prevent double borders */
}

/* Clear floats (clearfix hack) */
.btn-group:after {
  content: "";
  clear: both;
  display: table;
}

/* Add a background color on hover */
.btn-group a:hover {
  background-color: #3e8e41;
}

/* Add a color to the active/current link */
.navbar a.active {
  background-color: #04AA6D;
  color: white;
}

 input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

/* Style the submit button */
input[type=submit] {
  width: 10%;
  background-color: #04AA6D;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

/* Add a background color to the submit button on mouse-over */
input[type=submit]:hover {
  background-color: #45a049;
}

.footer {
   position: fixed;
   left: 0;
   bottom: 0;
   width: 100%;	
 	
   padding: 10px;
   color: white;
   background-color: #90B77D;
   text-align: center;
   font-weight: bold;
}
</style>

</head>
<body>
<section>
	<div class="header">
		<h1>Welcome to ATS Indonesia</h1>
	</div>
</section>
<section class="navbar">
	<div>
	 	<a href="index.jsp">Home</a>
	</div>
</section>
<br>
<section>
<div class="container col-md-13">
		<div class="card">
			<div class="card-body">
				<c:if test="${task != null}">
					<form action="update" method="post">
				</c:if>
				<c:if test="${task == null}">
					<form action="insert" method="post">
				</c:if>

				<caption>
					<h2>
						<c:if test="${task != null}">Edit</c:if>
						<c:if test="${task == null}">Add New User</c:if>
					</h2>
				</caption>
								<c:if test="${task != null}">
					<input type="hidden" name="id" value="<c:out value='${task.id}' />" />
				</c:if>

				<fieldset class="form-group">
					<label>Name</label> <input type="text"
						value="<c:out value='${task.name}' />" class="form-control"
						name="name" required="required">
				</fieldset>

				<fieldset class="form-group">
					<label>Email</label> <input type="text"
						value="<c:out value='${task.email}' />" class="form-control"
						name="email">
				</fieldset>

				<fieldset class="form-group">
					<label>Address</label> <input type="text"
						value="<c:out value='${task.address}' />" class="form-control"
						name="address">
				</fieldset>
				
				<fieldset class="form-group">
					<label>Phone</label> <input type="text"
						value="<c:out value='${task.phone}' />" class="form-control"
						name="phone">
				</fieldset>
				
				<fieldset class="form-group">
					<label>City</label> <input type="text"
						value="<c:out value='${task.city}' />" class="form-control"
						name="city">
				</fieldset>
				
				<fieldset class="form-group">
					<label>Country</label> <input type="text"
						value="<c:out value='${task.country}' />" class="form-control"
						name="country">
				</fieldset>
				
				<fieldset class="form-group">
					<label>Education</label> <input type="text"
						value="<c:out value='${task.education}' />" class="form-control"
						name="education">
				</fieldset>
				
				<fieldset class="form-group">
					<label>Photo</label> <input type="file"
						value="<c:out value='${task.photo}' />" class="form-control"
						name="photo">
					<img src="getimage?id=<c:out value='${task.id}' />"width="100" height ="100"  border="1">
				</fieldset>
				
				<button type="submit" class="btn btn-success">Save</button>
				</form>
			</div>
		</div>
	</div>
  </section>
<br><br>
<section>
 	<div class="footer">
   		<p>Bootcamp Batch 9 &copy; 2022, PT Asian Technology Solution</p>
  	</div>
</section>
  
</body>
</html>