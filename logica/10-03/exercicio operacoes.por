programa
{
	
	funcao inicio()
	{
	inteiro n1 
	inteiro n2
	inteiro resultado
	inteiro operacao

		escreva("Digite o número da operação (Soma - 1, Subtração - 2, Divisão - 3, Multiplicação - 4, Resto - 5): \n")
		leia(operacao)
		escreva("Digite um número: \n")
		leia(n1)
		escreva("Digite um número: \n")
		leia(n2)

		se(operacao==1){
			resultado=n1+n2
			escreva("os números foram: " + n1 + " e " + n2 + " e o resultado é: " + resultado)
		}senao se(operacao==2){
		resultado=n1-n2
		escreva("os números foram: " + n1 + " e " + n2 + " e o resultado é: " + resultado)
		}
		senao se(operacao==3){
		resultado=n1/n2
		escreva("os números foram: " + n1 + " e " + n2 + " e o resultado é: " + resultado)
		}
		senao se(operacao==4){
		resultado=n1*n2
		escreva("os números foram: " + n1 + " e " + n2 + " e o resultado é: " + resultado)
		}
		senao se(operacao==6){
		resultado=n1%n2
		escreva("os números foram: " + n1 + " e " + n2 + " e o resultado é: " + resultado)
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 276; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */