/**
 * 
 */

/**
 * @author bapti
 *
 */
public class Article {
	private long codeBarre;
	private String reference;
	private String libelle;
	private int prixHT;
	private int tauxTVA;
	
	public Article(long codeBarre, String reference, String libelle, int prixHT, int tauxTVA) {
		this.codeBarre = codeBarre;
		this.reference = reference;
		this.libelle = libelle;
		this.prixHT = prixHT;
		this.tauxTVA = tauxTVA;
	}
}
