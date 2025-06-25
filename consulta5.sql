-- Consulta 5: Listar professores que ministram mais de uma disciplina e quais são elas
SELECT
    u.Nome,
    u.Sobrenome,
    d.Nome AS Disciplina_Ministrada
FROM
    Usuario u
JOIN
    Ministrar mi ON u.ID_Usuario = mi.ID_Professor
JOIN
    Disciplina d ON mi.CodigoDisciplina = d.Codigo
WHERE
    u.ID_Usuario IN (
        -- Subconsulta: Encontra os IDs dos professores que aparecem mais de uma vez na tabela Ministrar
        SELECT
            ID_Professor
        FROM
            Ministrar
        GROUP BY
            ID_Professor
        HAVING
            COUNT(CodigoDisciplina) > 1
    )
ORDER BY
    u.Nome, u.Sobrenome, Disciplina_Ministrada;