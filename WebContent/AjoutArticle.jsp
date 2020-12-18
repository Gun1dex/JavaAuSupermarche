<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ajouter un article</title>
</head>
<body>
	<jsp:include page="header.jsp" flush="true" />
	
	<h1 class="display-4 text-center" style="margin-top: 2%;">Ajouter un article</h1>
	
	<div class="container text-center" style="margin-top: 2%;">
		<%
			HttpSession sessionAdmin = request.getSession();
		
			if("ADMIN".equals(sessionAdmin.getAttribute("role"))) { %>
				<div class="w-50 p-3" style="margin: 0 auto; padding: 0;">
					<form method="post">
						<table>
							<tr>
								<td style="padding-right:50px;">N° de Codebarre</td>
								<td style="padding-left:50px;"><input type="number" name="codebarre"></td>
							</tr>
							<tr>
								<td style="padding-right:50px;">Réference</td>
								<td style="padding-left:50px;"><input type="text" name="reference"></td>
							</tr>
							<tr>
								<td style="padding-right:50px;">Libelle</td>
								<td style="padding-left:50px;"><input type="text" name="libelle"></td>
							</tr>
							<tr>
								<td style="padding-right:50px;">Prix en centimes</td>
								<td style="padding-left:50px;"><input type="number" name="prix">
							</tr>
							<tr>
								<td style="padding-right:50px;">TVA</td>
								<td style="padding-left:50px;"><input type="number" name="tva"></td>
							</tr>
							
						</table>
						<br><br>
						<input type="submit" class="btn btn-light" value="Ajouter un article">
						
					</form>
				</div>
			<%}
			else{%>
				<div class="text-center">
					<p>Vous n'avez pas l'autorisation d'ajouter un article</p>
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