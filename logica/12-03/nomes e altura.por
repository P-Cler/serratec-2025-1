/*
 1) Criar dois vetores com 5 posições um para ler o nome e outro para ler a altura de pessoas a 
partir do teclado, criticar para não ter alturas inferiores a zero. No final deverá ser impresso o 
vetor com as informações das pessoas.
 */

programa
{
	cadeia nomes[5]
	real alturas[5]
	funcao inicio()
	{
		para(inteiro i=0; i < 5; i++){
			escreva("Digite os nomes: ")
			leia(nomes[i])
			escreva("Digite as alturas: ")
			leia(alturas[i])
			se(alturas[i]<0.0){
				escreva("\n Digite uma altura válida \n")
				i--
			}
		}

		limpa()
		para(inteiro i=0; i < 5; i++){
			escreva(nomes[i], " mede ", alturas[i], "\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 632; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */