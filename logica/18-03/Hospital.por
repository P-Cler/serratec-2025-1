/*
 Caio Baima
 Kauan Melo
 Matheus dos Santos
 Pedro Cler
 */

programa
{
    
    logico quartos[20] 
    inteiro totalInternados = 0, totalConsultas = 0
    real totalFaturadoConsultas = 0.0, totalFaturadoInternacoes = 0.0

    funcao inicio()
    {
        inteiro opcao
        faca
        {
            escreva("\nHOSPITAL - XPTO\n")
            escreva("----------------------------------\n")
            escreva("1 - Consulta Ambulatorial\n")
            escreva("2 - Internação\n")
            escreva("3 - Listar Quartos\n")
            escreva("4 - Faturamento\n")
            escreva("5 - Sair do Programa\n")
            escreva("----------------------------------\n")
            escreva("Escolha uma opção: ")
            leia(opcao)

            escolha(opcao)
            {
                caso 1:
                    cadastroConsulta()
                    pare
                caso 2:
                    cadastroInterna()
                    pare
                caso 3:
                    listarQuartos()
                    pare
                caso 4:
                    faturamento()
                    pare
                caso 5:
                    escreva("Saindo do programa...\n")
                    pare
            }
        } enquanto (opcao != 5)
    }

    funcao cadastroInterna()
    {
        cadeia nome, telefone
        inteiro quartoRequerido

        limpa()
        escreva("Vamos te cadastrar no sistema para seguir com a internação.\n")
        escreva("Nome: ")
        leia(nome)
        escreva("Telefone: ")
        leia(telefone)

        escreva("Digite o número do quarto que deseja ocupar (1-20): ")
        leia(quartoRequerido)

        se (verificarQuarto(quartoRequerido))
        {
            quartos[quartoRequerido - 1] = verdadeiro
            totalInternados++
            totalFaturadoInternacoes += 500.0
            escreva("Quarto reservado com sucesso!\n")
        }
        senao
        {
            escreva("Quarto ocupado ou número inválido! Tente outro.\n")
        }
    }

    funcao logico verificarQuarto(inteiro quartoRequerido)
    {
        se (quartoRequerido >= 1 e quartoRequerido <= 20)
        {
            se (quartos[quartoRequerido - 1] == falso)
            {
                retorne verdadeiro
            }
        }
        retorne falso
    }

    funcao cadastroConsulta()
    {
        cadeia nome, telefone, especialidade
        real valorConsulta = 0.0

        limpa()
        escreva("Vamos te cadastrar no sistema para seguir com a consulta.\n")
        escreva("Nome: ")
        leia(nome)
        escreva("Telefone: ")
        leia(telefone)
        escreva("Especialidade da Consulta: ")
        leia(especialidade)

        se (especialidade == "Pediatria")
        {
            valorConsulta = 150.0
        }
        senao
        {
            valorConsulta = 120.0
        }

        totalConsultas++
        totalFaturadoConsultas += valorConsulta
        escreva("Consulta cadastrada com sucesso!\n")
    }

    funcao listarQuartos()
    {
        limpa()
        escreva("Listagem de Quartos:\n")
        para (inteiro i = 0; i < 20; i++)
        {
            escreva("Quarto ", i + 1, ": ")
            se (quartos[i])
            {
                escreva("Ocupado\n")
            }
            senao
            {
                escreva("Desocupado\n")
            }
        }
    }

    funcao faturamento()
    {
        limpa()
        escreva("Faturamento:\n")
        escreva("----------------------------------\n")
        escreva("Total de Consultas: ", totalConsultas, "\n")
        escreva("Total de Internações: ", totalInternados, "\n")
        escreva("Total Faturado com Consultas: R$ ", totalFaturadoConsultas, "\n")
        escreva("Total Faturado com Internações: R$ ", totalFaturadoInternacoes, "\n")
        escreva("Total Geral Arrecadado: R$ ", totalFaturadoConsultas + totalFaturadoInternacoes, "\n")
        escreva("----------------------------------\n")
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 63; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */