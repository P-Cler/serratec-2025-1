/*
 Faça um exercício para leitura de dados de uma eleição
1 - Candidato - X
2 - Candidato - Y
3 - Branco
0 - Encerrar Votação
Qualquer opção diferente anulará o voto
No final deverá ser exibido o total de votos e o percentual de voto de todos candidado
 */

programa
{
	inclua biblioteca Matematica --> Math
	inteiro candidatoA=0, candidatoB=0, branco=0, voto, nulo=0, total
	real porcentagemA=0, porcentagemB=0, porcentagemBranco=0, porcentagemNulo=0
	logico votacao =verdadeiro
	funcao inicio()
	{
		escreva("Vamos começar a eleição \n")
		enquanto(votacao==verdadeiro){
		escreva("Digite o seu voto (0-3) \n")
		leia(voto)
		se(voto==1){
				candidatoA++
			}senao se(voto==2){
				candidatoB++
			}senao se(voto==3){
				branco++
			}senao se(voto==0){
				pare
			}senao{
				nulo++
			}
		}
		limpa()
		total = candidatoA+candidatoB+branco+nulo
		se(total>0){
			porcentagemA = (candidatoA * 100.0) / total
			porcentagemB = (candidatoB * 100.0) / total
			porcentagemBranco = (branco * 100.0) / total
			porcentagemNulo = (nulo * 100.0) / total
		}
		escreva("Total de Votos: ", total)
		escreva("\nVamos para as parciais de cada candidato \n")
		escreva("Candidato A: " + candidatoA, ", isso corresponde a ", Math.arredondar(porcentagemA, 2), "% dos votos")
		escreva("\nCandidato B: " + candidatoB, ", isso corresponde a ", Math.arredondar(porcentagemB, 2), "% dos votos")
		escreva("\nVotos em branco: " + branco, ", isso corresponde a ", Math.arredondar(porcentagemBranco, 2), "% dos votos")
		escreva("\nVotos nulos: " + nulo, ", isso corresponde a ", Math.arredondar(porcentagemNulo, 2), "% dos votos")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 797; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */