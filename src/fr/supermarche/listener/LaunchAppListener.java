package fr.supermarche.listener;

import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import fr.supermarche.classes.Article;
import fr.supermarche.services.ArticleService;

/**
 * Application Lifecycle Listener implementation class LaunchAppListener
 *
 */
@WebListener
public class LaunchAppListener implements ServletContextListener {

	public void contextDestroyed(ServletContextEvent sce) {
		// TODO Auto-generated method stub
	}

	public void contextInitialized(ServletContextEvent sce) {
		ArticleService as = new ArticleService();
		as.fillArticle();
		ArrayList<Article> articles = as.getArticles();
		ServletContext svc = sce.getServletContext();

		svc.setAttribute("listeArticles", articles);
	}

}
