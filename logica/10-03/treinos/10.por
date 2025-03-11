programa
{
	inteiro segundos
	inteiro minutos 
	inteiro horas 
	funcao inicio()
	{
		escreva("Quantos segundos: ")
		leia(segundos)
		minutos = segundos/60
		horas = minutos/60
		escreva(horas + ":" + minutos + ":" + segundos + "\n")

		se(segundos>=60){
		minutos++
		segundos=0
		}
		se(minutos>=60){
		horas++
		minutos=0
		}
		escreva(horas + ":" + minutos + ":" + segundos)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 236; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */