package exercicios;

import exercicios.Pessoa;

public class TestePessoa {

	
	
	public static void main(String[] args) {
		Pessoa pessoa1 = new Pessoa();
		pessoa1.setNome("Cler");
		pessoa1.setPeso(55.0);
		pessoa1.setId(1);
		pessoa1.setAltura(1.70);;

		System.out.println(pessoa1.getNome() + " seu peso é: " + pessoa1.resultado());
		
	}

}
