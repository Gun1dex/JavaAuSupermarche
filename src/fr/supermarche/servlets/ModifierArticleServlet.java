package fr.supermarche.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.supermarche.classes.Article;

@WebServlet("/ModifierArticle")
public class ModifierArticleServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String reference = request.getParameter("reference");
		System.out.println(reference);
		
		Article article = new Article(1234, reference, "Un exemple", 10, 0);
		request.setAttribute("article", article);
		
		RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/ModifierArticle.jsp");
		dispatcher.forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
