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
	<h1>Menu</h1>
	<h2>What would you like to do?</h2>
    <form action="http://localhost:8080/PersonManagement/controller" method="GET">
		<input type="submit" value="Show List of persons" class="buttonb"/><br><br>
	</form> 
	<form action="http://localhost:8080/PersonManagement/createPerson.jsp">
		<input type="submit" value="Create Person" class="buttonb" />
	</form>
</body>
</html>