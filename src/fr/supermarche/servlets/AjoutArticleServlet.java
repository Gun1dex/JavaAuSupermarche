package fr.supermarche.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import fr.supermarche.classes.Article;

@WebServlet("/AjoutArticle")
public class AjoutArticleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/AjoutArticle.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		long codebarre = Integer.parseInt(request.getParameter("codebarre"));
		String reference = request.getParameter("reference");
		String libelle = request.getParameter("libelle");
		int prix = Integer.parseInt(request.getParameter("prix"));
		int tva = Integer.parseInt(request.getParameter("tva"));
		
		ServletContext svc = getServletContext();
		ArrayList<Article> articles = (ArrayList<Article>) svc.getAttribute("listeArticles");

		Article article = new Article(codebarre, reference, libelle, prix, tva);

		articles.add(article);

		response.sendRedirect(request.getContextPath()+"/ListeArticle");
	}
}
