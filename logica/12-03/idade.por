programa
{
	inclua biblioteca Matematica --> Math
	inteiro idades[5], maior, menor, soma=0
	real media =0.0
	funcao inicio()
	{
		para(inteiro i=0; i<5; i++){
			escreva("Digite uma idade: ")
			leia(idades[i])
			se(i==0){
				maior = idades[i]
				menor = idades[i]
			}senao{
				se(idades[i]>maior){
					maior = idades[i]
				}
				se(idades[i]<menor){
					menor = idades[i]
				}
			}
			soma +=idades[i]
		}
		limpa()
		media = soma/5.0
		escreva("\nA maior idade é: ", maior)
		escreva("\nA menor idade é: ", menor)
		escreva("\nA soma das idades é: ", soma)
		escreva("\nA média das idades é: ", media)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 429; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */