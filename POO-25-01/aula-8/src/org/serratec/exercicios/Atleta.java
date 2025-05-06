package org.serratec.exercicios;

public class Atleta {
	
	private String nome;
	private Double altura;
	public Atleta(String nome, Double altura) {
		super();
		this.nome = nome;
		this.altura = altura;
	}
	public String getNome() {
		return nome;
	}
	public Double getAltura() {
		return altura;
	}
	@Override
	public String toString() {
		return "Atleta [nome=" + nome + ", altura=" + altura + "]";
	}
	
	

}
