<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="style.css" rel="stylesheet">
<title>Login JSP</title>
</head>
<body>
	<h1>What would you like to do</h1>
    <form action="http://localhost:8080/PersonManagement/controller" method="GET">
		<input type="submit" value="Show List of persons" class="buttonb"/><br><br>
	</form> 
	<form action="http://localhost:8080/PersonManagement/createPerson.jsp">
		<input type="submit" value="Create Person" class="buttonb" />
	</form>
</body>
</html>