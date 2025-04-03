package exercicios;

public class TesteFuncionario {

	public static void main(String[] args) {

		Funcionario f1 = new Funcionario("A", 5000);
		Funcionario f2 = new Funcionario("B", 00);
		Funcionario f3 = new Funcionario("B", 00);
		Funcionario f4 = new Funcionario("B", 00);

	
		System.out.println(f1.getNome());
		System.out.println("Total geral funcionários: " + Funcionario.getContador());
	}

}
