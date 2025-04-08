package exercicios;

public class Funcionario {
	private String nome;
	private double salario;
	private static int contador = 0;
	
	public Funcionario(String nome, double salario) {
		this.nome = nome;
		this.salario = salario;
		contador++;
	}


	public String getNome() {
		return nome;
	}


	public double getSalario() {
		return salario;
	}

	
	public static int getContador() {
		return contador;
	}
	
	public double calcularInss() {
		return salario*0.11;
	}
	
	public double calcularValeTransporte() {
		return salario*0.06;
	}
	
	public double calcularSalarioLiquido() {
		return salario-(salario*0.06+salario*0.11);
	}
	
}
