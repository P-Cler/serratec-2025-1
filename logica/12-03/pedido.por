/*
 O cardápio de uma lanchonete é exibido abaixo. Prepare um algoritmo que exiba o
cardápio e depois leia a quantidade de cada item que você consumiu. Calcule o total da
conta. O usuário deverá quando adicionar um item ter a confirmação para continuar
inserindo outros itens no cardápio.

1- Hambúrguer................. R$ 3,00
2- Cheeseburger.............. R$ 2,50
3- Fritas............................ R$ 2,50
4- Refrigerante................. R$ 1,00
5- Milkshake..................... R$ 3,00
0 - Sair
 */

programa
{
	
real h=0, c=0, f=0, r=0, m=0, total
inteiro item
	logico pedido =verdadeiro
	funcao inicio()
	{
		escreva("Confira nosso cardápio \n Hambúrguer(1) - R$3.0 \n Chesseburguer(2) - R$2.5 \n Fritas(3) - R$2.5\n Refrigerante(4) - R$1.0\n Milkshake(5) - R$3.0")
		escreva("\nPara fazer um pedido basta digitar o número do item que você deseja, quando encerrar seu carrinho basta digitar '0' \n")
		enquanto(pedido==verdadeiro){
		escreva("Digite o seu pedido (1-5) \n")
		leia(item)
		se(item==1){
				h++
				escreva("Você pediu um Hambúrguer \n")
			}senao se(item==2){
				c++
				escreva("Você pediu um Chesseburguer \n")
			}senao se(item==3){
				f++
				escreva("Você pediu um Fritas \n")
			}senao se(item==4){
				r++
				escreva("Você pediu um Refrigerante \n")
			}senao se(item==5){
				m++
				escreva("Você pediu um Milkshake \n")
			}senao se(item==0){
				pare
			}senao{
				escreva("Digite um item válido!! \n")
			}
		}
		limpa()
		escreva("Vamos para o seu pedido \n")
		escreva("Hambúrguer: " + h)
		h = h*3
		escreva("\nChesseburguer: " + c)
		c = c*2.5
		escreva("\nFritas: " + f)
		f = f*2.5
		escreva("\nRefrigerante: " + r)
		r = r*1.0
		escreva("\nMilkshake: " + m)
		m = m*3
		total = h+c+f+r+m
		escreva("\nO total do seu pedido foi: " + total + "R$")
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 618; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */