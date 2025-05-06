package org.serratec.atv;

public class Gato extends AnimalDeEstimacao {

	private String cor;

	public Gato(String nome, Integer idade, String cor) {
		super(nome, idade);
		this.cor = cor;
	}

	public String getCor() {
		return cor;
	}

	public void setCor(String cor) {
		this.cor = cor;
	}

	@Override
	public String toString() {
		return "Gato [cor=" + cor + "]";
	}
	
	@Override
	public void imprimir() {
		
		super.imprimir();
		System.out.println("Cor: " + cor);
		
	}
	
}
