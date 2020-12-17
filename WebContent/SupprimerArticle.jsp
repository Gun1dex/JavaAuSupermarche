<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:useBean id="article" scope="request" type="fr.supermarche.classes.Article" />
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Supprimer article</title>
</head>
<body>
	<p>N° de Codebarre <%= article.getCodeBarre() %></p>
	<p>N° de Référence <%= article.getReference() %></p>
	<p>Libelle <%= article.getLibelle() %></p>
	<p>Prix HT <%= article.getPrixHT() %></p>
	<p>TVA <%= article.getTauxTVA() %></p>

	<form method="POST">
		<button type="submit">Supprimer Article</button>
	</form>
	<button><a href="<%=request.getContextPath()%>/ListeArticle">Annuler</a></button>
</body>
</html>