package br.org.serratec;

public interface Conta {
	
	final double taxas = 10;

	public Boolean saque(Double valor);
	public void deposito(Double valor);
	
}
