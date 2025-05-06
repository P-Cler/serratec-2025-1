package org.serratec.atv;

import java.util.ArrayList;
import java.util.List;

public class Loja {

	private String nomeLoja;
	private List<AnimalDeEstimacao> animais;
	
	public Loja(String nomeLoja) {
		super();
		this.nomeLoja = nomeLoja;
		this.animais = new ArrayList<>();
	}
	
	public String getNomeLoja() {
		return nomeLoja;
	}

	public void setNomeLoja(String nomeLoja) {
		this.nomeLoja = nomeLoja;
	}
	

	@Override
	public String toString() {
		return "Loja [nomeLoja=" + nomeLoja + ", animais=" + animais + "]";
	}

	public void adicionarAnimal(AnimalDeEstimacao animal) {
		animais.add(animal);
	}
	
	public void listarAnimais() {

		System.out.println("Aniamis na loja: " + nomeLoja + ":");
		for (int i = 0; i < animais.size(); i++) {
			System.out.println("[" + i + "] ");
			animais.get(i).imprimir();
		}
	
	}
	
	public void adotarAnimal(Integer i) throws AnimalException {
		if (i<0 || i >= animais.size()) {
			throw new AnimalException("Indice não existe");
			
		}
			
			AnimalDeEstimacao animal = animais.get(i);
			if (animal.isAdotado()) {
				throw new AnimalException("Animal adotado");
			}
			
			animal.setAdotado(true);
			System.out.println("O pet " + animal.getNome() + " foi adotado");
			
		}
	}
	

