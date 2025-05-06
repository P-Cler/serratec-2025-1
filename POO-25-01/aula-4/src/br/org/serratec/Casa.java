package br.org.serratec;

public class Casa extends Imovel {

	private Boolean garagem;

	public Casa(String local, Double valor, Propietario propietario, boolean garagem) {
		super(local, valor, propietario);
		this.garagem = garagem;
	}

	public Boolean getGaragem() {
		return garagem;
	}

	@Override
	public String toString() {
		return super.toString() + " Possui garagem: " + (garagem ? "Sim" : "Não");
	}

}
