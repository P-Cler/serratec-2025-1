package exemplos;
import java.util.Scanner;
public class Vetor {

	public static void main(String[] args) {
		Scanner divisao = new Scanner(System.in);
		String[] vetor = new String[3];
		vetor[0]="Vasco";
		vetor[1]="Botafogo";
		vetor[2]="Fluminense";
		boolean serieB = false;
		System.out.println("Seu time jogou série B?");
		String resposta = divisao.nextLine();
		if(resposta=="Não") {
			serieB=false;
		}else {
			serieB=true;
		}
		for (int i = 0; i < vetor.length; i++) {
			if(serieB) {
				System.out.println("Flamengo");
			}else {
				System.out.println(vetor[i]);
			}
		}
		
	}

}
