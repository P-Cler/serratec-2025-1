package org.serratec.exemplos;

public class TesteGenerico {

	public static void main(String[] args) {

		Generico<Integer> numero = new Generico<Integer>(1);
		Generico<String> texto = new Generico<String>("Aula generico");
	}

}
