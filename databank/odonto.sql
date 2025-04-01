
----------------Criação das tabelas-----------------------

create table paciente(	
id serial primary key,
nome varchar(255) not null,
cpf varchar(11) not null unique,
nascimento date not null,
telefone varchar(20) not null,
email varchar(128) unique not null,
endereco varchar(255) not null
);

create table consulta(
id serial primary key,
id_paciente int not null,
id_dentista int not null,
datahora timestamp not null,
descricao text not null,
foreign key (id_paciente) references paciente(id),
foreign key (id_dentista) references dentista(id)
);

alter table consulta add column prescricao varchar(255);

create table dentista(
id serial primary key,
nome varchar(255) not null,
cpf varchar(11) not null unique,
cro varchar(20) not null unique,
especialidade varchar(50) not null 
);

create table procedimento(
id serial primary key,
nome varchar(255) not null,
descricao text not null,
duracao time
);

create table procedimento_consulta(
	id serial primary key,
	id_consulta int not null,
	id_procedimento int not null,
	foreign key (id_consulta) references consulta(id),
	foreign key (id_procedimento) references procedimento(id)
);

create table horario_atendimento(
	id serial primary key,
	id_dentista int not null,
	id_consulta int not null,
	foreign key (id_consulta) references consulta(id),
	foreign key (id_dentista) references dentista(id) 
);


----------------Criação das tabelas-----------------------

----------------Alimentado as tabelas-----------------------

-- Inserindo pacientes
INSERT INTO paciente (nome, cpf, nascimento, telefone, email, endereco) VALUES
('Ana Souza', '12345678901', '1985-06-15', '(11) 91234-5678', 'ana.souza@email.com', 'Rua A, 123, São Paulo'),
('Carlos Mendes', '23456789012', '1990-04-22', '(11) 92345-6789', 'carlos.mendes@email.com', 'Rua B, 456, São Paulo'),
('Mariana Lima', '34567890123', '1982-09-10', '(11) 93456-7890', 'mariana.lima@email.com', 'Rua C, 789, São Paulo'),
('Fernando Alves', '45678901234', '1995-12-05', '(11) 94567-8901', 'fernando.alves@email.com', 'Rua D, 101, São Paulo'),
('Juliana Castro', '56789012345', '1988-07-30', '(11) 95678-9012', 'juliana.castro@email.com', 'Rua E, 202, São Paulo'),
('Roberto Silva', '67890123456', '1993-02-18', '(11) 96789-0123', 'roberto.silva@email.com', 'Rua F, 303, São Paulo'),
('Paula Fernandes', '78901234567', '1987-05-25', '(11) 97890-1234', 'paula.fernandes@email.com', 'Rua G, 404, São Paulo'),
('Lucas Pereira', '89012345678', '1999-08-14', '(11) 98901-2345', 'lucas.pereira@email.com', 'Rua H, 505, São Paulo'),
('Vanessa Rocha', '90123456789', '1980-03-29', '(11) 99012-3456', 'vanessa.rocha@email.com', 'Rua I, 606, São Paulo'),
('Eduardo Martins', '01234567890', '1991-11-07', '(11) 90123-4567', 'eduardo.martins@email.com', 'Rua J, 707, São Paulo');

-- Inserindo dentistas
INSERT INTO dentista (nome, cpf, cro, especialidade) VALUES
('Dr. João Batista', '11223344556', 'CRO-SP 12345', 'Ortodontia'),
('Dra. Camila Nunes', '22334455667', 'CRO-SP 23456', 'Endodontia'),
('Dr. Ricardo Alves', '33445566778', 'CRO-SP 34567', 'Implantodontia'),
('Dra. Fernanda Costa', '44556677889', 'CRO-SP 45678', 'Periodontia'),
('Dr. Guilherme Souza', '55667788990', 'CRO-SP 56789', 'Odontopediatria'),
('Dra. Luana Silva', '66778899001', 'CRO-SP 67890', 'Cirurgia Oral'),
('Dr. Marcelo Ribeiro', '77889900112', 'CRO-SP 78901', 'Dentística'),
('Dra. Roberta Farias', '88990011223', 'CRO-SP 89012', 'Radiologia'),
('Dr. Pedro Henrique', '99001122334', 'CRO-SP 90123', 'Prótese Dentária'),
('Dra. Larissa Mendes', '00112233445', 'CRO-SP 01234', 'Ortodontia');

-- Inserindo procedimentos
INSERT INTO procedimento (nome, descricao, duracao) VALUES
('Limpeza', 'Remoção de tártaro e placa bacteriana', '00:30:00'),
('Canal', 'Tratamento de canal dentário', '01:30:00'),
('Extração', 'Extração de dente comprometido', '00:45:00'),
('Clareamento', 'Clareamento dental a laser', '01:00:00'),
('Implante', 'Colocação de implante dentário', '02:00:00'),
('Aparelho Ortodôntico', 'Colocação de aparelho fixo', '01:30:00'),
('Restauração', 'Restauração dentária em resina', '00:40:00'),
('Raio-X', 'Radiografia panorâmica', '00:20:00'),
('Consulta Inicial', 'Avaliação e diagnóstico odontológico', '00:30:00'),
('Prótese Dentária', 'Instalação de prótese fixa ou móvel', '01:00:00');

-- Inserindo consultas
INSERT INTO consulta (id_paciente, id_dentista, datahora, descricao) VALUES
(1, 1, '2024-08-01 09:00:00', 'Consulta inicial para avaliação'),
(2, 3, '2024-08-02 10:30:00', 'Exame e planejamento para implante'),
(3, 5, '2024-08-03 14:00:00', 'Sessão de ortodontia para ajuste de aparelho'),
(4, 2, '2024-08-04 16:00:00', 'Tratamento de canal no molar superior esquerdo'),
(5, 6, '2024-08-05 11:00:00', 'Extração de dente do siso'),
(6, 4, '2024-08-06 08:30:00', 'Limpeza e profilaxia dentária'),
(7, 7, '2024-08-07 15:00:00', 'Clareamento dental em consultório'),
(8, 9, '2024-08-08 13:00:00', 'Instalação de prótese fixa superior'),
(9, 8, '2024-08-09 17:30:00', 'Radiografia panorâmica para avaliação'),
(10, 10, '2024-08-10 12:00:00', 'Consulta de rotina e prevenção');

----------------Alimentado as tabelas-----------------------

-------------

----------------Comandos-----------------------

------------------SQL de 3 atualizações de registros com condições em alguma tabela.------------


update consulta set datahora = '2024-08-15 09:00:00', descricao = 'Reagendada - Consulta inicial para avaliação' 
where id=1 and datahora > now() + interval '24 hours';

UPDATE dentista 
SET especialidade = 'Ortodontia Avançada' 
WHERE id = 1 AND NOT EXISTS (
    SELECT 1 FROM consulta WHERE id_dentista = dentista.id
);

UPDATE procedimento 
SET duracao = '01:00:00' 
WHERE duracao < '01:00:00';

------------------SQL de 3 atualizações de registros com condições em alguma tabela.------------

------

------------------SQL de 3 exclusão de registros com condições em alguma tabela.------------


DELETE FROM procedimento_consulta
WHERE id_consulta IN (
    SELECT id FROM consulta WHERE datahora < NOW() - INTERVAL 3 MONTH
);

DELETE FROM consulta
WHERE datahora < NOW() - INTERVAL 3 MONTH;

DELETE FROM horario_atendimento
WHERE id_consulta IN (
    SELECT id FROM consulta WHERE datahora < NOW() - INTERVAL 3 MONTH
);

------------------SQL de 3 exclusão de registros com condições em alguma tabela.------------


--------

------------------1º - Quantidade de consultas por especialidade:------------

select d.especialidade, count(c.id) as quantidade from dentista d
left join consulta c on c.id_dentista = d.id
group by d.especialidade
order by quantidade desc;

------------------Quantidade de consultas por especialidade:------------

----------

------------------2º - Quantidade de consultas realizadas por cada dentista:------------

select d.nome, count(c.id) as quantidade_consulta from dentista d
left join consulta c on c.id_dentista = d.id
group by d.nome
order by quantidade_consulta desc;

------------------Quantidade de consultas realizadas por cada dentista:------------

----------


------------------3º - Pacientes com maior número de consultas:------------

select p.nome, count(c.id) as quantidade from paciente p
left join consulta c on c.id_paciente = p.id
group by p.nome
order by quantidade desc;

------------------Pacientes com maior número de consultas:------------

----------

------------------4a - View com lista de consultas ordenadas por data:------------

CREATE VIEW lista_consultas_ordenadas AS
SELECT 
    c.id AS id_consulta, 
    p.nome AS nome_paciente, 
    d.nome AS nome_dentista, 
    c.datahora AS data_consulta, 
    STRING_AGG(pr.nome, ', ') AS procedimentos_realizados
FROM consulta c
JOIN paciente p ON c.id_paciente = p.id
JOIN dentista d ON c.id_dentista = d.id
LEFT JOIN procedimento_consulta pc ON c.id = pc.id_consulta
LEFT JOIN procedimento pr ON pc.id_procedimento = pr.id
GROUP BY c.id, p.nome, d.nome, c.datahora
ORDER BY c.datahora DESC;


select * from lista_consultas_ordenadas;

------------------5 - Média de consultas por dentista:------------

SELECT 
    nome_dentista, 
    total_consultas,
    (SELECT AVG(total_consultas) FROM (
        SELECT COUNT(c.id) AS total_consultas
        FROM dentista d
        LEFT JOIN consulta c ON d.id = c.id_dentista
        GROUP BY d.id
    ) AS subconsulta) AS media_consultas_por_dentista
FROM (
    SELECT 
        d.nome AS nome_dentista, 
        COUNT(c.id) AS total_consultas
    FROM dentista d
    LEFT JOIN consulta c ON d.id = c.id_dentista
    GROUP BY d.id
) AS subconsulta;


SELECT * FROM public.consulta
ORDER BY id ASC 

UPDATE consulta
SET datahora = '2024-08-15 10:00:00', descricao = 'Reagendamento da consulta'
WHERE id = 1 AND datahora > now() + INTERVAL '24 HOURS';


----------------Comandos-----------------------



-- Inserindo procedimentos realizados nas consultas
INSERT INTO procedimento_consulta (id_consulta, id_procedimento) VALUES
(1, 9),
(2, 5),
(3, 6),
(4, 2),
(5, 3),
(6, 1),
(7, 4),
(8, 10),
(9, 8),
(10, 1);

-- Inserindo horários de atendimento
INSERT INTO horario_atendimento (id_dentista, id_consulta) VALUES
(1, 1),
(3, 2),
(5, 3),
(2, 4),
(6, 5),
(4, 6),
(7, 7),
(9, 8),
(8, 9),
(10, 10);
