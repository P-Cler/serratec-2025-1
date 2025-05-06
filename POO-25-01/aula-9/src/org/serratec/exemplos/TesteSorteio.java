package org.serratec.exemplos;

public class TesteSorteio {

	public static void main(String[] args) {
		Aluno a1 = new Aluno("A", 23);
		Aluno a2 = new Aluno("B", 18);
		Aluno a3 = new Aluno("C", 32);

		Sorteio<Aluno> sorteio = new Sorteio<Aluno>();
		Sorteio<Integer> numeros = new Sorteio<Integer>();
		
		for (int i = 0; i < 100; i++) {
			numeros.adicionar(i);
		}
		
		sorteio.adicionarVarios(a1, a2, a3);
		
		
		
		

		System.out.println("Numero sorteado: " + numeros.sortear());
		System.out.println("Aluno sorteado: " + sorteio.sortear());

	}
	
}
