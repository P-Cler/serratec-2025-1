// 2) Criar um algoritmo que receba quatro notas e calcule a média. Se a média for maior que 7 deverá ser exibida a mensagem aprovado
     	// caso contrário deverá ser exibida a mensagem reprovado.

programa
{
	real nota1, nota2, nota3, nota4, media
	funcao inicio()
	{
		escreva("Digite a nota do primeiro bimestre \n")
		leia(nota1)
		escreva("Digite a nota do segundo bimestre \n")
		leia(nota2)
		escreva("Digite a nota do terceiro bimestre \n")
		leia(nota3)
		escreva("Digite a nota do quarto bimestre \n")
		leia(nota4)

		media = (nota1+nota2+nota3+nota4)/4

		escreva("A sua média final foi: " + media + "\n")

		se(media>7){
			escreva("Você foi aprovado")
		}senao{
			escreva("Você foi reprovado")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 723; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */