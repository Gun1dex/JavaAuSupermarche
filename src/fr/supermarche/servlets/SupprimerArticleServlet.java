package fr.supermarche.servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.supermarche.classes.Article;

@WebServlet("/SupprimerArticle")
public class SupprimerArticleServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	private ArrayList<Article> articles;
	private Article articleASupprimer = null;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ServletContext svc = getServletContext();
		this.articles = (ArrayList<Article>) svc.getAttribute("listeArticles");
		String reference = request.getParameter("reference");
		this.articleASupprimer = null;
		
		for (Article art : this.articles) {
			if(art.getReference().equals(reference)) {
				this.articleASupprimer = art;
				break;
			}
		}
		if(this.articleASupprimer != null) {
			request.setAttribute("article", this.articleASupprimer);
			
			RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/SupprimerArticle.jsp");
			dispatcher.forward(request, response);
		} else {
			response.sendRedirect(request.getContextPath()+"/ListeArticle");
		}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.articles.remove(this.articleASupprimer);
		
		response.sendRedirect(request.getContextPath()+"/ListeArticle");
	}
}
