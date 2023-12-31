USE escola;

-- Retorna o total de estudantes
SELECT COUNT(*) AS total_estudantes
FROM aluno;

-- Retorna o numero de turmas em que um facilitador dar aula
SELECT facilitador.nome, facilitador.id_facilitador, COUNT(*) AS numero_turmas
FROM facilitador
JOIN disciplina ON facilitador.id_facilitador = disciplina.id_facilitador
GROUP BY facilitador.id_facilitador
HAVING COUNT(*) > 1;

-- Retorna a porcentagem de evasão de alunos 
CREATE VIEW porcentagem_evasao AS
SELECT  turma.id_turma AS id_turma ,turma.numero_sala, turma.turno,
FLOOR((COUNT(aluno.id_aluno) * 100) / (SELECT  COUNT(*)
FROM turma
INNER JOIN aluno ON aluno.id_turma = turma.id_turma
GROUP BY turma.id_turma
HAVING turma.id_turma = aluno.id_turma 
)
) AS porcentagem_evasao
FROM turma 
INNER JOIN aluno ON turma.id_turma = aluno.id_turma
WHERE aluno.status = 'Evasão'
GROUP BY turma.id_turma;

-- Criação do trigger aluno_status_trigger

DELIMITER //

CREATE TRIGGER aluno_status_trigger
AFTER UPDATE ON aluno FOR EACH ROW
BEGIN
    IF NEW.status <> OLD.status THEN
        INSERT INTO log_estudante (id_aluno, data_atualizacao, novo_status)
        VALUES (NEW.id_aluno, NOW(), NEW.status);
    END IF;
END //

-- Mostra a definição do trigger associado à tabela aluno na base de dados escola
SHOW CREATE TRIGGER escola.aluno_status_trigger;

-- Atualização de um registro na tabela aluno
UPDATE aluno SET status = 'Evasão' WHERE id_aluno = 1;
select * from log_estudante;

-- Consulta para obter informações sobre os alunos que iniciaram o curso após 2023-01-01
SELECT aluno.nome, turma.numero_sala, curso.nome_curso, curso.data_inicio
FROM aluno
INNER JOIN turma ON aluno.id_turma = turma.id_turma
INNER JOIN curso ON turma.id_curso = curso.id_curso
WHERE curso.data_inicio > '2023-01-01'
ORDER BY curso.data_inicio, aluno.nome;

-- Seleciona todas as informações dos módulos e conta o número de disciplinas associadas a cada módulo
SELECT
    modulo.*,
    COUNT(disciplina.id_disciplina) AS num_disciplinas
FROM
    modulo
LEFT JOIN
    disciplina ON modulo.id_modulo = disciplina.id_modulo
GROUP BY
    modulo.id_modulo;
