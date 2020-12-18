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
	<jsp:include page="header.jsp" flush="true" />
	
	<h1>Modifier un article</h1>
 	<% 
 		HttpSession sessionAdmin = request.getSession();
 		if("ADMIN".equals(sessionAdmin.getAttribute("role"))) { %>
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
		<%}else{ %>
			<p>Vous ne pouvez pas modifier cet article</p>
			<br>
			<button><a href="<%= request.getContextPath()%>/ListeArticle">Retour aux articles</a></button>
		<%} %>
		
		<jsp:include page="footer.jsp" flush="true" />
</body>
</html>