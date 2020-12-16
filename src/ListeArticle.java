

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import supermarche.Article;
import supermarche.ArticleService;

/**
 * Servlet implementation class Servlet
 */
@WebServlet("/ListeArticle")
public class ListeArticle extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArticleService as = new ArticleService();
		ArrayList<Article> articles = as.getArticles();
		//ArrayList<Article> articles = new ArrayList<Article>();
		//articles.add(new Article(1, "1", "Tomate", 5, 0));
		
		request.setAttribute("listeArticle", articles);
		
		RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/liste.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
