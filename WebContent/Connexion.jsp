<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Connexion</title>
</head>
<body>
	<jsp:include page="header.jsp" flush="true" />
	
	<h1 class="display-4 text-center" style="margin-top: 2%;">JAVA AU SUPERMARCHE</h1>
	
	<div class="container text-center" style="margin-top: 2%;">
	
		<form method="post">
			<h2>Identifiez vous</h2>
			<label for="login">Login: </label><br>
			<input type="text" name="login"> 
			<br>
			<label for="password">Mot de passe:</label><br>
			<input type="password" name="password">
			<br><br><br>
			<button type="submit" class="btn btn-light">Connexion</button>
			<button type="submit" class="btn btn-light">Continuer sans authentification</button>
		</form>
	
	</div>	
	
	<jsp:include page="footer.jsp" flush="true" />
</body>
</html>