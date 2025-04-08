package br.org.serratec;

public class Medico {
	protected String crm;
	protected String nome;
	protected Double salario;
	
	public Medico(String crm, String nome, Double salario) {
		super();
		this.crm = crm;
		this.nome = nome;
		this.salario = salario;
	}
	
	
	
	public String getCrm() {
		return crm;
	}



	public String getNome() {
		return nome;
	}



	public Double getSalario() {
		return salario;
	}

	public Double calcularSalario() {
		return salario += salario*1.05;
	}
	
	public Double calcularSalario(Double valor) {
		return salario += salario*valor/100;
	}


	@Override
	public String toString() {
		return "crm: " + crm + ", nome: " + nome + ", salario: " + salario;
	}
}
