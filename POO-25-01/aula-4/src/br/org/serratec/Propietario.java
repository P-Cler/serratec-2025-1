package br.org.serratec;

public class Propietario {

	private String nome;
	public Propietario(String nome) {
		super();
		this.nome = nome;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	
	
	@Override
	public String toString() {
		return "nome: " + nome;
	}
}
