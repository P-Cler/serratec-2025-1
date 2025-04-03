# Sistema de Gestão para Clínica Odontológica

Este projeto foi desenvolvido como parte da disciplina de Banco de Dados e tem como objetivo informatizar o atendimento e a gestão de pacientes em uma clínica odontológica. O sistema permite o agendamento de consultas, registro de atendimentos e controle de profissionais e pacientes, garantindo um gerenciamento eficiente e organizado das informações.

## Requisitos do Sistema

### Requisitos Funcionais

- Armazenamento de informações dos pacientes:
  - ID, nome completo, CPF, data de nascimento, telefone, e-mail, endereço e histórico de consultas.
- Agendamento de consultas:
  - Escolha de dentista e horário disponível.
- Registro de consultas:
  - ID, paciente, dentista responsável, data e horário, descrição do atendimento e prescrição (se aplicável).
- Atualização ou cancelamento de consultas dentro de prazos permitidos.
- Cadastro de dentistas:
  - ID, nome completo, CPF, CRO, especialidade e horários de atendimento.
- Cadastro de procedimentos odontológicos:
  - ID, nome, descrição e duração média.
- Associação de procedimentos odontológicos a consultas.
- Permissão para atendentes acessarem e atualizarem dados dos pacientes, consultas e dentistas.

### Requisitos Não Funcionais

- Modelagem do banco de dados:
  - Modelo conceitual, lógico e físico.
- Inserção de pelo menos 10 registros por tabela.
- Criação de dois índices coerentes.
- SQL para:
  - 3 atualizações com condições.
  - 3 exclusões com condições.
- Consultas SQL contextualizadas:
  1. Quantidade de consultas por especialidade.
  2. Quantidade de consultas realizadas por dentista.
  3. Pacientes com maior número de consultas.
  4. View com lista de consultas ordenadas por data.
  5. Média de consultas por dentista.
- Todos os comandos armazenados em um único script SQL, com comentários.

## Modelagem do Banco de Dados

### Modelo Conceitual

![Modelo Conceitual](https://github.com/P-Cler/serratec-2025-1/blob/main/databank/assets/Modelo_conceitual_-_clinica_odontologica_grupo_6.jpg)

### Modelo Lógico

![Modelo Lógico](https://github.com/P-Cler/serratec-2025-1/blob/main/databank/assets/odonto.png)

## Script SQL

O script completo com a criação do banco de dados, inserção de dados, índices e consultas pode ser encontrado no seguinte arquivo:

[Download do Script SQL](https://github.com/P-Cler/serratec-2025-1/blob/main/databank/script.sql)

## Como Usar

1. Clone o repositório:
   ```sh
   https://github.com/P-Cler/serratec-2025-1/tree/main/databank
   ```
2. Execute o script SQL no seu banco de dados.
3. Configure a aplicação para conectar ao banco.
4. Acesse o sistema e comece a gerenciar consultas e pacientes.

## Contribuições

Contribuições são bem-vindas! Para reportar problemas ou sugerir melhorias, abra uma issue no repositório.

## Equipe

#### Pedro Henrique da Silva Cler
#### Lucas Rispoli Delgado
#### Anna May Duarte Atkinson
#### Eduarda Christinne Sousa Azevedo
#### Leandro José De Freitas
