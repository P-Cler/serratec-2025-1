/*
 2) Preencher uma matriz[4][2] com valores iniciais e fazer uma rotina para o usuário ler um número 
 e exibir uma mensagem se este número existe na matriz, se existir pedir ao usuário para preencher 
 com outro valor.
 */

programa
{
	inteiro matriz[4][2] = {{1, 2}, 
					    {3, 4}, 
					    {5, 6},					    
					    {7, 8}}
	inteiro n, novo
	funcao inicio()
	{
		escreva("Digite um número: ")
		leia(n)
		para(inteiro lin=0; lin < 4; lin++){
			para(inteiro col=0; col < 2; col++){
				se(n==matriz[lin][col]){
					escreva("Esse número existe na matriz, substituia ele por outro: ")
					leia(novo)
					matriz[lin][col] = novo
				}
		}
	}
	para(inteiro lin=0; lin < 4; lin++){
			para(inteiro col=0; col < 2; col++){
				escreva(matriz[lin][col],"\t")			}
		}
}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 642; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */