package exercicios;

import java.util.Scanner;

public class TesteProduto {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        while (true) {
            System.out.println("\nSeja bem-vindo! Digite as informações do produto:");

            System.out.print("ID do produto: ");
            int id = sc.nextInt();
            sc.nextLine(); // Consumir quebra de linha pendente

            System.out.print("Nome do produto: ");
            String nome = sc.nextLine();

            System.out.print("Descrição do produto: ");
            String descricao = sc.nextLine();

            System.out.print("Preço do produto: ");
            double preco = sc.nextDouble();
            sc.nextLine(); // Consumir quebra de linha pendente

            // Criando o produto
            Produto p = new Produto(id, nome, descricao, preco);
            System.out.println("\nProduto criado com sucesso:");
            System.out.println(p);

            System.out.print("\nDeseja adicionar outro produto? (s/n): ");
            String resposta = sc.nextLine();

            if (resposta.equalsIgnoreCase("n")) {
                break;
            }
        }

        sc.close();
        System.out.println("Cadastro de produtos finalizado.");
    }
}