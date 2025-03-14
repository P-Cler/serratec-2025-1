/* Escreva um programa que encontre o valor máximo entre 2 números 
Exemplo: 
Entrada: 
Digite um número: 2 
Digite outro número: 1 
Saída: 
O número 2 é maior que o número 1 
*/

programa
{
	real n1, n2
	funcao inicio()
	{
		escreva("Digite o primeiro número \n")
		leia(n1)
		escreva("Digite o segundo número \n")
		leia(n2)

		se(n1>n2){
			escreva("O 1º número é maior")
		}senao se(n1<n2){
			escreva("O 2º número é maior")
		}senao{
			escreva("Os números são iguais")
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 269; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */