package br.org.serratec.ex;

public class TesteAtleta {
	public static void main(String[] args) {
		Pais brasil = new Pais("Brasil");
		Pais eua = new Pais("EUA");
		
		Atleta a1 = new Atleta("Anderson", null, 98.0, brasil);
		Atleta a2 = new Atleta("Jon Jone", null, 59.0, eua);
		Atleta a3 = new Atleta("Vitor Belfort", null, 110.0, brasil);
		
		
		System.out.println("O atleta " + a1.getNome() + " " + a1.verificarSituacao());
		
		System.out.println("O atleta " + a2.getNome() + " " + a2.verificarSituacao());
		System.out.println("O atleta " + a3.getNome() + " " + a3.verificarSituacao());
		System.out.println("Total de Participantes: " + Atleta.getTotalParticipantes());
		
	}
}
