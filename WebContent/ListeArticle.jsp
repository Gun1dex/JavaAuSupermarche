<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="fr.supermarche.classes.Article"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Liste des articles</title>
</head>
<body>
	<h1>Liste des articles</h1>

	<ul>
		<%
			ArrayList<Article> articles = (ArrayList<Article>) request.getAttribute("listeArticle");

		for (Article article : articles) {
		%>
		<li><a href="<%=request.getContextPath()%>/ModifierArticle?reference=<%=article.getReference() %>">
				<%=article.getLibelle()%>
		</a></li>
		<%
			}
		%>
	</ul>
</body>
</html>