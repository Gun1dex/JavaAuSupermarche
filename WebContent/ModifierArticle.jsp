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
	
	<h1 class="display-4 text-center" style="margin-top: 2%;">Modifier un article</h1>
	
	<div class="container text-center" style="margin-top: 2%;">
	 	<% 
	 		HttpSession sessionAdmin = request.getSession();
	 		if("ADMIN".equals(sessionAdmin.getAttribute("role"))) { %>
				<form method="POST">			
					<table>
						<tr>
							<td style="padding-right:50px;">N° de Codebarre</td>
							<td style="padding-left:50px;"><input type="number" name="codebarre" value="${article.codeBarre}"></td>
						</tr>
						<tr>
							<td style="padding-right:50px;">Réference</td>
							<td style="padding-left:50px;"><input type="text" name="reference" value="${article.reference}"></td>
						</tr>
						<tr>
							<td style="padding-right:50px;">Libelle</td>
							<td style="padding-left:50px;"><input type="text" name="libelle" value="${article.libelle}"></td>
						</tr>
						<tr>
							<td style="padding-right:50px;">Prix en centimes</td>
							<td style="padding-left:50px;"><input type="number" name="prix" value="${article.prixHT}"></td>
						</tr>
						<tr>
							<td style="padding-right:50px;">TVA</td>
							<td style="padding-left:50px;"><input type="number" name="tva" value="${article.tauxTVA}"></td>
						</tr>
					</table>
					<br><br>
					<input type="submit" class="btn btn-light" value="Modifier un article">
					<a href="<%=request.getContextPath()%>/ListeArticle" class="btn btn-light">Annuler</a>
				</form>
			<%}else{ %>
				<div class="text-center">
					<p>Vous ne pouvez pas modifier cet article</p>
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