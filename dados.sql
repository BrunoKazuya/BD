-- =============================================================================
-- SCRIPT DE INSERÇÃO DE DADOS - Exercicio 4
-- =============================================================================

-- INSERINDO DADOS EM CAMPUS
-- -----------------------------------------------------------------------------
INSERT INTO CAMPUS (Nome_Campus, Cidade, Estado, Pais) VALUES
('USP São Carlos - Área 1', 'São Carlos', 'SP', 'Brasil'),
('USP São Carlos - Área 2', 'São Carlos', 'SP', 'Brasil');

-- INSERINDO DADOS EM Unidade_Escola
-- -----------------------------------------------------------------------------
INSERT INTO Unidade_Escola (ID_Unidade, Nome_Campus, Bloco) VALUES
('USP-SC-1', 'USP São Carlos - Área 1', 'ICMC'),
('USP-SC-2', 'USP São Carlos - Área 2', 'EESC');

-- INSERINDO DADOS EM ENDERECO_CEP
-- -----------------------------------------------------------------------------
INSERT INTO ENDERECO_CEP (CEP, Rua, Bairro, Cidade, Estado) VALUES
('13560-001', 'Rua das Flores', 'Centro', 'São Carlos', 'SP'),
('13566-590', 'Av. Trabalhador São-Carlense', 'Pq. Arnold Schimidt', 'São Carlos', 'SP'),
('13560-049', 'Rua Episcopal', 'Centro', 'São Carlos', 'SP'),
('13560-050', 'Rua Geminiano Costa', 'Centro', 'São Carlos', 'SP'),
('13560-648', 'Rua Conde do Pinhal', 'Jardim Paraíso', 'São Carlos', 'SP'),
('13560-100', 'Rua Larga', 'Vila Nery', 'São Carlos', 'SP'),
('13560-180', 'Rua 7 de Setembro', 'Centro', 'São Carlos', 'SP'),
('13560-300', 'Rua São Joaquim', 'Vila Monteiro', 'São Carlos', 'SP'),
('13560-161', 'Rua Major José Inácio', 'Centro', 'São Carlos', 'SP'),
('13560-002', 'Av. São Carlos', 'Centro', 'São Carlos', 'SP'),
('13561-270', 'Rua Dr. Carlos de Camargo Salles', 'Jardim Lutfalla', 'São Carlos', 'SP'),
('13561-359', 'Rua Passeio das Palmeiras', 'Parque Faber', 'São Carlos', 'SP');

-- INSERINDO DADOS EM Periodo_Letivo
-- -----------------------------------------------------------------------------
INSERT INTO Periodo_Letivo (ID_Periodo, Ano, Descricao, Data_Inicio, Data_Fim) VALUES
('2024-1S', 2024, 'Primeiro Semestre de 2024', '2024-02-19', '2024-06-29'),
('2024-2S', 2024, 'Segundo Semestre de 2024', '2024-08-05', '2024-12-14'),
('2025-1S', 2025, 'Primeiro Semestre de 2025', '2025-02-17', '2025-06-28');

-- INSERINDO DADOS EM Usuario
-- -----------------------------------------------------------------------------
INSERT INTO Usuario (ID_Usuario, Nome, Sobrenome, Data_Nasc, Sexo, Telefone, Email, Senha, Tipo, Numero, CEP, Titulacao, Area_Especializacao) VALUES
('U001', 'Ana', 'Silva', '2004-05-10', 'F', '16991234567', 'ana.silva@usp.br', 'senha123', 'Aluno', '100', '13560-001', NULL, NULL),
('U002', 'Bruno', 'Kazuya', '2003-08-20', 'M', '16992345678', 'bruno.kazuya@usp.br', 'senha123', 'Aluno', '400', '13566-590', NULL, NULL),
('U003', 'Carla', 'Souza', '2005-01-15', 'F', '16993456789', 'carla.souza@usp.br', 'senha123', 'Aluno', '1575', '13560-049', NULL, NULL),
('U004', 'Daniel', 'Martins', '2004-02-28', 'M', '16994567890', 'daniel.martins@usp.br', 'senha123', 'Aluno', '450', '13560-050', NULL, NULL),
('U005', 'Eduarda', 'Ferreira', '2003-11-12', 'F', '16995678901', 'eduarda.ferreira@usp.br', 'senha123', 'Aluno', '2000', '13560-648', NULL, NULL),
('U006', 'Felipe', 'Almeida', '2005-07-01', 'M', '16996789012', 'felipe.almeida@usp.br', 'senha123', 'Aluno', '1234', '13560-100', NULL, NULL),
('U007', 'Gabriela', 'Lima', '2004-09-18', 'F', '16997890123', 'gabriela.lima@usp.br', 'senha123', 'Aluno', '2222', '13560-180', NULL, NULL),
('U008', 'Henrique', 'Vilela', '2002-12-03', 'M', '16998901234', 'henrique.vilela@usp.br', 'senha123', 'Aluno', '987', '13560-300', NULL, NULL),
('U009', 'Isabela', 'Ribeiro', '2003-04-22', 'F', '16999012345', 'isabela.ribeiro@usp.br', 'senha123', 'Aluno', '2100', '13560-161', NULL, NULL),
('U010', 'João', 'Gomes', '2004-10-05', 'M', '16990123456', 'joao.gomes@usp.br', 'senha123', 'Aluno', '3000', '13560-002', NULL, NULL),
('U011', 'Laura', 'Nunes', '2005-03-08', 'F', '16989012345', 'laura.nunes@usp.br', 'senha123', 'Aluno', '1500', '13561-270', NULL, NULL),
('U012', 'Leonardo', 'Marangoni', '2003-06-14', 'M', '16988012345', 'leonardo.marangoni@usp.br', 'senha123', 'Aluno', '50', '13561-359', NULL, NULL),
('U013', 'Mariana', 'Costa', '2004-01-25', 'F', '16987012345', 'mariana.costa@usp.br', 'senha123', 'Aluno', '455', '13560-050', NULL, NULL),
('U014', 'Nicolas', 'Pereira', '2003-09-30', 'M', '16986012345', 'nicolas.pereira@usp.br', 'senha123', 'Aluno', '1200', '13560-100', NULL, NULL),
('U015', 'Olivia', 'Fernandes', '2005-05-20', 'F', '16985012345', 'olivia.fernandes@usp.br', 'senha123', 'Aluno', '2230', '13560-180', NULL, NULL),
('P001', 'Profa. Mirela', 'Cazzolato', '1985-06-30', 'F', '16982345678', 'mirela@icmc.usp.br', 'senha_prof', 'Professor', '400', '13566-590', 'Doutorado', 'Bancos de Dados'),
('P002', 'Prof. José', 'da Silva', '1975-04-11', 'M', '16981112233', 'jose.silva@usp.br', 'senha_prof', 'Professor', '200', '13560-100', 'Doutorado', 'Inteligência Artificial'),
('P003', 'Profa. Elaine', 'P. M. de Sousa', '1980-09-01', 'F', '16982223344', 'elaine@icmc.usp.br', 'senha_prof', 'Professor', '987', '13560-300', 'Doutorado', 'Engenharia de Software'),
('P004', 'Prof. Francisco', 'Louredo', '1978-01-15', 'M', '16983334455', 'louredo@icmc.usp.br', 'senha_prof', 'Professor', '3000', '13560-002', 'Doutorado', 'Computação Gráfica'),
('P005', 'Prof. Valter', 'Lopes', '1970-07-20', 'M', '16984445566', 'valter.lopes@eesc.usp.br', 'senha_prof', 'Professor', '400', '13566-590', 'Doutorado', 'Mecatrônica'),
('P006', 'Profa. Kalinka', 'Castelo Branco', '1982-10-10', 'F', '16985556677', 'kalinka@icmc.usp.br', 'senha_prof', 'Professor', '1500', '13560-648', 'Doutorado', 'Robótica'),
('P007', 'Prof. Adenilso', 'Simao', '1979-05-05', 'M', '16986667788', 'adenilso@icmc.usp.br', 'senha_prof', 'Professor', '1500', '13560-049', 'Doutorado', 'Teste de Software'),
('P008', 'Profa. Cynthia', 'Oliveira', '1992-03-15', 'F', '16987778899', 'cynthia@icmc.usp.br', 'senha_prof', 'Professor', '500', '13560-161', 'Doutorado', 'Álgebra Linear'),
('P009', 'Prof. Daniel', 'Smania', '1988-12-25', 'M', '16988889900', 'danielsmania@icmc.usp.br', 'senha_prof', 'Professor', '600', '13560-050', 'Doutorado', 'Cálculo II'),
('P010', 'Prof. Farid', 'Tari', '1990-08-30', 'M', '16989990011', 'farid@icmc.usp.br', 'senha_prof', 'Professor', '700', '13560-180', 'Doutorado', 'Geometria Analítica'),
('A001', 'Douglas', 'Fontoura', '1990-11-05', 'M', '16983456789', 'douglas.adm@usp.br', 'senha_adm', 'Funcionario_Administrativo', '500', '13560-180', NULL, NULL),
('A002', 'Secretaria', 'Graduação', '1995-01-01', 'O', '1633739999', 'grad@icmc.usp.br', 'senha_adm', 'Funcionario_Administrativo', '400', '13566-590', NULL, NULL),
('A003', 'Diretoria', 'ICMC', '1992-05-10', 'O', '1633738888', 'diretoria@icmc.usp.br', 'senha_adm', 'Funcionario_Administrativo', '400', '13566-590', NULL, NULL);

-- INSERINDO DADOS EM Departamento
-- -----------------------------------------------------------------------------
INSERT INTO Departamento (Codigo, Nome, ID_Professor_Chefe) VALUES
('SCC', 'Ciências de Computação', 'P003'),
('SMM', 'Matemática', 'P002'),
('SEL', 'Engenharia Elétrica', 'P005'),
('SME', 'Engenharia Mecânica', 'P005');

-- INSERINDO DADOS EM Curso
-- -----------------------------------------------------------------------------
INSERT INTO Curso (Codigo, Nome, Nivel, Carga_Horaria, Num_Vagas, Ementa, Sala, CodigoDepartamento, ID_Unidade) VALUES
('BCC', 'Ciência da Computação', 'Graduação', 3200, 40, 'Ementa do curso de BCC...', '5-001', 'SCC', 'USP-SC-1'),
('MAT', 'Matemática Aplicada', 'Graduação', 3000, 40, 'Ementa do curso de Matemática...', 'B-01', 'SMM', 'USP-SC-1'),
('ECA', 'Engenharia da Computação', 'Graduação', 3800, 50, 'Ementa do curso de Engenharia da Computação...', '5-002', 'SCC', 'USP-SC-1'),
('EEM', 'Engenharia Elétrica e Mecatrônica', 'Graduação', 4000, 60, 'Ementa do curso de Engenharia Elétrica...', '3-101', 'SEL', 'USP-SC-2'),
('EMEC', 'Engenharia Mecânica', 'Graduação', 4100, 50, 'Ementa do curso de Engenharia Mecânica...', 'EM-201', 'SME', 'USP-SC-2');

-- INSERINDO DADOS EM Disciplina
-- -----------------------------------------------------------------------------
INSERT INTO Disciplina (Codigo, Qtd_Vagas, Material, Nome, Aulas_Semanais, ID_Unidade) VALUES
('SCC0240', 50, 'Slides e Livro "Sistemas de Bancos de Dados"', 'Bases de Dados', 4, 'USP-SC-1'),
('SCC0201', 50, 'Material online e Beecrowd', 'Algoritmos e Estruturas de Dados I', 4, 'USP-SC-1'),
('SCC0202', 50, 'Material online e Beecrowd', 'Algoritmos e Estruturas de Dados II', 4, 'USP-SC-1'),
('SCC0425', 50, 'Slides e artigos científicos', 'Computação Gráfica', 4, 'USP-SC-1'),
('SCC0219', 50, 'Notas de aula e livro "E.S. Moderna"', 'Engenharia de Software I', 4, 'USP-SC-1'),
('SCC0250', 50, 'Notas de aula', 'Teste de Software', 4, 'USP-SC-1'),
('SMM0101', 120, 'Livro "Cálculo Volume 1"', 'Cálculo I', 6, 'USP-SC-1'),
('SMM0201', 100, 'Livro "Cálculo Volume 2"', 'Cálculo II', 6, 'USP-SC-1'),
('SMM0300', 80, 'Notas de aula', 'Álgebra Linear', 4, 'USP-SC-1'),
('SEL0333', 60, 'Kits de robótica e manuais', 'Robótica Móvel', 4, 'USP-SC-2'),
('SEL0413', 60, 'Apostilas e simuladores', 'Controle de Sistemas Lineares', 4, 'USP-SC-2');

-- INSERINDO DADOS EM Disciplina_Curso
-- -----------------------------------------------------------------------------
INSERT INTO Disciplina_Curso (CodigoCurso, CodigoDisciplina, Tipo, Periodo) VALUES
('BCC', 'SCC0240', 'Obrigatória', 4), ('BCC', 'SCC0201', 'Obrigatória', 2), ('BCC', 'SCC0202', 'Obrigatória', 3), ('BCC', 'SMM0101', 'Obrigatória', 1), ('BCC', 'SMM0201', 'Obrigatória', 2), ('BCC', 'SCC0219', 'Obrigatória', 5), ('BCC', 'SCC0425', 'Optativa', 6),
('ECA', 'SMM0101', 'Obrigatória', 1), ('ECA', 'SMM0201', 'Obrigatória', 2), ('ECA', 'SCC0201', 'Obrigatória', 2), ('ECA', 'SCC0240', 'Obrigatória', 4), ('ECA', 'SEL0413', 'Obrigatória', 6),
('EEM', 'SMM0101', 'Obrigatória', 1), ('EEM', 'SMM0201', 'Obrigatória', 2), ('EEM', 'SEL0333', 'Obrigatória', 7);

-- INSERINDO DADOS EM Ministrar
-- -----------------------------------------------------------------------------
INSERT INTO Ministrar (CodigoDisciplina, ID_Professor) VALUES
('SCC0240', 'P001'), ('SCC0201', 'P003'), ('SCC0202', 'P003'), ('SCC0425', 'P004'), ('SMM0101', 'P002'), ('SEL0333', 'P005'), ('SCC0219', 'P003'), ('SCC0250', 'P007'), ('SMM0201', 'P009'), ('SEL0413', 'P010'), ('SMM0300', 'P008');

-- INSERINDO DADOS EM Curso_Regras
-- -----------------------------------------------------------------------------
INSERT INTO Curso_Regras (CodigoCurso, Descricao) VALUES 
('BCC', 'Frequência mínima de 75% para aprovação.'), 
('BCC', 'Obrigatório apresentar todos os trabalhos para compor a média.'),
('EEM', 'Normas de segurança no laboratório devem ser seguidas rigorosamente.');

-- INSERINDO DADOS EM Curso_Infraestrutura
-- -----------------------------------------------------------------------------
INSERT INTO Curso_Infraestrutura (CodigoCurso, Descricao) VALUES 
('BCC', 'Laboratório com acesso à internet e compilador C/C++.'), 
('BCC', 'Projetor multimídia em todas as salas.'),
('EEM', 'Bancada de eletrônica com osciloscópio e fonte de tensão.');

-- INSERINDO DADOS EM Curso_Pre_Requisitos
-- -----------------------------------------------------------------------------
INSERT INTO CURSO_PRE_REQUISITOS (CodigoCurso, Codigo_Requisito, Tipo) VALUES 
('ECA', 'SCC0201', 'Disciplina'),
('MAT', 'SMM0101', 'Disciplina');

-- INSERINDO DADOS EM Usuario_Unidade
-- -----------------------------------------------------------------------------
INSERT INTO Usuario_Unidade (ID_Usuario, ID_Unidade) VALUES
('U001', 'USP-SC-1'),('U002', 'USP-SC-1'),('U003', 'USP-SC-1'),('U004', 'USP-SC-1'),('U005', 'USP-SC-1'),('U006', 'USP-SC-1'),('U007', 'USP-SC-1'),('U008', 'USP-SC-1'),('U009', 'USP-SC-1'),('U010', 'USP-SC-1'),('U011', 'USP-SC-1'),('U012', 'USP-SC-1'),('U013', 'USP-SC-1'),('U014', 'USP-SC-1'),('U015', 'USP-SC-1'),
('P001', 'USP-SC-1'),('P002', 'USP-SC-1'),('P003', 'USP-SC-1'),('P004', 'USP-SC-1'),('P006', 'USP-SC-1'),('P007', 'USP-SC-1'),
('P005', 'USP-SC-2'),
('A001', 'USP-SC-1'),('A002', 'USP-SC-1'),('A003', 'USP-SC-1');

-- INSERINDO DADOS EM Grupo_Destinatarios
-- -----------------------------------------------------------------------------
INSERT INTO Grupo_Destinatarios (ID_Grupo, Nome, Tipo, Descricao) VALUES
('G001', 'Turma de BD 2025-1S', 'Turma', 'Alunos matriculados em Bases de Dados no 1º Sem de 2025.'),
('G002', 'Turma de Algoritmos I 2024-2S', 'Turma', 'Alunos matriculados em Algoritmos I no 2º Sem de 2024.'),
('G003', 'Corpo Docente SCC', 'Grupo de Trabalho', 'Todos os professores do departamento de Ciência da Computação.'),
('G004', 'Todos os Alunos', 'Geral', 'Grupo contendo todos os alunos de graduação ativos.');

-- INSERINDO DADOS EM Pertencer_Ao_Grupo
-- -----------------------------------------------------------------------------
INSERT INTO Pertencer_Ao_Grupo (ID_Usuario, ID_Grupo) VALUES
('U001', 'G002'),('U002', 'G002'),('U007', 'G002'),
('U003', 'G001'),('U005', 'G001'),('U006', 'G001'),
('P001', 'G003'),('P002', 'G003'),('P003', 'G003'),('P004', 'G003'),('P006', 'G003'),('P007', 'G003'),
('U001', 'G004'),('U002', 'G004'),('U003', 'G004'),('U004', 'G004'),('U005', 'G004'),('U006', 'G004'),('U007', 'G004'),('U008', 'G004'),('U009', 'G004'),('U010', 'G004'),('U011', 'G004'),('U012', 'G004'),('U013', 'G004'),('U014', 'G004'),('U015', 'G004');

-- INSERINDO DADOS EM Matricula
-- -----------------------------------------------------------------------------
INSERT INTO Matricula (ID_Matricula, ID_Aluno, ID_Periodo, Disciplina_Codigo, Data_Matricula, Status_Matricula, Bolsa, Desconto, Data_Limite_Confirmacao, Nota_Final) VALUES
('M001', 'U001', '2024-2S', 'SCC0201', '2024-07-15', 'Concluída', 0.00, 0.00, '2024-07-30', 9.0),
('M002', 'U002', '2024-2S', 'SCC0201', '2024-07-15', 'Concluída', 0.00, 0.00, '2024-07-30', 7.5),
('M003', 'U003', '2024-2S', 'SMM0101', '2024-07-15', 'Concluída', 0.00, 0.00, '2024-07-30', 8.0),
('M004', 'U004', '2024-2S', 'SMM0101', '2024-07-15', 'Reprovada', 0.00, 0.00, '2024-07-30', 4.0),
('M005', 'U005', '2024-2S', 'SMM0101', '2024-07-15', 'Concluída', 0.00, 0.00, '2024-07-30', 9.5),
('M006', 'U006', '2024-2S', 'SCC0201', '2024-07-15', 'Reprovada', 0.00, 0.00, '2024-07-30', 3.5),
('M007', 'U007', '2024-2S', 'SMM0101', '2024-07-15', 'Concluída', 0.00, 0.00, '2024-07-30', 6.0),
('M008', 'U008', '2024-2S', 'SCC0201', '2024-07-15', 'Concluída', 0.00, 0.00, '2024-07-30', 7.0),
('M009', 'U001', '2025-1S', 'SCC0202', '2025-01-20', 'Ativa', 0.00, 0.00, '2025-02-10', NULL),
('M010', 'U002', '2025-1S', 'SCC0202', '2025-01-20', 'Ativa', 0.00, 0.00, '2025-02-10', NULL),
('M011', 'U003', '2025-1S', 'SCC0240', '2025-01-20', 'Ativa', 150.00, 0.10, '2025-02-10', NULL),
('M012', 'U004', '2025-1S', 'SMM0101', '2025-01-20', 'Ativa', 0.00, 0.00, '2025-02-10', NULL),
('M013', 'U005', '2025-1S', 'SCC0240', '2025-01-21', 'Ativa', 0.00, 0.00, '2025-02-10', NULL),
('M014', 'U006', '2025-1S', 'SCC0202', '2025-01-21', 'Ativa', 0.00, 0.00, '2025-02-10', NULL),
('M015', 'U007', '2025-1S', 'SMM0201', '2025-01-21', 'Trancada', 0.00, 0.00, '2025-02-10', NULL),
('M016', 'U008', '2025-1S', 'SCC0219', '2025-01-21', 'Ativa', 0.00, 0.00, '2025-02-10', NULL),
('M017', 'U009', '2025-1S', 'SCC0240', '2025-01-22', 'Ativa', 0.00, 0.00, '2025-02-10', NULL),
('M018', 'U010', '2025-1S', 'SMM0101', '2025-01-22', 'Ativa', 0.00, 0.00, '2025-02-10', NULL),
('M019', 'U011', '2025-1S', 'SCC0240', '2025-01-22', 'Ativa', 0.00, 0.00, '2025-02-10', NULL),
('M020', 'U012', '2025-1S', 'SCC0219', '2025-01-22', 'Ativa', 0.00, 0.00, '2025-02-10', NULL),
('M021', 'U013', '2025-1S', 'SMM0201', '2025-01-23', 'Ativa', 0.00, 0.00, '2025-02-10', NULL),
('M022', 'U014', '2025-1S', 'SCC0240', '2025-01-23', 'Ativa', 0.00, 0.00, '2025-02-10', NULL),
('M023', 'U015', '2025-1S', 'SMM0101', '2025-01-23', 'Ativa', 0.00, 0.00, '2025-02-10', NULL);


-- INSERINDO DADOS EM Mensagem
-- -----------------------------------------------------------------------------
INSERT INTO Mensagem (ID_Mensagem, ID_Remetente, Timestamp, Texto_Mensagem) VALUES
('MSG001', 'P001', '2025-03-10 09:30:00', 'Bom dia, turma de BD! Lembrem-se que a entrega do trabalho P1 é na próxima semana.'),
('MSG002', 'U001', '2025-03-11 14:00:00', 'Professora Mirela, boa tarde. Teria como estender o prazo do trabalho?'),
('MSG003', 'A001', '2025-02-05 11:00:00', 'Atenção: o sistema de matrículas ficará instável hoje à tarde para manutenção.'),
('MSG004', 'P003', '2024-09-01 10:00:00', 'Prezados alunos de Algoritmos I, bem-vindos ao semestre! O material da primeira aula já está disponível.'),
('MSG005', 'U002', '2024-09-02 18:00:00', 'Professora Elaine, não encontrei o material da aula no sistema. Poderia verificar?');

-- INSERINDO DADOS EM Enviar_Para_Grupo
-- -----------------------------------------------------------------------------
INSERT INTO Enviar_Para_Grupo (ID_Mensagem, ID_Grupo) VALUES
('MSG001', 'G001'), ('MSG003', 'G004'), ('MSG004', 'G002');

-- INSERINDO DADOS EM Enviar_Para_Usuario
-- -----------------------------------------------------------------------------
INSERT INTO Enviar_Para_Usuario (ID_Mensagem, ID_Destinatario, Status) VALUES
('MSG002', 'P001', 'Lida'), ('MSG005', 'P003', 'Enviada');

-- INSERINDO DADOS EM Avaliacao
-- -----------------------------------------------------------------------------
INSERT INTO Avaliacao (ID_Avaliacao, ID_Matricula, Comentario, Nota_Didatica, Nota_Material, Nota_Relevancia, Nota_Infraestrutura) VALUES
('AV001', 'M001', 'Ótimo curso introdutório de algoritmos. A professora é muito didática.', 9.5, 8.5, 9.5, 8.0),
('AV002', 'M004', 'Achei a matéria muito difícil, o professor poderia usar mais exemplos.', 6.0, 7.0, 8.0, 9.0),
('AV003', 'M008', 'Curso excelente, aprendi muito sobre modelagem de dados.', 9.0, 9.0, 10.0, 7.0);