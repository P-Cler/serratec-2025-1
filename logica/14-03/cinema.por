/*
 Turma: Serratec.2025.1
 Alunos:
 Caio Baima
 Kauan
 Matheus
 Pedro Henrique da Silva Cler

 Criar um algoritmo para reserva de assentos em um cinema. No nosso exemplo a
sala de cinema deverá possuir dez filas com doze assentos totalizando cento e
vinte assentos.
 */

programa
{
    // Declaração das variáveis globais
    inteiro matriz[10][12], assentoL, opcao, assentoOcupado = 0  // Matriz representa os assentos da sala (0 = livre, 1 = ocupado)
    cadeia letras[12] = {"A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L"}  // Vetor representando as colunas da sala de cinema

    // Função principal do programa
    funcao inicio()
    {
        escreva("Bem-vindo à sua sala de cinema, a lista de assentos atuais está assim: \n\n")
        listar()  // Chama a função para exibir o mapa dos assentos

        // Pergunta ao usuário se deseja comprar um assento
        escreva("\nDeseja comprar algum assento? (1 - Sim, 0 - Não): ")
        leia(opcao)

        // Verifica a opção escolhida pelo usuário
        se (opcao == 1) {
            limpa()  
            
        } senao se (opcao == 0) {
            // Exibe a quantidade de assentos ocupados e disponíveis
            escreva("O total de assentos ocupados é: ", assentoOcupado, "\nNesta sala ainda sobram ", 120 - assentoOcupado)
            escreva("Muito obrigado, volte sempre!")
        } senao {
            escreva("Digite uma opção válida!")  // Mensagem de erro para entrada inválida
        }
    }

    // Função para escolher e ocupar um assento
    funcao assento()
    {
        cadeia assentoC  // Variável para armazenar a coluna escolhida pelo usuário

        // Solicita a coluna e a linha do assento desejado
        escreva("Digite qual a coluna (A-L) do assento que você deseja ocupar: ")
        leia(assentoC)
        escreva("Digite qual a linha (0-9) do assento que você deseja ocupar: ")
        leia(assentoL)

        inteiro colunaSelecionada = -1  // Inicializa a variável que armazenará a coluna convertida para índice

        // Percorre o vetor de letras para encontrar o índice correspondente à coluna escolhida
        para (inteiro i = 0; i < 12; i++) {
            se (assentoC == letras[i]) {
                colunaSelecionada = i
                pare  
            }
        }

        // Verifica se o assento é válido (coluna e linha dentro dos limites)
        se (colunaSelecionada == -1 ou assentoL < 0 ou assentoL >= 10) {
            escreva("Esse assento não existe! \n")  // Mensagem de erro para entrada inválida
        } senao {
            // Verifica se o assento está livre
            se (matriz[assentoL][colunaSelecionada] == 0) {
                matriz[assentoL][colunaSelecionada] = 1  // Marca o assento como ocupado
                escreva("Você ocupou o assento e sua compra foi finalizada. Bom filme!! \n\n\n")
                assentoOcupado++  // Incrementa o contador de assentos ocupados
            } senao {
                escreva("Esse assento já está ocupado, tente outro! \n")  // Mensagem caso o assento já esteja ocupado
            }
        }

        inicio()  // Retorna ao menu inicial após a tentativa de ocupação do assento
    }

    // Função para listar a disposição dos assentos na sala
    funcao listar()
    {
        escreva("   ")  // Espaço para alinhar os números das linhas corretamente

        // Exibe as letras que representam as colunas
        para (inteiro col = 0; col < 12; col++) {
            escreva(letras[col], " ")  
        }
        escreva("\n")

        // Percorre as linhas e colunas para exibir os assentos
        para (inteiro lin = 0; lin < 10; lin++) {
            escreva(lin, " ")  // Exibe o número da linha
            se (lin < 10) escreva(" " )  // Adiciona um espaço extra para manter a formatação correta

            // Percorre as colunas e exibe os assentos (0 = livre, 1 = ocupado)
            para (inteiro col = 0; col < 12; col++) {
                escreva(matriz[lin][col], " ")
            }
            escreva("\n")  // Quebra de linha para a próxima fileira de assentos
        }
    }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 970; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */