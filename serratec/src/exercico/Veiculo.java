/*
 1) Crie uma classe com o nome Veiculo com os atributos e métodos abaixo:
  atributos: 
  placa 
tipo
valor

	- Construa dois objetos em uma outra classe com o nome TesteVeiculo com os seguintes dados: 
		LZX9090, “Flex”,20000.
		KYZ1080, “Gás”,40600.

	Métodos 

	- Crie um método para calcular o ipva para Flex 4% e para Gás 1.5%
 */

package exercico;

public class Veiculo {
	String placa;
	String tipo;
	double valor;
	
	public static double ipva(double valor, String tipo) {
		if(tipo=="Flex") {
			return valor*0.04;
		}else{
			return valor*0.015;
		}
	}
	
}
