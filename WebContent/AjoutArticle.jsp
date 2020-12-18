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
	
	<h1>Ajouter un article</h1>
	<%
		HttpSession sessionAdmin = request.getSession();
	
		if("ADMIN".equals(sessionAdmin.getAttribute("role"))) { %>
	
			<form method="post">
				<label for="codebarre">N° de Codebarre</label>
				<input type="number" name="codebarre">
				<label for="reference">Réference</label>
				<input type="text" name="reference">
				<label for="libelle">Libelle</label>
				<input type="text" name="libelle">
				<label for="prix">Prix en centimes</label>
				<input type="number" name="prix">
				<label for="tva">TVA</label>
				<input type="number" name="tva">
				
				<input type="submit" value="ajouter">
		<%}
		else{%>
			<p>Vous n'avez pas l'autorisation d'ajouter un article</p>
			<br>
			<button type="button" class="btn btn-light">
				<a href="<%= request.getContextPath()%>/ListeArticle">Retour aux articles</a>
			</button>
		<%} %>

		</form>
		
		<jsp:include page="footer.jsp" flush="true" />
</body>
</html>