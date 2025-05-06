package br.org.serratec.ex;

public class Atleta implements Olimpiadas {
	private String nome;
	private String modalidade;
	private Double peso;
	private static Integer totalParticipantes=0;
	private Pais pais;
	public Atleta(String nome, String modalidade, Double peso, Pais pais) {
		super();
		this.nome = nome;
		this.modalidade = modalidade;
		this.peso = peso;
		this.pais = pais;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getModalidade() {
		return modalidade;
	}
	public void setModalidade(String modalidade) {
		this.modalidade = modalidade;
	}
	public Double getPeso() {
		return peso;
	}
	public void setPeso(Double peso) {
		this.peso = peso;
	}
	public static Integer getTotalParticipantes() {
		return totalParticipantes;
	}
	public void setTotalParticipantes(Integer totalParticipantes) {
		Atleta.totalParticipantes = totalParticipantes;
	}
	@Override
	public String verificarSituacao() {
		if(peso>90) {
			modalidade="Peso pesado";
			totalParticipantes++;
			return "participara";
		}else if(peso<60) {
			return "Não participara";
		}else {
			modalidade="Peso médio";
			totalParticipantes++;
			return "participara";
		}
	}
	
	
}
