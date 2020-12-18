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
		
	<h1 class="display-4 text-center" style="margin-top: 2%;">Ajouter un article au panier</h1>
	
	<div class="container text-center" style="margin-top: 2%;">

		<form method="POST">
			Saisir le code barre de l'article <br><br>
			<input type="text" name="codeBarre"> <br><br><br>
			<button type="submit" class="btn btn-light">Ajouter au panier</button>
		</form>
	
	</div>

	<jsp:include page="footer.jsp" flush="true" />
</body>
</html>