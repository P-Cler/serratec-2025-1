package org.serratec.testes;

import org.serratec.Empresa;
import org.serratec.Pessoa;
import org.serratec.TotalImposto;

public class TesteImposto {
	public static void main(String[] args) {
		Pessoa pessoa = new Pessoa("Cler", 25000.0);
		Empresa empresa = new Empresa("XPTO", 100000.0);
		
		System.out.println("Total Pagar pessoa: " + pessoa.calcularIR());
		System.out.println("Total Pagar empresa: " + empresa.calcularIR());
		TotalImposto ti = new TotalImposto();
		ti.calcularTotalGeral(empresa);
		ti.calcularTotalGeral(pessoa);
		
		
	}

}
