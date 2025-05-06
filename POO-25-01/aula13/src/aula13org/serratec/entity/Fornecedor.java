package aula13org.serratec.entity;

import java.io.Serializable;

public class Fornecedor implements Serializable {
	
	private static final long serialVersionUID = 1L;
	private String nome;
	private String cnpj;
	public Fornecedor(String nome, String cnpj) {
		super();
		this.nome = nome;
		this.cnpj = cnpj;
	}
	public String getNome() {
		return nome;
	}
	public String getCnpj() {
		return cnpj;
	}
	
	/**
	 * 
	 * @param valor
	 * @return
	 * @throws IllegalArgumentException
	 */
	
	public Double calcularPg(Double valor) throws IllegalArgumentException{
		return 0.0;
	}
	
	@Override
	public String toString() {
		return "Fornecedor [nome=" + nome + ", cnpj=" + cnpj + "]";
	}
	
	
	
}
