-- Criação do Banco de Dados e Tabelas

-- Cria o banco de dados 'escola'
CREATE DATABASE escola;

-- Utiliza o banco de dados 'escola'
USE escola;

-- Cria a tabela 'aluno' para armazenar informações sobre os estudantes
CREATE TABLE aluno( 
    id_aluno INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(60) NOT NULL,
    cpf VARCHAR(25) NOT NULL,
    email VARCHAR(50) NOT NULL,
    telefone VARCHAR(25) NOT NULL,
    endereco_completo VARCHAR(100) NOT NULL,
    status VARCHAR(20) NOT NULL
);

-- Cria a tabela 'turma' para armazenar informações sobre as turmas
CREATE TABLE turma(
    id_turma INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    numero_sala INT(6) NOT NULL,
    turno VARCHAR(20) NOT NULL
);

-- Cria a tabela 'curso' para armazenar informações sobre os cursos
CREATE TABLE curso(
    id_curso INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome_curso VARCHAR(200) NOT NULL,
    data_inicio DATE NOT NULL,
    data_termino DATE NOT NULL
);

-- Cria a tabela 'modulo' para armazenar informações sobre os módulos
CREATE TABLE modulo(
    id_modulo INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    data_inicio DATE NOT NULL,
    data_termino DATE NOT NULL
);

-- Cria a tabela 'disciplina' para armazenar informações sobre as disciplinas
CREATE TABLE disciplina(
    id_disciplina INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome_disciplina VARCHAR(70) NOT NULL
);

-- Cria a tabela 'facilitador' para armazenar informações sobre os facilitadores
CREATE TABLE facilitador(
    id_facilitador INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(60) NOT NULL,
    cpf VARCHAR(25) NOT NULL,
    email VARCHAR(50) NOT NULL,
    telefone VARCHAR(25) NOT NULL,
    endereco_completo VARCHAR(255) NOT NULL
);

-- Adiciona coluna 'id_turma' à tabela 'aluno' e cria a chave estrangeira associada
ALTER TABLE aluno
ADD COLUMN id_turma INT(11) NOT NULL,
ADD CONSTRAINT fk_id_turma FOREIGN KEY (id_turma) REFERENCES turma(id_turma);

-- Adiciona coluna 'id_curso' à tabela 'turma' e cria a chave estrangeira associada
ALTER TABLE turma
ADD COLUMN id_curso INT(11) NOT NULL,
ADD CONSTRAINT fk_id_curso_turma FOREIGN KEY (id_curso) REFERENCES curso(id_curso);

-- Adiciona colunas 'id_modulo' e 'id_facilitador' à tabela 'disciplina' e cria as chaves estrangeiras associadas
ALTER TABLE disciplina
ADD COLUMN id_modulo INT(11) NOT NULL,
ADD CONSTRAINT fk_id_modulo FOREIGN KEY (id_modulo) REFERENCES modulo(id_modulo);

ALTER TABLE disciplina
ADD COLUMN id_facilitador INT(11) NOT NULL,
ADD CONSTRAINT fk_id_facilitador FOREIGN KEY (id_facilitador) REFERENCES facilitador(id_facilitador);

-- Adiciona coluna 'id_curso' à tabela 'modulo' e cria a chave estrangeira associada
ALTER TABLE modulo
ADD COLUMN id_curso INT(11) NOT NULL,
ADD CONSTRAINT fk_id_curso_modulo FOREIGN KEY (id_curso) REFERENCES curso(id_curso);

-- Cria a tabela 'log_estudante' para armazenar registros de atualização de status de estudantes
CREATE TABLE log_estudante (
    id_log INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    id_aluno INT(11) NOT NULL,
    data_atualizacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    novo_status VARCHAR(20) NOT NULL,
    FOREIGN KEY (id_aluno) REFERENCES aluno(id_aluno)
);
