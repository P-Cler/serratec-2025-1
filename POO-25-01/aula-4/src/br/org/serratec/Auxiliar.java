package br.org.serratec;

public abstract class Auxiliar extends Funcionario {

	protected String categoria;

	public Auxiliar(String cpf, String nome, Double salario, String categoria) {
		super(cpf, nome, salario);
		this.categoria = categoria;
	}

	@Override
	public String toString() {
		return "Auxiliar [categoria=" + categoria + ", cpf=" + cpf + ", nome=" + nome + ", salario=" + salario + "]";
	}

	public String getCategoria() {
		return categoria;
	}

	@Override
	public void reajusteSalarial(Double valor) {

	}

}
