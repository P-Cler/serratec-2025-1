package br.org.serratec;

public class TesteImovel {
	public static void main(String[] args) {
		Propietario p1 = new Propietario("Cler");
		Casa casa = new Casa("centro", 200000.0, p1, true);

		System.out.println("Valor do imposto: " + casa.calcularImpostoVenda());
		System.out.println(casa);
	}
}
