programa
{
		real largura 
		real comprimento 
		inteiro metroQuadrado 
		real area
		real preco
	funcao inicio()
	{

		

		escreva("Qual a largura: ")
		leia(largura)
		escreva("Qual o comprimento: ")
		leia(comprimento)
		escreva("Qual o preço do metro quadrado: ")
		leia(metroQuadrado)
		area = largura*comprimento
		preco = area*metroQuadrado
		escreva("O preço que você tera que pagar é: " + preco)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 416; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */