package br.org.serratec.ex2;

public class FreeLancer {
	private Integer diasTrabalhados;
	private Double valorDia;
	public FreeLancer(Integer diasTrabalhados, Double valorDia) {
		super();
		this.diasTrabalhados = diasTrabalhados;
		this.valorDia = valorDia;
	}
	public Integer getDiasTrabalhados() {
		return diasTrabalhados;
	}
	public void setDiasTrabalhados(Integer diasTrabalhados) {
		this.diasTrabalhados = diasTrabalhados;
	}
	public Double getValorDia() {
		return valorDia;
	}
	public void setValorDia(Double valorDia) {
		this.valorDia = valorDia;
	}
	
	
}
