-- Consulta 1: Listar alunos matriculados em 'Bases de Dados' no 1º Semestre de 2025
SELECT
    u.Nome,
    u.Sobrenome,
    d.Nome AS Nome_Disciplina,
    m.Status_Matricula
FROM
    Matricula m
JOIN
    Usuario u ON m.ID_Aluno = u.ID_Usuario
JOIN
    Disciplina d ON m.Disciplina_Codigo = d.Codigo
WHERE
    d.Nome = 'Bases de Dados' AND m.ID_Periodo = '2025-1S';