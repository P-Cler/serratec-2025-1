package br.org.serratec.ex;

import java.util.Arrays;

public class Contato {
	private String nome;
	private Telefone[] telefones;
	private Endereco endereco;
	public Contato(String nome, Telefone[] telefones, Endereco endereco) {
		super();
		this.nome = nome;
		this.telefones = telefones;
		this.endereco = endereco;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public Telefone[] getTelefones() {
		return telefones;
	}
	public Endereco getEndereco() {
		return endereco;
	}
	public void setEndereco(Endereco endereco) {
		this.endereco = endereco;
	}
	
	public void setTelefones(Telefone telefone) {
		for (int i = 0; i < telefones.length; i++) {
			if(telefones[i]==null) {
				telefones[i] = telefone;
				break;
			}
		}
		
		}
	
	public void mostrarTelefones() {
		for (Telefone telefone : telefones) {
			System.out.println(telefone);
		}
	
	}
	
	
	@Override
	public String toString() {
		return "Nome: " + nome + "\nEndereço: " + endereco + "\nTelefone:" + Arrays.toString(telefones);
	}
}
