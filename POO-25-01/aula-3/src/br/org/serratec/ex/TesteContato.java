package br.org.serratec.ex;

public class TesteContato {
	public static void main(String[] args) {
		Estado es1 = new Estado("Rio de Janeiro", "RJ");
		Cidade ci1 = new Cidade("Petrópolis", es1);
		Endereco e1 = new Endereco("Caminho do Fragoso", "Estrada da Saudade", "25610430", ci1);
		Telefone t1 = new Telefone("(24) 99828-1120");

		Contato c1 = new Contato("Cler", new Telefone[2], e1);
		
		c1.setTelefones(t1);
		
		System.out.println(c1);
	}
}

