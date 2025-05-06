package org.serratec.exemplos;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.TreeMap;

public class TesteMap {
	public static void main(String[] args) {
		Map<Integer, String> mapa = new LinkedHashMap<>();
		
		mapa.put(1, "Cler");
		mapa.put(2, "Pedro");
		mapa.put(3, "Pedro Cler");
		
		System.out.println(mapa);
		
		TreeMap<Aluno, Integer> mapa2 = new TreeMap<>();
		
		mapa2.put(new Aluno("Cler", 18), 1);
		mapa2.put(new Aluno("Pedro", 36), 2);

		
	}
}
