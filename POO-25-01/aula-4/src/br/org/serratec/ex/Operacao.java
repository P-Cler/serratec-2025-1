package br.org.serratec.ex;

public class Operacao implements Livraria {
	private String tipo;
	private Double valorOperacao;
	private Livro livro;
	public Operacao(String tipo, Livro livro) {
		super();
		this.tipo = tipo;
		this.livro = livro;
	}
	public Livro getLivro() {
		return livro;
	}
	public void setLivro(Livro livro) {
		this.livro = livro;
	}
	public String getTipo() {
		return tipo;
	}
	public Double getValorOperacao() {
		return valorOperacao;
	}
	@Override
	public String toString() {
		return "Tipo=" + tipo + ", ValorOperação=" + valorOperacao + ", livro=" + livro;
	}
	@Override
	public void emprestarLivro() {
		valorOperacao = livro.getValor()*0.02+taxaEmprestimo;

	}
	@Override
	public void venderLivro() {
		valorOperacao = livro.getValor()*1.09;
	}
	
	
}
