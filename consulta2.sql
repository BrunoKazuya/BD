-- Consulta 2: Calcular a média geral de um aluno específico (considerando todas as disciplinas com nota)
SELECT
    u.Nome,
    u.Sobrenome,
    AVG(m.Nota_Final) AS Media_Geral_Notas
FROM
    Matricula m
JOIN
    Usuario u ON m.ID_Aluno = u.ID_Usuario
WHERE
    u.Nome = 'Ana' AND u.Sobrenome = 'Silva'
    AND m.Nota_Final IS NOT NULL
GROUP BY
    u.Nome, u.Sobrenome;