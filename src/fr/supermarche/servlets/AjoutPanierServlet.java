package fr.supermarche.servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import fr.supermarche.classes.Article;

@WebServlet("/AjoutPanier")
public class AjoutPanierServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/AjoutPanier.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ServletContext svc = getServletContext();
		ArrayList<Article> articles = (ArrayList<Article>) svc.getAttribute("listeArticles");
		long codeBarre = Long.parseLong(request.getParameter("codeBarre"));
		Article article = null;
		
		for (Article art : articles) {
			if(art.getCodeBarre() == codeBarre) {
				article = art;
				break;
			}
		}
		
		if(article != null) {
			HttpSession session = request.getSession(true);
			ArrayList<Article> panier = (ArrayList<Article>) session.getAttribute("panier");

			if(panier == null) {
				panier = new ArrayList<Article>();
			}
			
			panier.add(article);
			session.setAttribute("panier", panier);
		}
		this.doGet(request, response);
	}

}
