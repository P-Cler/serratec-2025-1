package exemplos;

public class Conta {
	
	public int numero;
	public String titular;
	public double saldo;
	
	public void depositar(double valor) {
		if(valor >=0) {
			saldo +=valor;
		}else {
			System.out.println("Insuficiente");
		}
	}
	
	public boolean saque(double valor) {
		if(saldo>=valor) {
			saldo -= valor;
			return true;
		}else {
			return false;
		}
	}
	
}
