<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<jsp:useBean id="article" scope="request" type="fr.supermarche.classes.Article" />

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Modifier Article</title>
</head>
<body>
<h1>Modifier un article</h1>

	<form method="POST">			
		<label for="codebarre">N° de Codebarre</label>
		<input type="number" name="codebarre" value="${article.codeBarre}">
		<label for="reference">Réference</label>
		<input type="text" name="reference" value="${article.reference}">
		<label for="libelle">Libelle</label>
		<input type="text" name="libelle" value="${article.libelle}">
		<label for="prix">Prix en centimes</label>
		<input type="number" name="prix" value="${article.prixHT}">
		<label for="tva">TVA</label>
		<input type="number" name="tva" value="${article.tauxTVA}">
		<button type="submit">Modifier</button>
	</form>
	
</body>
</html>