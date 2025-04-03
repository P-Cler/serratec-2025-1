package exercicios;

import java.util.Scanner;

public class TesteProduto {
public static void main(String[] args) {
	Produto p1 = new Produto();
	Produto p2 = new Produto();
	
	Scanner scanner = new Scanner(System.in);
	
	p1.setId(0);
	p1.setDescricao(scanner.next());
	System.out.println("Descrição: " + p1.getDescricao());
}
}
