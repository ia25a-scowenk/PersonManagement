<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
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
		<input type="submit" value="submit" />
	</form> <br><br>
	${resp}
	
	<form action="http://localhost:8080/PersonManagement">
		<input type="submit" value="Home"/>
	</form> 
</body>
</html>