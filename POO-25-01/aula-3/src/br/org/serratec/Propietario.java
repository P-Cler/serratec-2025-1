package br.org.serratec;

public class Propietario {
	private String nome;

	public Propietario(String nome) {
		super();
		this.nome = nome;
	}
	
	@Override
	public String toString() {
		return ", propietario: " + nome;
	}
}
