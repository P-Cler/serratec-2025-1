package org.serratec.atv;

public class Cachorro extends AnimalDeEstimacao {

	private String raca;

	public Cachorro(String nome, Integer idade, String raca) {
		super(nome, idade);
		this.raca = raca;
	}

	public String getRaca() {
		return raca;
	}

	public void setRaca(String raca) {
		this.raca = raca;
	}

	@Override
	public String toString() {
		return "Cachorro [raca=" + raca + "]";
	}
	
	@Override
	public void imprimir() {
		super.imprimir();
		System.out.println("Raça: " + raca);
	}
	
}
