package org.serratec.aula;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

public class ExemploLista {
	
	public static void main(String[] args) {

		List<String> times = new ArrayList<String>();
		times.add("Flamengo");
		times.add("Serie C");
		times.add("Serie B");
		times.add("Bairro");
		times.set(3, "Volta Redonda");
		System.out.println("A lista tem Botafogo?" + (times.contains("Botafogo")?"Sim":"Não"));
		System.out.println("A lista está vazia?" + (times.isEmpty()?"Sim":"Não"));
		
		Aluno a1 = new Aluno("A", 0, "B");
		Aluno a2 = new Aluno("C", 1, "D");

		List<Aluno>alunos = Arrays.asList(a1, a2);
	}
		
}
