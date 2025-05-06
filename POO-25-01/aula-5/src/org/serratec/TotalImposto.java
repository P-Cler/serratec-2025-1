package org.serratec;

import org.serratec.Tributos;

public class TotalImposto {
	private Double totalGeral=0.0;
	

	public Double getTotalGeral() {
		return totalGeral;
	}



	public void calcularTotalGeral(Tributos tributos) {
		totalGeral += tributos.calcularICMS();
		totalGeral += tributos.calcularIR();
		System.out.println("ICMS:" + tributos.calcularICMS());
		System.out.println("Imposto de renda: " +tributos.calcularIR());
		System.out.println("Total Geral pago: " + totalGeral);
	}
}
