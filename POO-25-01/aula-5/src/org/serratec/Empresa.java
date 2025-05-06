package org.serratec;

public class Empresa implements Tributos {

	private String razaoSocial;
	private Double rendimentos;
	
	
	public Empresa(String razaoSocial, Double rendimentos) {
		super();
		this.razaoSocial = razaoSocial;
		this.rendimentos = rendimentos;
	}
	

	public String getRazaoSocial() {
		return razaoSocial;
	}



	public Double getRendimentos() {
		return rendimentos;
	}

	


	@Override
	public String toString() {
		return "Empresa [razaoSocial=" + razaoSocial + ", rendimentos=" + rendimentos + "]";
	}


	@Override
	public double calcularIR() {
		return rendimentos * IRPESSOAJURIDICA;
	}

	@Override
	public Double calcularICMS() {
		return rendimentos * ICMS;
	}

}
