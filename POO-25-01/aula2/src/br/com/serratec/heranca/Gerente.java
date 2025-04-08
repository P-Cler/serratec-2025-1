package br.com.serratec.heranca;

public class Gerente extends Empregado{
	private Integer numEmpregadoGerenciados;

	
	

	public Gerente(String nome, String email, String telefone, Double salario, Integer numEmpregadoGerenciados) {
		super(nome, email, telefone, salario);
		this.numEmpregadoGerenciados = numEmpregadoGerenciados;
	}


	@Override
	public Double aumentarSalario(Double valor) {
		return salario =  super.aumentarSalario(valor) + 1000.0;
	}

	public Integer getNumEmpregadoGerenciados() {
		return numEmpregadoGerenciados;
	}
	
	

}
