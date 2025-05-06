package org.serratec.exemplos;

public class Generico<T> {
	
	private T valor;

	public Generico(T valor) {
		super();
		this.valor = valor;
	}

	@Override
	public String toString() {
		return "Generico [valor=" + valor + "]";
	}

	public T getValor() {
		return valor;
	}

	public void setValor(T valor) {
		this.valor = valor;
	}
	
	
	
}
