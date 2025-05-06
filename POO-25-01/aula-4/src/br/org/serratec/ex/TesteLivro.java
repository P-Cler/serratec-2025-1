package br.org.serratec.ex;



public class TesteLivro {
	public static void main(String[] args) {
		Livro l1 = new Livro("Marco Antonio", "Cisco CCNA", 85.0);
		Livro l2 = new Livro("Kathy Sierra", "Use a cabeça Java", 98.0);
		
		Operacao o1 = new Operacao("venda", l1);
		Operacao o2 = new Operacao("empréstimo", l2);
		
		l1.reajuste(6.0);

		o1.venderLivro();
		o2.emprestarLivro();
		System.out.println(o1);
		System.out.println(o2);
	}
}
