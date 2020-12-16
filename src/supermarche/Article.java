package supermarche;
import java.util.HashMap;
import java.util.Map;
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
	private final static Map<Integer, Integer> TVA = new HashMap<>();
	
	public Article(long codeBarre, String reference, String libelle, int prixHT, int tauxTVA) {
		this.codeBarre = codeBarre;
		this.reference = reference;
		this.libelle = libelle;
		this.prixHT = prixHT;
		this.tauxTVA = tauxTVA;
		
		TVA.put(0, 550);
		TVA.put(1, 2000);
	}

	public long getCodeBarre() {
		return codeBarre;
	}

	public String getReference() {
		return reference;
	}

	public String getLibelle() {
		return libelle;
	}

	public int getPrixHT() {
		return prixHT;
	}

	public int getTauxTVA() {
		return tauxTVA;
	}
	
}
