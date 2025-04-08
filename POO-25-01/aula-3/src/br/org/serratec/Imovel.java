package br.org.serratec;

public class Imovel {
	private String tipo;
	private Double valor;
	private Propietario proprietario;
	
	public Imovel(String tipo, Double valor, Propietario proprietario) {
		super();
		this.tipo = tipo;
		this.valor = valor;
		this.proprietario = proprietario;
	}

	public String getTipo() {
		return tipo;
	}

	public Double getValor() {
		return valor;
	}

	public Propietario getProprietario() {
		return proprietario;
	}
	
	@Override
	public String toString() {
		return "tipo: " + tipo + ", valor: " + valor + proprietario;
	}
	
}
