package br.com.serratec.heranca;

public class TesteEmpregado {

	public static void main(String[] args) {
		Gerente gerente = new Gerente("A", "a@gmail.com", "2222", 1000.0, 10);
		Diretor diretor = new Diretor("B", "b@gmail.com", "1111", 1000.0, "educacao");
		
		diretor.aumentarSalario(10.0);
		gerente.aumentarSalario(10.0);
		System.out.println(gerente.getSalario());	
		
		
		System.out.println(gerente.toString());
	}
	
	
}
