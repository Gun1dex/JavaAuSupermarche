<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="fr.supermarche.classes.Article"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Liste des articles</title>
</head>
<body>
	<jsp:include page="header.jsp" flush="true" />
	
	<h1>Liste des articles</h1>
	
	<c:choose>
		<c:when test="${listeArticles != null}">

			<table>
				<tr>
					<th>Code Barre</th>
					<th>Libelle Article</th>
					<th>Prix HT</th>
				</tr>
			
				<c:forEach items="${listeArticles}" var="article">
					<tr>
						<td><c:out value="${article.codeBarre}" /></td>
						<td><c:out value="${article.libelle}" /></td>
						<td><c:out value="${article.prixHT}" /></td>
						<td>
							<a href="<%=request.getContextPath()%>/ModifierArticle?reference=${article.reference}">
								Modifier
							</a>
						</td>
						<td>
							<a href="<%=request.getContextPath()%>/SupprimerArticle?reference=${article.reference}">
								Supprimer
							</a>
						</td>
					</tr>
				</c:forEach>
			</table>

		</c:when>

		<c:otherwise>
		
			Aucun article dans le supermarché.
			
		</c:otherwise>

	</c:choose>
	
	<jsp:include page="footer.jsp" flush="true" />
</body>
</html>