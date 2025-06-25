-- Consulta 6: Encontrar alunos com nota final acima da média geral no período 2024-2S
SELECT
    u.Nome,
    u.Sobrenome,
    d.Nome AS Nome_Disciplina,
    m.Nota_Final
FROM
    Matricula m
JOIN
    Usuario u ON m.ID_Aluno = u.ID_Usuario
JOIN
    Disciplina d ON m.Disciplina_Codigo = d.Codigo
WHERE
    m.ID_Periodo = '2024-2S' AND m.Nota_Final > (
        SELECT AVG(Nota_Final)
        FROM Matricula
        WHERE ID_Periodo = '2024-2S' AND Nota_Final IS NOT NULL
    )
ORDER BY
    m.Nota_Final DESC;