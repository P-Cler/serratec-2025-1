package br.org.serratec.ex;

public class Telefone {
	private String numero;

	public Telefone(String numero) {
		super();
		this.numero = numero;
	}

	public String getNumero() {
		return numero;
	}
	
	@Override
	public String toString() {
		return numero; 
	}
}
