<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/9d88a21129.js" crossorigin="anonymous"></script>	
	<meta charset="ISO-8859-1">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<a class="navbar-brand" href="#">Java au Supermarch�</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    		<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNavDropdown">
			<ul class="navbar-nav mr-auto">
				<%
				HttpSession sessionAdmin = request.getSession(false);
		
				if(sessionAdmin!= null  && "ADMIN".equals(sessionAdmin.getAttribute("role"))) { %>
				<li class="nav-item">
					<a class="nav-link" href="<%= request.getContextPath()%>/AjoutArticle">
						<i class="fas fa-file-medical"></i>
						Ajouter un article
					</a>
				</li>
				<%} %>
				<li class="nav-item">
					<a class="nav-link" href="<%= request.getContextPath()%>/ListeArticle">
						<i class="fas fa-list"></i>
						Liste des articles
					</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="<%= request.getContextPath()%>/AjoutPanier">
						<i class="fas fa-shopping-cart"></i>
						Ajouter au panier
					</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="<%= request.getContextPath()%>/TicketCaisse">
						<i class="fas fa-scroll"></i>
						Afficher le ticket de caisse
					</a>
				</li>
			</ul>
			<ul class="navbar-nav">
				<li class="nav-item">
					<a class="nav-link" href="<%= request.getContextPath()%>/Connexion">
						<i class="fas fa-power-off"></i>
						<%= sessionAdmin != null ? "Connexion" : "D�connexion"  %>
					</a>
				</li>
			</ul>
		</div>
	</nav>
</body>
</html>