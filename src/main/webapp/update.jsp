<!DOCTYPE html>
<html>
<head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300..800;1,300..800&family=SN+Pro:ital,wght@0,200..900;1,200..900&display=swap" rel="stylesheet">
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
		<input type="text" id="first" name="first" value="${param.firstname}" class="input">
		<br><br>
		<label for="last">Last name:</label><br>
		<input type="text" id="last" name="last" value="${param.lastname}" class="input">
		<br><br>
		<input type="submit" value="submit" class="buttonb"/>
	</form> <br><br>
	<p class="resp">${resp}</p>
	
	<form action="http://localhost:8080/PersonManagement/controller" method="GET">
		<input type="submit" value="Back to the List" class="buttonb"/>
	</form> 
</body>
</html>