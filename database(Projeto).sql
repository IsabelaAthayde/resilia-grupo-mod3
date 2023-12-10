CREATE DATABASE escola;
USE escola;

CREATE TABLE aluno( 
id_aluno INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
nome VARCHAR(60) NOT NULL,
cpf VARCHAR(25) NOT NULL,
email VARCHAR(50) NOT NULL,
telefone VARCHAR(25) NOT NULL,
endereco_completo VARCHAR(100) NOT NULL,
status VARCHAR(20) NOT NULL
);

CREATE TABLE turma(
id_turma INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
numero_sala INT(6) NOT NULL,
turno VARCHAR (20) NOT NULL
);

CREATE TABLE curso(
id_curso INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
nome_curso VARCHAR(200) NOT NULL,
data_inicio DATE NOT NULL,
data_termino DATE NOT NULL
);

CREATE TABLE modulo(
id_modulo INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
data_inicio DATE NOT NULL,
data_termino DATE NOT NULL
);

CREATE TABLE disciplina(
id_disciplina INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
nome_disciplina VARCHAR(70) NOT NULL
);

CREATE TABLE facilitador(
id_facilitador INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
nome VARCHAR(60) NOT NULL,
cpf VARCHAR(25) NOT NULL,
email VARCHAR(50) NOT NULL,
telefone VARCHAR(25) NOT NULL,
endereco_completo VARCHAR(255) NOT NULL
);

ALTER TABLE aluno
ADD COLUMN id_turma INT(11) NOT NULL,
ADD CONSTRAINT fk_id_turma FOREIGN KEY (id_turma) REFERENCES turma(id_turma);

ALTER TABLE turma
ADD COLUMN id_curso INT(11) NOT NULL,
ADD CONSTRAINT fk_id_curso_turma FOREIGN KEY (id_curso) REFERENCES curso(id_curso);

ALTER TABLE disciplina
ADD COLUMN id_modulo INT(11) NOT NULL,
ADD CONSTRAINT fk_id_modulo FOREIGN KEY (id_modulo) REFERENCES modulo(id_modulo);

ALTER TABLE disciplina
ADD COLUMN id_facilitador INT(11) NOT NULL,
ADD CONSTRAINT fk_id_facilitador FOREIGN KEY (id_facilitador) REFERENCES facilitador(id_facilitador);

ALTER TABLE modulo
ADD COLUMN id_curso INT(11) NOT NULL,
ADD CONSTRAINT fk_id_curso_modulo FOREIGN KEY (id_curso) REFERENCES curso(id_curso);

CREATE TABLE log_estudante (
    id_log INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    id_aluno INT(11) NOT NULL,
    data_atualizacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    novo_status VARCHAR(20) NOT NULL,
    FOREIGN KEY (id_aluno) REFERENCES aluno(id_aluno)
);
