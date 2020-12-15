<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Ajouter un article</h1>
<form method="post">
	<label for="codebarre">N° de Codebarre</label>
	<input type="number" name="codebarre">
	<label for="reference">Réference</label>
	<input type="text" name="reference">
	<label for="libelle">Libelle</label>
	<input type="text" name="libelle">
	<label for="prix">Prix en centimes</label>
	<input type="number" name="prix">
	<label for="tva">TVA</label>
	<input type="number" name="tva">
	
<input type="submit" value="ajouter">

</form>
</body>
</html>