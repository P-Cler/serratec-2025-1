programa
{
		real normal, extra, hora_normal, hora_extra, anual
	funcao inicio()
	{



		escreva("Digite o  total de horas normais trabalhadas: \n")
		leia(normal)
		escreva("Digite o total de horas extras trabalhadas: \n")
		leia(extra)

		 hora_normal = normal*10.00
		 hora_extra = extra*15.00
		 anual = hora_normal+hora_extra

		escreva("O seu salário anual é: " + anual)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 66; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */