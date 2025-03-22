package exemplos;

public class TesteAluno {

	public static void main(String[] args) {

		Aluno a1 = new Aluno();
		Aluno a2 = new Aluno();
		
		if (a1==a2) {
			System.out.println("Verdadeiro");
			System.out.println(a1);
		}else {
			System.out.println("n");
			System.out.println(a2);
		}
		
	}

}
