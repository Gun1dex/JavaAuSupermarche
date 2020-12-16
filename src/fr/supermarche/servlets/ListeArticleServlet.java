package fr.supermarche.servlets;


import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.supermarche.classes.Article;
import fr.supermarche.services.ArticleService;

/**
 * Servlet implementation class Servlet
 */
@WebServlet("/ListeArticle")
public class ListeArticleServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArticleService as = new ArticleService();
		ArrayList<Article> articles = as.getArticles();
		
		request.setAttribute("listeArticle", articles);
		
		RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/ListeArticle.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
