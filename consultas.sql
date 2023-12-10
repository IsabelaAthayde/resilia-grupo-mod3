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
INNER JOIN aluno ON turma.id_turma = aluno.id_turma
GROUP BY turma.id_turma
HAVING turma.id_turma = aluno.id_turma
)
) AS porcentagem_evasao
FROM turma 
INNER JOIN aluno ON turma.id_turma = aluno.id_turma
WHERE aluno.status = 'Evasão'
GROUP BY turma.numero_sala, turma.turno;
