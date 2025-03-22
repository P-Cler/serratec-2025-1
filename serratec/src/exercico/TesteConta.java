package exercico;

import exemplos.Conta;

public class TesteConta {

	public static void main(String[] args) {

		Conta c1  = new Conta();
		c1.numero = 000;
		c1.titular = "A";
		c1.saldo = 2000;
		
		c1.depositar(2000);

		System.out.println(c1.saldo);

		if (c1.saque(5000)) {
			System.out.println("Saque feito");
			System.out.println(c1.saldo);

		}else {
			System.out.println("Saldo insuficiente");
			System.out.println(c1.saldo);
		}
	}

}
