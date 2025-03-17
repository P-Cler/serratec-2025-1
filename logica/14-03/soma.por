/*
 3) Fazer um algoritmo com um matriz 3x2 de inteiros. Preencher a matriz fazendo a leitura no console.
 Fazer o somatório dos valores das linhas e das colunas da matriz, exibindo na tela os resultados.
*/

programa
{
    inteiro matriz[3][2], somaLinhas[3], somaColunas[2]
    
    funcao inicio()
    {
        
        para (inteiro i = 0; i < 3; i++) {
            somaLinhas[i] = 0
        }
        para (inteiro j = 0; j < 2; j++) {
            somaColunas[j] = 0
        }

        
        para (inteiro i = 0; i < 3; i++) { 
            para (inteiro j = 0; j < 2; j++) { 
                escreva("Digite o número para a posição [", i, "][", j, "]: ")
                leia(matriz[i][j]) 
                
                somaLinhas[i] += matriz[i][j] 
                somaColunas[j] += matriz[i][j] 
            }
        }

        
        escreva("\nMatriz inserida:\n")
        para (inteiro i = 0; i < 3; i++) {
            para (inteiro j = 0; j < 2; j++) {
                escreva(matriz[i][j], " ")
            }
            escreva("\n")
        }

        
        escreva("\nSoma das linhas:\n")
        para (inteiro i = 0; i < 3; i++) {
            escreva("Linha ", i, ": ", somaLinhas[i], "\n")
        }

        
        escreva("\nSoma das colunas:\n")
        para (inteiro j = 0; j < 2; j++) {
            escreva("Coluna ", j, ": ", somaColunas[j], "\n")
        }
    }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1406; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */