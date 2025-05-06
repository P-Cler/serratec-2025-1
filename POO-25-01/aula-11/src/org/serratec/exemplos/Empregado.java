package org.serratec.exemplos;

public class Empregado {
	private String nome;
	private String profissao;
	private Double salario;

	public Empregado(String nome, String profissao, Double salario) {
		this.nome = nome;
		this.profissao = profissao;
		this.salario = salario;
	}

	@Override
	public String toString() {
		return "Empregado [nome=" + nome + ", profissao=" + profissao + ", salario=" + salario + "]";
	}

	public String getNome() {
		return nome;
	}

	public String getProfissao() {
		return profissao;
	}

	public Double getSalario() {
		return salario;
	}

	
}