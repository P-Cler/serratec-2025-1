package org.serratec.atv;

public abstract class AnimalDeEstimacao implements Animal {
	protected String nome;
	protected Integer idade;
	protected Boolean adotado = false;
	
	public AnimalDeEstimacao(String nome, Integer idade) {
		super();
		this.nome = nome;
		this.idade = idade;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public Integer getIdade() {
		return idade;
	}
	public void setIdade(Integer idade) {
		this.idade = idade;
	}
	
	public boolean isAdotado() {
	        return adotado;
	}

	 public void setAdotado(boolean adotado) {
	        this.adotado = adotado;
	 }
	
	@Override
	public void imprimir() {

        System.out.println("Nome: " + nome + ", Idade: " + idade + ", Adotado: " + adotado);
		
	}
	
	
}
