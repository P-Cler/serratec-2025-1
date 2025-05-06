package br.org.serratec;

public abstract class Imovel {
	protected String local;
	protected Double valor;
	protected Propietario propietario;

	public Imovel(String local, Double valor, Propietario propietario) {
		super();
		this.local = local;
		this.valor = valor;
		this.propietario = propietario;
	}

	public String getLocal() {
		return local;
	}

	public Double getValor() {
		return valor;
	}

	public Propietario getPropietario() {
		return propietario;
	}

	@Override
	public String toString() {
		return "Imove = [ local: " + local + ", valor: " + valor + ", propietario: " + propietario;
	}

	public Double calcularImpostoVenda() {

		return valor * 3.5 / 100;

	}
}
