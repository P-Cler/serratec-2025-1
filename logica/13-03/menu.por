/*
 2) Escreva um programa que apresente um menu com as seguintes opções:
Deverá ser criado um vetor com até cinquenta convidados. Para inserir um novo convidado deverá ser verificado no
vetor se a posição está vazia. Quando remover um convidado deverá ser atribuído vazio a posição do vetor.
Pagamento: Para cada convidado deverá ser cobrado o valor de 120,00. Exibir o total que deverá ser pago e quantidade
de convidados presentes. Obs: Criar funções para cada opção.
Menu OPÇÕES:
1- Inserir nome:
2- Listar convidados
3- Remover nome
4- Pagamento
O- sair
Digite a opcào:
 */

programa
{
	inteiro opcao
	cadeia nomes[50]
	funcao inicio()
	{
		escreva("Digite a ação que você deseja realizar: \n")
		escreva("Opções \n Inserir Nome(1) \n Listar Convidado(2) \n Remover Nome(3) \n Pagamento(4) \n Sair(0) \n")
		leia(opcao)
		se(opcao==1){
			Inserir()
		}senao se(opcao==2){
			Listar()
		}senao se(opcao==3){
			Remover()
		}senao se(opcao==4){
			Pagamento()
		}senao se(opcao==0){
			escreva("Programa Interrompido!!")
		}senao{
			escreva("Digite uma opção válida")
		}
	}
	
	funcao Inserir(){
		para(inteiro i=0; i < 50; i++){
			se(nomes[i]==""){
				escreva("Digite o seu nome: ")
				leia(nomes[i])
				se(nomes[i]!=""){
					inicio()
					pare
				}
				
			}
		}
	}
	
	funcao Listar(){
		para(inteiro i=0; i < 50; i++){
			se(nomes[i]!=""){
			escreva(nomes[i], "\n")
				}
		}
		inicio()
	}
	
	funcao Remover(){
		cadeia removido
		escreva("Digite o nome da pessoa que você quer remover: ")
		leia(removido)
		para(inteiro i=0; i < 50; i++){
			se(nomes[i]==removido){
				escreva("O usuario ", nomes[i],  " foi removido \n")
				nomes[i]=""
				
			}
		}
		inicio()
	}
	
	funcao Pagamento(){
		inteiro totalPessoas=0
		escreva("O valor total a ser pago é: R$")
		
		para(inteiro i=0; i < 50; i++){
			se(nomes[i]!=""){
				totalPessoas++
			}
			
		}
		totalPessoas=120*totalPessoas
			escreva(totalPessoas + "\n")
			inicio()
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1021; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */