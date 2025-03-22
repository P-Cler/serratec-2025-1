package exercico;

public class TesteVeiculo {

	public static void main(String[] args) {
		// LZX9090, “Flex”,20000.
		//KYZ1080, “Gás”,40600.

		Veiculo v1 = new Veiculo();
		Veiculo v2 = new Veiculo();
		v1.placa = "LZX9090";
		v2.placa = "KYZ1080";
		v1.tipo = "Flex";
		v2.tipo = "Gás";
		v1.valor = 20000;
		v2.valor = 40600;
		
		
		System.out.println(Veiculo.ipva(v1.valor, v1.tipo));
		System.out.println(Veiculo.ipva(v2.valor, v2.tipo));

	}

}
