/*
 7) A padaria Hotpão vende uma certa quantidade de pães franceses e uma quantidade de broas a cada dia.
 Cada pãozinho custa R$ 0,50 e a broa custa R$ 5,00. Ao final do dia, o dono quer saber quanto arrecadou com a venda dos pães e broas (juntos), 
 e quanto deve guardar numa conta de poupança (10% do total arrecadado). Você foi contratado para fazer os cálculos para o dono. 
 Com base nestes fatos, faça um algoritmo para ler as quantidades de pães e de broas, e depois calcular os dados solicitados.

 */

programa
{
	real qPaes, qBroa, soma, poupanca
	funcao inicio()
	{
		escreva("Quantidade de Pães: \n")
		leia(qPaes)
		escreva("Quantidade de Broas: \n")
		leia(qBroa)

		soma = qPaes*0.50 + qBroa*5
		poupanca = soma*0.10

		escreva("\n Você arrecadou: " + soma + "R$")
		escreva("\n Você precisa guardar na poupança: " + poupanca + "R$")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 635; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */