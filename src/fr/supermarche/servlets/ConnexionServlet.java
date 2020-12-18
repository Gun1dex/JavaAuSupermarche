package fr.supermarche.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Connexion")
public class ConnexionServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		if(session != null) {
			session.invalidate();
		}
		
		RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/Connexion.jsp");
		rd.forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String login = request.getParameter("login");
		String password = request.getParameter("password");
		
		if("admin".equals(login) && "admin".equals(password)) {
            HttpSession session = request.getSession(true);
            session.setAttribute("isConnected", true);
            session.setAttribute("role", "ADMIN");
            response.sendRedirect(request.getContextPath() + "/ListeArticle");
        }
        else if("user".equals(login) && "user".equals(password)) {
            HttpSession session = request.getSession(true);
            session.setAttribute("isConnected", true);
            session.setAttribute("role", "USER");
            response.sendRedirect(request.getContextPath() + "/ListeArticle");
        }
        else {
            this.doGet(request, response);
        }
	}

}
