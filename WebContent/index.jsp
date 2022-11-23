<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Form Page</title>
<style type="text/css">
  		<%@include file="assets/styles/style.css" %>
</style>
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
<section>
<div class="header">
      <div class="jumbotron">
        <h1>Application</h1>
        <p>Dashboard Application</p>
      </div>
      <div class="nav">
            <ul>
              <li><a>Home</a></li>
              <li><a>Profile</a></li>
              <li><a>Contact</a></li>
              <li><a>About</a></li>
            </ul>
       </div>
</div>
<br><br>
<section>	
		<div align="center" class="Data-record">
			<h1>Data Record</h1>
		</div>
	<div align="center" class="section">
		
		
		<form method="post" action="./form.jsp"><button class="button button1">Add New Record</button></form>
		<form method="post" action="list"><button class="button button2">View all Record</button></form>
		
	</div>
</section>
<div class="footer">
	<p>Bootcamp Batch 9 &copy; 2022, PT Asian Technology Solution</p>
</div>
</body>
</html>