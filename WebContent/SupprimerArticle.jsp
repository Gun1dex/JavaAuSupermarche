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
	<h1>Supprimer l'article</h1>
	<% HttpSession sessionAdmin = request.getSession();
	if("ADMIN".equals(sessionAdmin.getAttribute("role"))) { %>
		<p>N° de Codebarre <%= article.getCodeBarre() %></p>
		<p>Référence <%= article.getReference() %></p>
		<p>Libelle <%= article.getLibelle() %></p>
		<p>Prix HT <%= article.getPrixHT() %></p>
		<p>TVA <%= article.getTauxTVA() %></p>

		<form method="POST">
			<button type="submit">Supprimer Article</button>
		</form>
		<button><a href="<%=request.getContextPath()%>/ListeArticle">Annuler</a></button>
	<%} else{ %>
		<p>Vous ne pouvez pas supprimer cet article</p>
		<br>
		<button><a href="<%= request.getContextPath()%>/ListeArticle">Retour aux articles</a></button>
	<%} %>
</body>
</html>