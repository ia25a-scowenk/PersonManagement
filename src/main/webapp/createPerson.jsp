<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="style.css" rel="stylesheet">
<title>Add Person</title>
</head>
<body>
	<h1>Add Person</h1>
    <form action="http://localhost:8080/PersonManagement/controller" method="POST">
		<label for="first">First name:</label><br>
		<input type="text" id="first" name="first">
		<br><br>
		<label for="last">Last name:</label><br>
		<input type="text" id="last" name="last">
		<br><br>
		<input type="submit" value="submit" class="buttonb"/>
	</form> <br><br>
	<p class="resp">${resp}</p>
	
	<form action="http://localhost:8080/PersonManagement">
		<input type="submit" value="Home" class="buttonb"/>
	</form> 
</body>
</html>