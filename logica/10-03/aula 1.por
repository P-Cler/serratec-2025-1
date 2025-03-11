programa
{
	
	funcao inicio()
	{

		cadeia nome = "Cler"
		inteiro idade = 18
		logico maior
		inteiro sexo
		const cadeia profissao = "Programador"
	
	
		escreva("Digite o seu nome: \n")
		leia(nome)
		escreva("Digite sua idade: \n")
		leia(idade)
		escreva("Digite seu sexo (Masculino = 1, Feminino = 2): \n")
		leia(sexo)

		escreva("Olá, eu sou " + nome + " tenho " + idade + " anos, trabalho como " + profissao + " e sou do sexo ")

		se(sexo==1){
			escreva("Masculino \n")	
		}senao{
			escreva("Feminino \n")
		}
		
		

		maior=(idade>=18)

		se(maior){
			escreva(nome + " é maior de idade")	
		}senao{
			escreva(nome + " é menor de idade")	
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 550; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */