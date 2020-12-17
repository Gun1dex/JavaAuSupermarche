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

@WebServlet("/ModifierArticle")
public class ModifierArticleServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	private Article articleAModifier = null;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ServletContext svc = getServletContext();
		ArrayList<Article> articles = (ArrayList<Article>) svc.getAttribute("listeArticles");
		String reference = request.getParameter("reference");
		this.articleAModifier = null;
		
		for (Article art : articles) {
			if(art.getReference().equals(reference)) {
				this.articleAModifier = art;
				break;
			}
		}
		if(this.articleAModifier != null) {
			request.setAttribute("article", this.articleAModifier);
			
			RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/ModifierArticle.jsp");
			dispatcher.forward(request, response);
		} else {
			response.sendRedirect(request.getContextPath()+"/ListeArticle");
		}
		
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		long codeBarre = Integer.parseInt(request.getParameter("codebarre"));
		String reference = request.getParameter("reference");
		String libelle = request.getParameter("libelle");
		int prix = Integer.parseInt(request.getParameter("prix"));
		int tva = Integer.parseInt(request.getParameter("tva"));
		
		this.articleAModifier.setCodeBarre(codeBarre);
		this.articleAModifier.setReference(reference);
		this.articleAModifier.setLibelle(libelle);
		this.articleAModifier.setPrixHT(prix);
		this.articleAModifier.setTauxTVA(tva);
		
		response.sendRedirect(request.getContextPath()+"/ListeArticle");
	}

}
