/*
 4) Crie um algoritmo informe qual o maior e qual o menor elemento existente em uma matriz 4x3.
 */

programa
{
	inteiro matriz[4][3] = { {1, 2, 3},
						{4, 5, 6},
						{7, 8, 9},		
						{10, 11, 12}						}, maior=-1, menor=999
	funcao inicio()
	{
		para(inteiro lin=0; lin < 4; lin++){
			para(inteiro col=0; col < 3; col++){
				se(matriz[lin][col]>maior){
					escreva("O maior número: ", maior, " foi substituido por: ", matriz[lin][col], "\n")
					maior=matriz[lin][col]
				}
				se(matriz[lin][col]<menor){
					escreva("O menor número: ", menor, " foi substituido por: ", matriz[lin][col], "\n")
					menor=matriz[lin][col]
				}
		}
	}

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 171; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */