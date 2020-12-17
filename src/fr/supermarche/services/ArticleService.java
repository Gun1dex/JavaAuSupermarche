package fr.supermarche.services;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;

import fr.supermarche.classes.Article;

public class ArticleService {
	
	private ArrayList<Article> articles;
	
	public ArticleService() {
		this.fillArticle();
	}
	
	public void fillArticle() {
		ArrayList<Article> articles = new ArrayList<Article>();
		InputStream is = getClass().getResourceAsStream("../../../../../assets/listeArticles.csv");
		BufferedReader br = new BufferedReader(new InputStreamReader(is));
		String line;
		
		try {
			while ((line = br.readLine()) != null) {
				String[] attributes = line.split(",");
				
				Article article = createArticle(attributes);
				
				articles.add(article);
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		this.articles = articles;
	}

	private Article createArticle(String[] article) {
		long codeBarre = Integer.parseInt(article[0]);
		String reference = article[1];
		String libelle = article[2];
		int prixHT = Integer.parseInt(article[3]);
		int tauxTVA = Integer.parseInt(article[4]);

		return new Article(codeBarre, reference, libelle, prixHT, tauxTVA);
	}

	public ArrayList<Article> getArticles() {
		return articles;
	}
	
	
}
