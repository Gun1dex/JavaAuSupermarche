<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="fr.supermarche.classes.Article"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Liste des articles</title>
</head>
<body>
	<jsp:include page="header.jsp" flush="true" />
	<h1 class="display-4 text-center" style="margin-top: 2%;">Liste des articles</h1>
	
	<div class="container" style="margin-top: 2%;">
		<c:choose>
			<c:when test="${listeArticles != null}">
	
				<table class="table">
					<tr>
						<th>Code Barre</th>
						<th>Libelle Article</th>
						<th>Prix HT</th>
						<th>Modifier</th>
						<th>Supprimer</th>
					</tr>
				
					<c:forEach items="${listeArticles}" var="article">
						<tr>
							<td><c:out value="${article.codeBarre}" /></td>
							<td><c:out value="${article.libelle}" /></td>
							<td><c:out value="${article.prixHT/100} €" /></td>
							<td>
								<a href="<%=request.getContextPath()%>/ModifierArticle?reference=${article.reference}">
									<i class="fas fa-edit"></i>
								</a>
							</td>
							<td>
								<a href="<%=request.getContextPath()%>/SupprimerArticle?reference=${article.reference}">
									<i class="fas fa-trash"></i>
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
		
	</div>
	
	<jsp:include page="footer.jsp" flush="true" />
</body>
</html>