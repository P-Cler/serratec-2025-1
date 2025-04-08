package br.com.serratec.testes;

import java.time.LocalDate;

import br.com.serratec.exemplos.Pedido;

public class TestePedido {
public static void main(String[] args) {
	Pedido p1 = new Pedido(123, LocalDate.of(2025, 02, 03), 2000.0, 2);
	System.out.println("Nº pedido: " + p1.getNumero() + " Total: " + p1.getTotal());
}
}
