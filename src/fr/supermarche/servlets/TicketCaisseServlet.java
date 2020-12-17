package fr.supermarche.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import fr.supermarche.classes.Article;
import fr.supermarche.services.ArticleService;

@WebServlet("/TicketCaisse")
public class TicketCaisseServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		ArrayList<Article> panier = (ArrayList<Article>) session.getAttribute("panier");
		ArticleService as = new ArticleService();

		if(panier != null) {
			double montantTTC = as.getMontantTTC(panier);
			HashMap<Double, Integer> totalTVA = as.getTotalTauxTVA(panier);
			
			request.setAttribute("panier", panier);
			request.setAttribute("montantTTC", montantTTC);
			request.setAttribute("totalTVA", totalTVA);
		}

		
		RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/TicketCaisse.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
