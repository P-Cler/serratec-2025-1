package exercicios;

import java.util.Scanner;

class Produto {
    private int id;
    private String nome;
    private String descricao;
    private double preco;

    // Construtor
    public Produto(int id, String nome, String descricao, double preco) {
        this.id = id;
        this.nome = nome;
        this.descricao = descricao;
        this.preco = preco;
    }

    // Método para exibir os dados do produto
    @Override
    public String toString() {
        return "Produto {" +
                "ID=" + id +
                ", Nome='" + nome + '\'' +
                ", Descrição='" + descricao + '\'' +
                ", Preço= R$ " + preco +
                '}';
    }
}