package br.org.serratec;

public class TesteImovel {
	public static void main(String[] args) {
		Propietario p1 = new Propietario("A");
		Propietario p2 = new Propietario("B");
		
		Imovel i1 = new Imovel("casa", 2.0, p1);
		
		
		System.out.println(i1);
	}
}
