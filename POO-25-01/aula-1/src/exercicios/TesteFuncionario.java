package exercicios;

public class TesteFuncionario {

	public static void main(String[] args) {

		Funcionario f1 = new Funcionario("A", 3000);


		System.out.println("Nome: " + f1.getNome() + "\n Salário: " + f1.getSalario() + "\n INSS: " + f1.calcularInss() + "\n Vale Transporte: " + f1.calcularValeTransporte() + "\n Salário Liquido: " + f1.calcularSalarioLiquido());
	}

}
