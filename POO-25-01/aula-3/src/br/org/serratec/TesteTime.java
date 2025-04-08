package br.org.serratec;

public class TesteTime {
public static void main(String[] args) {
	
	Time time = new Time("Flamengo", "Filipe Luis", new Atleta[11]);
	Atleta a1 = new Atleta("Rossi", 31);
	Atleta a2 = new Atleta("Leo Ortiz", 29);
	Atleta a3 = new Atleta("Leo Trepa Trepa", 29);
	Atleta a4 = new Atleta("Alexsandro", 33);
	Atleta a5 = new Atleta("Motels Goncalves", 29);
	Atleta a6 = new Atleta("Caramujo", 29);
	Atleta a7 = new Atleta("De la sus", 29);
	Atleta a8 = new Atleta("Robozinho", 30);
	Atleta a9 = new Atleta("Gozado Plata", 29);
	Atleta a10 = new Atleta("Arrascaneta", 31);
	Atleta a11 = new Atleta("Queixada", 28);
	
	
	time.AdicionarAtleta(a1);
	time.AdicionarAtleta(a2);
	time.AdicionarAtleta(a3);
	time.AdicionarAtleta(a4);
	time.AdicionarAtleta(a5);
	time.AdicionarAtleta(a6);
	time.AdicionarAtleta(a7);
	time.AdicionarAtleta(a8);
	time.AdicionarAtleta(a9);
	time.AdicionarAtleta(a10);
	time.AdicionarAtleta(a11)
	;
	
	System.out.println(time);
	}


}
