package br.org.serratec.ex2;

import java.util.Scanner;

public class TesteFixo {
	
	
	public static void main(String[] args) {

		Fixo f1 = new Fixo("Joana", "000", 2000.0, 50.0, 2000.0);
		Fixo f2 = new Fixo("Maria", "001", 2000.0, 100.0, 200.0);

		
		Scanner sc = new Scanner(System.in);

        System.out.println("----------------Sistema de Vendas-------------");
        System.out.println("Vendedores: \n 1- " + f1.getNome() + "\n 2- " + f2.getNome());


		
        while (true) {

            System.out.print("Escolha o vendedor: ");
            int id = sc.nextInt();
            sc.nextLine(); 

            System.out.print("Digite o valor da venda: ");
            Double venda = sc.nextDouble();
            sc.nextLine();
            
            f1.calcularSalario(venda);
            
            System.out.print("\nDeseja adicionar outro produto? (s/n): ");
            String resposta = sc.nextLine();

            if (resposta.equalsIgnoreCase("n")) {
                break;
            }
            
        }

        sc.close();
        System.out.println("----------------Salário dos Vendedores:-------------");
        System.out.println(f1);
        System.out.println(f2);

	}
}
