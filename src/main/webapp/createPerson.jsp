<!DOCTYPE html>
<html>
<head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300..800;1,300..800&family=SN+Pro:ital,wght@0,200..900;1,200..900&display=swap" rel="stylesheet">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="style.css" rel="stylesheet">
<title>Add Person</title>
</head>
<body>
	<h1>Add Person</h1>
    <form action="http://localhost:8080/PersonManagement/controller" method="POST">
		<label for="first">First name:</label><br>
		<input type="text" id="first" name="first" class="input">
		<br><br>
		<label for="last">Last name:</label><br>
		<input type="text" id="last" name="last" class="input">
		<br><br>
		<input type="submit" value="submit" class="buttonb"/>
	</form> <br><br>
	<p class="resp">${resp}</p>
	
	<form action="http://localhost:8080/PersonManagement">
		<input type="submit" value="Home" class="buttonb"/>
	</form> 
</body>
</html>