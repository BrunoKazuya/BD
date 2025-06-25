-- Consulta 7: Encontrar cursos que não tiveram alunos matriculados no último período letivo (2025-1S)
SELECT
    c.Codigo AS Codigo_Curso,
    c.Nome AS Nome_Curso
FROM
    Curso c
LEFT JOIN
    Disciplina_Curso dc ON c.Codigo = dc.CodigoCurso
LEFT JOIN
    Matricula m ON dc.CodigoDisciplina = m.Disciplina_Codigo AND m.ID_Periodo = '2025-1S'
GROUP BY
    c.Codigo, c.Nome
HAVING
    COUNT(m.ID_Matricula) = 0
ORDER BY
    Nome_Curso;