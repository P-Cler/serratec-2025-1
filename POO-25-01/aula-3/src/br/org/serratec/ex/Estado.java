package br.org.serratec.ex;

public class Estado {
	private String nomeEstado;
	private String sigla;
	public Estado(String nomeEstado, String sigla) {
		super();
		this.nomeEstado = nomeEstado;
		this.sigla = sigla;
	}
	public String getNomeEstado() {
		return nomeEstado;
	}
	public String getSigla() {
		return sigla;
	}
	
	@Override
	public String toString() {
		return sigla; 
	}
}
