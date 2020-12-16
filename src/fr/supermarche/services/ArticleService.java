package fr.supermarche.services;

import java.io.BufferedReader;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;

import fr.supermarche.classes.Article;

public class ArticleService {
	
	private ArrayList<Article> articles;
	
	public ArticleService() {
		this.fillArticle();
	}
	
	public void fillArticle() {
		ArrayList<Article> articles = new ArrayList<Article>();
		Path pathToFile = Paths.get("C:\\Users\\bapti\\OneDrive\\Documents\\Developpements\\eclipse-workspace\\JavaAuSupermarche\\assets\\listeArticles.csv");
		
		try (BufferedReader br = Files.newBufferedReader(pathToFile)) {
			System.out.println("Trouvé 2");
			String line = br.readLine();
			
			while (line != null) {
				System.out.println("line" + line);
				String[] attributes = line.split(",");
				
				Article article = createArticle(attributes);
				
				articles.add(article);
				
				line = br.readLine();
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
