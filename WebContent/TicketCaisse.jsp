<%@page import="fr.supermarche.services.ArticleService"%>
<%@page import="fr.supermarche.classes.Article"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ticket de caisse</title>
</head>
<body>
	<jsp:include page="header.jsp" flush="true" />
		
	<h1 class="display-4 text-center" style="margin-top: 2%;">Ticket de caisse</h1>
	
	<div class="container" style="margin-top: 2%;">
	
		<div class="w-50 p-3" style="margin: 0 auto; padding: 0;">

			<c:choose>
				<c:when test="${panier != null}">
		
					<table class="table">
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
								<td><c:out value="${article.prixHT/100} €" /></td>
								<td><c:out value="${article.getMontantTTC()/100} €" /></td>
							</tr>
						</c:forEach>
					</table>
					
					<div style="margin-top: 50px;">
					
						<p>Total TTC : <c:out value="${montantTTC/100} €" /> </p>
						
						<c:forEach items="${totalTVA}" var="tva">
							<p>TVA <c:out value="${tva.key}" />% -> <c:out value="${tva.value}" /></p>
						</c:forEach>
						
					</div>
		
				</c:when>
		
				<c:otherwise>
					
					<div class="text-center">
					
						Aucun article dans le panier.
						
					</div>
					
				</c:otherwise>
		
			</c:choose>
		
		</div>
		
	</div>
	
	<jsp:include page="footer.jsp" flush="true" />
</body>
</html>