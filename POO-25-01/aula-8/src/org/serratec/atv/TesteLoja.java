package org.serratec.atv;

public class TesteLoja {

	public static void main(String[] args) {
		
		Loja loja = new Loja("Pet Chopp");

		loja.adicionarAnimal(new Cachorro("Atena", 12, "Vira Latas"));
		loja.adicionarAnimal(new Gato("Alaska", 10, "Branca"));
		loja.adicionarAnimal(new Gato("Alife", 8, "Laranja"));
		
		
		loja.listarAnimais();
		
		try {
			loja.adotarAnimal(1);
			loja.adotarAnimal(1);
		} catch (AnimalException e) {
			System.out.println("Erro: " + e.getMessage());
		}
		
		try {
			loja.adotarAnimal(10);
		} catch (AnimalException e) {
			
			System.out.println("Erro: " + e.getMessage());
			
		}
		
	}

}
