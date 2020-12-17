package fr.supermarche.services;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.HashMap;

import fr.supermarche.classes.Article;

public class ArticleService {
	
	private ArrayList<Article> articles;
	
	public ArticleService() {
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
	
	public double getMontantTTC(ArrayList<Article> articles) {
		double totalTTC = 0;
		for (Article a: articles) {
			totalTTC += a.getMontantTTC();
		}
		return totalTTC;
	}
	
	public HashMap<Double, Integer> getTotalTauxTVA(ArrayList<Article> articles) {
		HashMap<Double, Integer> map = new HashMap<Double, Integer>();
		
		for (Article a : articles) {
			int count = map.containsKey(((double) a.getCalculatedTVA())/100) ? map.get(((double) a.getCalculatedTVA())/100) : 0;
			map.put(((double) a.getCalculatedTVA()) / 100, count + 1);
		}
		
		return map;
	}
	
}
