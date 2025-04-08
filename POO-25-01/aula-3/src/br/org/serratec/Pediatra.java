package br.org.serratec;

public class Pediatra extends Medico {
	
	protected String especializacao;

	public Pediatra(String crm, String nome, Double salario, String especializacao) {
		super(crm, nome, salario);
		this.especializacao = especializacao;
	}

	public String getEspecializacao() {
		return especializacao;
	}

	@Override
	public String toString() {
		return super.toString() + "especializacao: " + especializacao;
	}
	
	@Override
	public Double calcularSalario() {
		return salario += salario*1.15;
	}
	
}
