<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Panier</title>
</head>
<body>
	<jsp:include page="header.jsp" flush="true" />
	
	<h1>Ajouter un article au panier</h1>

	<form method="POST">
		Saisir le code barre de l'article <input type="text" name="codeBarre">
		<button type="submit">Ajouter au panier</button>
	</form>

	<jsp:include page="footer.jsp" flush="true" />
</body>
</html>