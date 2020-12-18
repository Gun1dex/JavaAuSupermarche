<%@page import="fr.supermarche.services.ArticleService"%>
<%@page import="fr.supermarche.classes.Article"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ticket de caisse</title>
</head>
<body>
	<jsp:include page="header.jsp" flush="true" />
	
	<h1>Ticket de caisse</h1>

	<c:choose>
		<c:when test="${panier != null}">

			<table>
				<tr>
					<th>Code Barre</th>
					<th>Libelle Article</th>
					<th>Prix HT</th>
					<th>Prix TTC</th>
				</tr>
			
				<c:forEach items="${panier}" var="article">
					<tr>
						<td><c:out value="${article.codeBarre}" /></td>
						<td><c:out value="${article.libelle}" /></td>
						<td><c:out value="${article.prixHT}" /></td>
						<td><c:out value="${article.getMontantTTC()}" /></td>
					</tr>
				</c:forEach>
			</table>
			
			<p>Total TTC : <c:out value="${montantTTC}" /> </p>
			
			<c:forEach items="${totalTVA}" var="tva">
				<p>TVA <c:out value="${tva.key}" />% -> <c:out value="${tva.value}" /></p>
			</c:forEach>

		</c:when>

		<c:otherwise>
		
			Aucun article dans le panier.
			
		</c:otherwise>

	</c:choose>
	
	<jsp:include page="footer.jsp" flush="true" />
</body>
</html>