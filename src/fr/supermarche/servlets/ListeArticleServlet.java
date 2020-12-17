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

/**
 * Servlet implementation class Servlet
 */
@WebServlet("/ListeArticle")
public class ListeArticleServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ServletContext svc = getServletContext();
		ArrayList<Article> articles = (ArrayList<Article>) svc.getAttribute("listeArticles");
				
		request.setAttribute("listeArticles", articles);
		
		RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/ListeArticle.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
