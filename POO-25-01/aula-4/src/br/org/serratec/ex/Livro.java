package br.org.serratec.ex;

public class Livro {
	private String autor;
	private String titulo;
	private Double valorLivro;
	public Livro(String autor, String titulo, Double valor) {
		super();
		this.autor = autor;
		this.titulo = titulo;
		this.valorLivro = valor;
	}
	public String getAutor() {
		return autor;
	}
	public String getTitulo() {
		return titulo;
	}
	public Double getValor() {
		return valorLivro;
	}
	
	public void reajuste(Double valor) {
		valorLivro = valorLivro * (1+valor/100);
	}
	@Override
	public String toString() {
		return "Autor:" + autor + ", Titulo:" + titulo;
	}
	
	
}
