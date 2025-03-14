// 1) Leia um número e retorne como resposta se ele é positivo, negativo ou zero. 

programa
{
	real n1
	funcao inicio()
	{

	

		

		escreva("Digite o número: \n")
		leia(n1)

		se(n1>0){
			escreva("O número é positivo")
		}senao se(n1<0){
			escreva("O número é negativo")
		}senao{
			escreva("O número é 0")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 82; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */