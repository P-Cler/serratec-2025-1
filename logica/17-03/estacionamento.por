programa
{
    // Define o número máximo de vagas
    const inteiro MAX_VAGAS = 30
    
    // Cria um vetor para representar as vagas do estacionamento
    inteiro vagas[MAX_VAGAS]
    
    // Função principal
    funcao inicio()
    {
        // Inicializa todas as vagas como livres (0 = livre, 1 = ocupada)
        para (inteiro i = 0; i < MAX_VAGAS; i++)
        {
            vagas[i] = 0
        }
        
        inteiro opcao = 0
        
        // Loop principal do programa
        enquanto (opcao != 4)
        {
            // Exibe o menu
            escreva("MENU DE GERENCIAMENTO DE VAGAS\n")
            escreva("1-Entrada de Veiculo\n")
            escreva("2-Saida de Veiculo\n")
            escreva("3-Listar vagas\n")
            escreva("4-Sair do programa\n\n")
            escreva("Escolha uma opcao: ")
            leia(opcao)
            
            // Executa a ação conforme a opção escolhida


		se(opcao==1){
			entradaVeiculo()
		}senao se(opcao==2){
			saidaVeiculo()
		}senao se(opcao==3){
			listarVagas()
		}senao se(opcao==4){
			escreva("Saindo do programa...\n")
		}senao{
			escreva("Opcao invalida! Tente novamente.\n")
		}


        }
    }
    
    // Função para entrada de veículo
    funcao entradaVeiculo()
    {
    	   limpa()
        inteiro numeroVaga
        escreva("Digite o numero da vaga para entrada (1-30): ")
        leia(numeroVaga)
        
        // Verifica se o número da vaga é válido
        se (numeroVaga >= 1 e numeroVaga <= MAX_VAGAS)
        {
            se (vagas[numeroVaga - 1] == 0)
            {
                vagas[numeroVaga - 1] = 1
                escreva("Veiculo estacionado na vaga ", numeroVaga, ".\n")
            }
            senao
            {
                escreva("Vaga ocupada! Escolha outra vaga.\n")
            }
        }
        senao
        {
            escreva("Numero da vaga invalido! Tente novamente.\n")
        }
    }
    
    // Função para saída de veículo
    funcao saidaVeiculo()
    {
    	   limpa()
        inteiro numeroVaga
        escreva("Digite o numero da vaga para saida (1-30): ")
        leia(numeroVaga)
        
        // Verifica se o número da vaga é válido
        se (numeroVaga >= 1 e numeroVaga <= MAX_VAGAS)
        {
            se (vagas[numeroVaga - 1] == 1)
            {
                vagas[numeroVaga - 1] = 0
                escreva("Veiculo retirado da vaga ", numeroVaga, ".\n")
            }
            senao
            {
                escreva("Vaga ja esta livre! Escolha outra vaga.\n")
            }
        }
        senao
        {
            escreva("Numero da vaga invalido! Tente novamente.\n")
        }
    }
    
    // Função para listar o status das vagas
    funcao listarVagas()
    {
    	   limpa()
        escreva("Status das vagas:\n")
        para (inteiro i = 0; i < MAX_VAGAS; i++)
        {
            se (vagas[i] == 0)
            {
                escreva("Vaga ", i + 1, ": Livre\n")
            }
            senao
            {
                escreva("Vaga ", i + 1, ": Ocupada\n")
            }
        }
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2682; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */