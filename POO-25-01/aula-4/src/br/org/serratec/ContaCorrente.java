package br.org.serratec;

public class ContaCorrente implements Conta{
	private String titular;
	private Double saldo;
	
	public ContaCorrente(String titular, Double saldo) {
		this.titular = titular;
		this.saldo = saldo;
	}
	

	@Override
	public String toString() {
		return "ContaCorrente [titular=" + titular + ", saldo=" + saldo + "]";
	}

	public String getTitular() {
		return titular;
	}

	public Double getSaldo() {
		return saldo;
	}



	@Override
	public Boolean saque(Double valor) {
		
		if (saldo >= valor) {
			saldo += valor;
			return true ;
		}
		return false;
	}

	@Override
	public void deposito(Double valor) {

		if (saldo > 0) {
			saldo += valor;
			System.out.println("Saldo atual: " + saldo);
		}else {
		System.out.println("Saldo inválido!"); ;
		}
	}
	
}