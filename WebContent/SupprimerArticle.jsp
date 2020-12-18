<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:useBean id="article" scope="request" type="fr.supermarche.classes.Article" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Supprimer article</title>
</head>
<body>
	<jsp:include page="header.jsp" flush="true" />
	
	<h1 class="display-4 text-center" style="margin-top: 2%;">Supprimer l'article</h1>
	
	<div class="container text-center" style="margin-top: 2%;">
	
		<% HttpSession sessionAdmin = request.getSession();
		if("ADMIN".equals(sessionAdmin.getAttribute("role"))) { %>
			<div class="w-50 p-3" style="margin: 0 auto; padding: 0;">
				<table>
					<tr>
						<td style="padding-right:50px;">N° de Codebarre</td>
						<td style="padding-left:50px;"><c:out value="${article.codeBarre}"/></td>
					</tr>
					<tr>
						<td style="padding-right:50px;">Réference</td>
						<td style="padding-left:50px;"><c:out value="${article.reference}"/></td>
					</tr>
					<tr>
						<td style="padding-right:50px;">Libelle</td>
						<td style="padding-left:50px;"><c:out value="${article.libelle}"/></td>
					</tr>
					<tr>
						<td style="padding-right:50px;">Prix en centimes</td>
						<td style="padding-left:50px;"><c:out value="${article.prixHT}"/></td>
					</tr>
					<tr>
						<td style="padding-right:50px;">TVA</td>
						<td style="padding-left:50px;"><c:out value="${article.tauxTVA}"/></td>
					</tr>
					
				</table>
		
				<form method="POST">
					<div class="text-center">
						<button type="submit" class="btn btn-light">Supprimer Article</button>
						<a href="<%=request.getContextPath()%>/ListeArticle" class="btn btn-light">Annuler</a>
					</div>
				</form>
			</div>
		<%} else{ %>
			<div class="text-center">
				<p>Vous ne pouvez pas supprimer cet article !</p>
				<br>
				<a href="<%= request.getContextPath()%>/ListeArticle" class="btn btn-light">
					Retour aux articles
				</a>
			</div>
		<%} %>
			
		</div>	
			
		<jsp:include page="footer.jsp" flush="true" />
</body>
</html>