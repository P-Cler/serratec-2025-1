package br.org.serratec;

import java.util.Arrays;
import java.util.Iterator;

public class Time {
	private String nome;
	private String tecnico;
	private Atleta[] atletas;
	public Time(String nome, String tecnico, Atleta[] atletas) {
		super();
		this.nome = nome;
		this.tecnico = tecnico;
		this.atletas = atletas;
	}
	public String getNome() {
		return nome;
	}
	public String getTecnico() {
		return tecnico;
	}
	public Atleta[] getAtletas() {
		return atletas;
	}

	@Override
	public String toString() {
		return  "Time: [nome: " + nome + ", tecnico: " + tecnico + ", atletas: " + Arrays.toString(atletas) + "]";
	}

	public void AdicionarAtleta(Atleta atleta) {
		for (int i = 0; i < atletas.length; i++) {
			if(atletas[i]==null) {
				atletas[i] = atleta;
				break;
			}
		}
		
		}
	
	public void imprimirElenco() {
		for (Atleta atleta : atletas) {
			System.out.println(atleta);
		}
	
	}
	
}

