programa
{
	inclua biblioteca Matematica --> Math
	cadeia nome
	real n1, n2, media, total=0.0, quantidade=0.0, decimal, mediaArredondada
	inteiro falta, totalAulas=50, parteInteira
	caracter confirmacao = 'a'
	logico turista = falso
	funcao inicio()
	{
		escreva("Digite seu nome: ")
		leia(nome)
		para(real i=0.0; i<100; i++){
			escreva("Digite sua nota: ")
			leia(i)
			total +=i
			quantidade++
			escreva("Deseja continuar? (S - Sim, N - Não): ")
			leia(confirmacao)
			se(confirmacao!='S' e confirmacao!='s'){
				i=1000.0
			}
		}
		limpa()
		escreva("Digite o total de faltas que você teve: ")
		leia(falta)
		media = total/quantidade
		
		parteInteira = Math.arredondar(media, 1)
		decimal = media-parteInteira
		se(decimal>=0.8){
			mediaArredondada = parteInteira+1
		}senao se(decimal >= 0.3 e decimal <= 0.7){
			mediaArredondada = parteInteira+0.5
		}senao{
			mediaArredondada = parteInteira
		}
		escreva("Sua média final foi: ", mediaArredondada, "\n")
		se(falta>totalAulas/4){
			turista=verdadeiro
		}
		se(media>=7 e turista!=verdadeiro){
			escreva("Aprovado! \n")
			escreva("Seu total de faltas foi: ", falta)
		}senao{
			escreva("Reprovado \n")
			escreva("Seu total de faltas foi: ", falta, "\n")
			se(media<7){
				escreva("Você foi reprovado pela sua nota, tente novamente no proximo ano!")
			}senao{
				escreva("Você foi reprovado porque faltou demais, pare de turistar")
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 255; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */