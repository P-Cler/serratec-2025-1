package br.com.serratec.heranca;

public class Diretor extends Empregado{
	
	

	public Diretor(String nome, String email, String telefone, Double salario, String area) {
		super(nome, email, telefone, salario);
		this.area = area;
	}

	private String area;

}
