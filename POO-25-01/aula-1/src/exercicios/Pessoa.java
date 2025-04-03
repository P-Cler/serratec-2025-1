package exercicios;

public class Pessoa {
	private int id;
	private String nome;
	private double peso, altura;

	public int getId() {
		return id;
	}



	public void setId(int id) {
		this.id = id;
	}



	public String getNome() {
		return nome;
	}



	public void setNome(String nome) {
		this.nome = nome;
	}



	public double getPeso() {
		return peso;
	}



	public void setPeso(double peso) {
		if(peso>=0) {
		this.peso = peso;
		}else {
			System.out.println("Inválido");
		}
	}



	public double getAltura() {
		return altura;
	}



	public void setAltura(double altura) {
		if(this.altura>=0) {
			this.altura = altura;
			}else {
				System.out.println("Inválido");
			}
	}



	private double imc() {
		return peso/(altura * altura);
	}
	
	

	public String resultado() {
		//Se > 18.5 retorna abaixo do peso, se entre 18.5 e 24.9 retorna peso ideial, se < acima do peso
		
		if (imc()<18.5) {
			return "Abaixo do peso";
		} else if(imc()>24.9){
			return "Acima do peso";
		}else {
			return "Peso ideal";
		}
	}
}
