package org.serratec;

public class Pessoa implements Tributos {

	private String nome;
	private Double rendimentos;
	
	public Pessoa(String nome, Double rendimentos) {
		super();
		this.nome = nome;
		this.rendimentos = rendimentos;
	}

	
	
	@Override
	public String toString() {
		return "Pessoa [nome=" + nome + ", rendimentos=" + rendimentos + "]";
	}

	


	public String getNome() {
		return nome;
	}



	public Double getRendimentos() {
		return rendimentos;
	}



	@Override
	public double calcularIR() {
		return rendimentos * IRPESSOAFISICA;
	}

	@Override
	public Double calcularICMS() {
		return 0.0;
	}
	
}
