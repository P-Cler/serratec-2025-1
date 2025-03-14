programa
{
	inclua biblioteca Util --> U
	inteiro contador, totalPar=0, totalImpar=0
	funcao inicio()
	{
		escreva("número: \n" )
		leia(contador)
		para(inteiro numero=0; numero<contador; numero++){
			se(numero%2==0){
				totalPar++
				escreva("\nPar")
			}senao{
				totalImpar++	
				escreva("\nImpar")
			}
			
		}
		escreva("\n"+totalPar + "\n" + totalImpar)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 369; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */