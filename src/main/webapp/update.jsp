<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="style.css" rel="stylesheet">
<title>Login JSP</title>
</head>
<body>
	<h1>Update Person</h1>
    <form action="http://localhost:8080/PersonManagement/controller" method="POST">
    	<input type="hidden" id="uuid" name="uuid" value="${param.uuid}">
		<label for="first">First name:</label><br>
		<input type="text" id="first" name="first" value="${param.firstname}">
		<br><br>
		<label for="last">Last name:</label><br>
		<input type="text" id="last" name="last" value="${param.lastname}">
		<br><br>
		<input type="submit" value="submit" class="buttonb"/>
	</form> <br><br>
	<p class="resp">${resp}</p>
	
	<form action="http://localhost:8080/PersonManagement/controller" method="GET">
		<input type="submit" value="Back to the List" class="buttonb"/>
	</form> 
</body>
</html>