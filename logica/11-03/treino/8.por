/*
 8) Um motorista deseja colocar no seu tanque X reais de gasolina. 
 Escreva um algoritmo para ler o preço do litro da gasolina e o valor do pagamento, e exibir quantos litros ele conseguiu colocar no tanque.
 */

programa
{
	real preco, pagamento, litro
	funcao inicio()
	{
		escreva("Quanto custa a gasolina no posto: \n")
		leia(preco)
		escreva("Quanto de dinheiro você tem para o pagamento: \n")
		leia(pagamento)
		
		litro = pagamento/preco
		escreva("Você vai conseguir colocar " + litro + " litros de gasolina")
		

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 540; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */