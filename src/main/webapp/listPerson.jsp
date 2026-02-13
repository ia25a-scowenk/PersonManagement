<%@ page import="java.util.ArrayList"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300..800;1,300..800&family=SN+Pro:ital,wght@0,200..900;1,200..900&display=swap" rel="stylesheet">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Person List</title>
<link href="style.css" rel="stylesheet">
</head>
<body>
	<h1>Persons:</h1>
	<ul>
		<c:forEach var="item" items="${persons}">
			<li>${item.vorname} ${item.nachname}
				<button type="button" onclick="deletePerson('${item.uuid}')">Delete</button>
				<form action="http://localhost:8080/PersonManagement/update.jsp" class="buttonupdate">
					<input type="hidden" id="uuid" name="uuid" value="${item.uuid}">
					<input type="hidden" id="firstname" name="firstname" value="${item.vorname}">
					<input type="hidden" id="lastname" name="lastname" value="${item.nachname}">
					<input type="submit" value="Update" class="button">
				</form>
			</li>
			<br>
		</c:forEach>
	</ul>
	<script>
		function deletePerson(uuid) {
		    // Sends the request immediately
		    fetch('http://localhost:8080/PersonManagement/controller?uuid=' + uuid, {
		        method: 'DELETE'
		    })
		    .then(response => {
		        if (response.ok) {
		            // Refresh the page to show the person is gone
		            window.location.reload();
		        } else {
		            console.error("Server returned an error.");
		        }
		    })
		    .catch(error => console.error('Network error:', error));
		}
	</script>
	<form action="http://localhost:8080/PersonManagement">
		<br>
		<input type="submit" value="Home" class="buttonb"/>
	</form>
</body>
</html>