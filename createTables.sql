-- =============================================================================
-- SCRIPT DE CRIAÇÃO DA ESTRUTURA COMPLETA DO BANCO DE DADOS (DDL)
-- Projeto Final de Bases de Dados - PostgreSQL
-- Versão com chaves VARCHAR e comandos DROP TABLE IF EXISTS.
-- =============================================================================

--
-- SEÇÃO 1: DROP TABLES
-- Apaga as tabelas na ordem inversa de suas dependências para evitar erros.
--
DROP TABLE IF EXISTS AVALIACAO CASCADE;
DROP TABLE IF EXISTS ENVIAR_PARA_USUARIO CASCADE;
DROP TABLE IF EXISTS ENVIAR_PARA_GRUPO CASCADE;
DROP TABLE IF EXISTS PERTENCER_AO_GRUPO CASCADE;
DROP TABLE IF EXISTS MINISTRAR CASCADE;
DROP TABLE IF EXISTS MATRICULA CASCADE;
DROP TABLE IF EXISTS MENSAGEM CASCADE;
DROP TABLE IF EXISTS DISCIPLINA_CURSO CASCADE;
DROP TABLE IF EXISTS CURSO_REGRAS CASCADE;
DROP TABLE IF EXISTS CURSO_INFRAESTRUTURA CASCADE;
DROP TABLE IF EXISTS CURSO_PRE_REQUISITOS CASCADE;
DROP TABLE IF EXISTS CURSO CASCADE;
DROP TABLE IF EXISTS DEPARTAMENTO CASCADE;
DROP TABLE IF EXISTS USUARIO_UNIDADE CASCADE;
DROP TABLE IF EXISTS DISCIPLINA CASCADE;
DROP TABLE IF EXISTS USUARIO CASCADE;
DROP TABLE IF EXISTS GRUPO_DESTINATARIOS CASCADE;
DROP TABLE IF EXISTS UNIDADE_ESCOLA CASCADE;
DROP TABLE IF EXISTS CAMPUS CASCADE;
DROP TABLE IF EXISTS ENDERECO_CEP CASCADE;
DROP TABLE IF EXISTS PERIODO_LETIVO CASCADE;


--
-- SEÇÃO 2: CREATE TABLES
-- Cria as tabelas na ordem correta de suas dependências.
--

-- 2.1. Tabelas Independentes (sem chaves estrangeiras)
CREATE TABLE ENDERECO_CEP (
    CEP VARCHAR(9) NOT NULL,
    Rua VARCHAR(255) NOT NULL,
    Bairro VARCHAR(100) NOT NULL,
    Cidade VARCHAR(100) NOT NULL,
    Estado VARCHAR(2) NOT NULL,
    PRIMARY KEY (CEP)
);

CREATE TABLE CAMPUS (
    Nome_Campus VARCHAR(100) NOT NULL,
    Cidade VARCHAR(100) NOT NULL,
    Estado VARCHAR(2) NOT NULL,
    Pais VARCHAR(50) NOT NULL,
    PRIMARY KEY (Nome_Campus)
);

CREATE TABLE PERIODO_LETIVO (
    ID_Periodo VARCHAR(10) NOT NULL,
    Ano INT NOT NULL,
    Descricao VARCHAR(50) NOT NULL,
    Data_Inicio DATE NOT NULL,
    Data_Fim DATE NOT NULL,
    PRIMARY KEY (ID_Periodo)
);

CREATE TABLE GRUPO_DESTINATARIOS (
    ID_Grupo VARCHAR(10) NOT NULL,
    Nome VARCHAR(100) NOT NULL,
    Tipo VARCHAR(50),
    Descricao TEXT,
    PRIMARY KEY (ID_Grupo)
);

-- 2.2. Tabelas com dependências primárias
CREATE TABLE UNIDADE_ESCOLA (
    ID_Unidade VARCHAR(10) NOT NULL,
    Nome_Campus VARCHAR(100) NOT NULL,
    Bloco VARCHAR(50) NOT NULL,
    PRIMARY KEY (ID_Unidade),
    FOREIGN KEY (Nome_Campus) REFERENCES CAMPUS(Nome_Campus) ON DELETE RESTRICT,
    UNIQUE (Nome_Campus, Bloco)
);

CREATE TABLE USUARIO (
    ID_Usuario VARCHAR(10) NOT NULL,
    Nome VARCHAR(100) NOT NULL,
    Sobrenome VARCHAR(100) NOT NULL,
    Data_Nasc DATE NOT NULL,
    Sexo CHAR(1),
    Telefone VARCHAR(20) NOT NULL,
    Email VARCHAR(255) NOT NULL,
    Senha VARCHAR(255) NOT NULL,
    Tipo VARCHAR(30) NOT NULL,
    Numero VARCHAR(10) NOT NULL,
    CEP VARCHAR(9) NOT NULL,
    Titulacao VARCHAR(50),
    Area_Especializacao VARCHAR(100),
    PRIMARY KEY (ID_Usuario),
    FOREIGN KEY (CEP) REFERENCES ENDERECO_CEP(CEP) ON DELETE RESTRICT,
    UNIQUE (Email),
    UNIQUE (Nome, Sobrenome, Telefone),
    CHECK (Tipo IN ('Aluno', 'Professor', 'Funcionario_Administrativo'))
);

CREATE TABLE DEPARTAMENTO (
    Codigo VARCHAR(10) NOT NULL,
    Nome VARCHAR(100) NOT NULL,
    ID_Professor_Chefe VARCHAR(10),
    PRIMARY KEY (Codigo)
    -- A FK para ID_Professor_Chefe é adicionada depois para evitar referência circular na criação.
);

CREATE TABLE DISCIPLINA (
    Codigo VARCHAR(20) NOT NULL,
    Nome VARCHAR(255) NOT NULL,
    Qtd_Vagas INT NOT NULL,
    Material TEXT,
    Aulas_Semanais INT,
    ID_Unidade VARCHAR(10) NOT NULL,
    PRIMARY KEY (Codigo),
    FOREIGN KEY (ID_Unidade) REFERENCES UNIDADE_ESCOLA(ID_Unidade) ON DELETE RESTRICT
);

CREATE TABLE MENSAGEM (
    ID_Mensagem VARCHAR(10) NOT NULL,
    ID_Remetente VARCHAR(10) NOT NULL,
    Timestamp TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    Texto_Mensagem TEXT NOT NULL,
    PRIMARY KEY (ID_Mensagem),
    FOREIGN KEY (ID_Remetente) REFERENCES USUARIO(ID_Usuario) ON DELETE CASCADE
);

-- 2.3. Adicionando FK restante em DEPARTAMENTO
ALTER TABLE DEPARTAMENTO ADD CONSTRAINT fk_chefe_departamento
FOREIGN KEY (ID_Professor_Chefe) REFERENCES USUARIO(ID_Usuario) ON DELETE SET NULL;

-- 2.4. Tabelas de Entidades Dependentes
CREATE TABLE CURSO (
    Codigo VARCHAR(20) NOT NULL,
    Nome VARCHAR(255) NOT NULL,
    Nivel VARCHAR(50) NOT NULL,
    Carga_Horaria INT,
    Num_Vagas INT,
    Ementa TEXT,
    Sala VARCHAR(20),
    CodigoDepartamento VARCHAR(10) NOT NULL,
    ID_Unidade VARCHAR(10) NOT NULL,
    PRIMARY KEY (Codigo),
    FOREIGN KEY (CodigoDepartamento) REFERENCES DEPARTAMENTO(Codigo) ON DELETE RESTRICT,
    FOREIGN KEY (ID_Unidade) REFERENCES UNIDADE_ESCOLA(ID_Unidade) ON DELETE RESTRICT
);

-- 2.5. Tabelas de Ligação e Entidades Finais
CREATE TABLE MATRICULA (
    ID_Matricula VARCHAR(10) NOT NULL,
    ID_Aluno VARCHAR(10) NOT NULL,
    Disciplina_Codigo VARCHAR(20) NOT NULL,
    ID_Periodo VARCHAR(10) NOT NULL,
    Data_Matricula DATE NOT NULL,
    Status_Matricula VARCHAR(50) NOT NULL,
    Bolsa DECIMAL(10, 2),
    Desconto DECIMAL(10, 2),
    Data_Limite_Confirmacao DATE,
    Nota_Final DECIMAL(4, 2),
    PRIMARY KEY (ID_Matricula),
    FOREIGN KEY (ID_Aluno) REFERENCES USUARIO(ID_Usuario) ON DELETE CASCADE,
    FOREIGN KEY (Disciplina_Codigo) REFERENCES DISCIPLINA(Codigo) ON DELETE RESTRICT,
    FOREIGN KEY (ID_Periodo) REFERENCES PERIODO_LETIVO(ID_Periodo) ON DELETE RESTRICT,
    UNIQUE (ID_Aluno, Disciplina_Codigo, ID_Periodo)
);

CREATE TABLE AVALIACAO (
    ID_Avaliacao VARCHAR(10) NOT NULL,
    ID_Matricula VARCHAR(10) NOT NULL,
    Comentario TEXT,
    Nota_Didatica DECIMAL(3, 1),
    Nota_Material DECIMAL(3, 1),
    Nota_Relevancia DECIMAL(3, 1),
    Nota_Infraestrutura DECIMAL(3, 1),
    PRIMARY KEY (ID_Avaliacao),
    FOREIGN KEY (ID_Matricula) REFERENCES MATRICULA(ID_Matricula) ON DELETE CASCADE,
    UNIQUE (ID_Matricula)
);

CREATE TABLE MINISTRAR (
    CodigoDisciplina VARCHAR(20) NOT NULL,
    ID_Professor VARCHAR(10) NOT NULL,
    PRIMARY KEY (CodigoDisciplina, ID_Professor),
    FOREIGN KEY (CodigoDisciplina) REFERENCES DISCIPLINA(Codigo) ON DELETE CASCADE,
    FOREIGN KEY (ID_Professor) REFERENCES USUARIO(ID_Usuario) ON DELETE CASCADE
);

CREATE TABLE DISCIPLINA_CURSO (
    CodigoCurso VARCHAR(20) NOT NULL,
    CodigoDisciplina VARCHAR(20) NOT NULL,
    Tipo VARCHAR(50) NOT NULL, -- Ex: Obrigatória, Optativa
    Periodo INT,
    PRIMARY KEY (CodigoCurso, CodigoDisciplina),
    FOREIGN KEY (CodigoCurso) REFERENCES CURSO(Codigo) ON DELETE CASCADE,
    FOREIGN KEY (CodigoDisciplina) REFERENCES DISCIPLINA(Codigo) ON DELETE CASCADE
);

CREATE TABLE CURSO_REGRAS (
    CodigoCurso VARCHAR(20) NOT NULL,
    Descricao VARCHAR(255) NOT NULL,
    PRIMARY KEY (CodigoCurso, Descricao),
    FOREIGN KEY (CodigoCurso) REFERENCES CURSO(Codigo) ON DELETE CASCADE
);

CREATE TABLE CURSO_INFRAESTRUTURA (
    CodigoCurso VARCHAR(20) NOT NULL,
    Descricao VARCHAR(255) NOT NULL,
    PRIMARY KEY (CodigoCurso, Descricao),
    FOREIGN KEY (CodigoCurso) REFERENCES CURSO(Codigo) ON DELETE CASCADE
);

CREATE TABLE CURSO_PRE_REQUISITOS (
    CodigoCurso VARCHAR(20) NOT NULL,
    Codigo_Requisito VARCHAR(20) NOT NULL, -- Pode ser código de um curso ou disciplina
    Tipo VARCHAR(20) NOT NULL, -- 'Curso' ou 'Disciplina'
    PRIMARY KEY (CodigoCurso, Codigo_Requisito),
    FOREIGN KEY (CodigoCurso) REFERENCES CURSO(Codigo) ON DELETE CASCADE
);

CREATE TABLE USUARIO_UNIDADE (
    ID_Usuario VARCHAR(10) NOT NULL,
    ID_Unidade VARCHAR(10) NOT NULL,
    PRIMARY KEY (ID_Usuario, ID_Unidade),
    FOREIGN KEY (ID_Usuario) REFERENCES USUARIO(ID_Usuario) ON DELETE CASCADE,
    FOREIGN KEY (ID_Unidade) REFERENCES UNIDADE_ESCOLA(ID_Unidade) ON DELETE CASCADE
);

CREATE TABLE PERTENCER_AO_GRUPO (
    ID_Usuario VARCHAR(10) NOT NULL,
    ID_Grupo VARCHAR(10) NOT NULL,
    PRIMARY KEY (ID_Usuario, ID_Grupo),
    FOREIGN KEY (ID_Usuario) REFERENCES USUARIO(ID_Usuario) ON DELETE CASCADE,
    FOREIGN KEY (ID_Grupo) REFERENCES GRUPO_DESTINATARIOS(ID_Grupo) ON DELETE CASCADE
);

CREATE TABLE ENVIAR_PARA_USUARIO (
    ID_Mensagem VARCHAR(10) NOT NULL,
    ID_Destinatario VARCHAR(10) NOT NULL,
    Status VARCHAR(30) DEFAULT 'Enviada',
    PRIMARY KEY (ID_Mensagem, ID_Destinatario),
    FOREIGN KEY (ID_Mensagem) REFERENCES MENSAGEM(ID_Mensagem) ON DELETE CASCADE,
    FOREIGN KEY (ID_Destinatario) REFERENCES USUARIO(ID_Usuario) ON DELETE CASCADE
);

CREATE TABLE ENVIAR_PARA_GRUPO (
    ID_Mensagem VARCHAR(10) NOT NULL,
    ID_Grupo VARCHAR(10) NOT NULL,
    PRIMARY KEY (ID_Mensagem, ID_Grupo),
    FOREIGN KEY (ID_Mensagem) REFERENCES MENSAGEM(ID_Mensagem) ON DELETE CASCADE,
    FOREIGN KEY (ID_Grupo) REFERENCES GRUPO_DESTINATARIOS(ID_Grupo) ON DELETE CASCADE
);

-- =============================================================================
-- FIM DO SCRIPT DE CRIAÇÃO DA ESTRUTURA
-- =============================================================================