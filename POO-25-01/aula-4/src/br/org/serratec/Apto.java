package br.org.serratec;

public class Apto extends Imovel {

	private String andar;

	public Apto(String local, Double valor, Propietario propietario, String andar) {
		super(local, valor, propietario);
		this.andar = andar;
	}

	public String getAndar() {
		return andar;
	}

	@Override
	public String toString() {
		return super.toString()  + "[andar=" + andar + "]";
	}
	
	
	
}
