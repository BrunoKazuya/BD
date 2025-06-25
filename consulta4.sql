-- Consulta 4: Listar os professores do departamento de 'Ciências de Computação' (SCC) e as disciplinas que ministram
SELECT DISTINCT
    u.Nome AS Nome_Professor,
    u.Sobrenome,
    d.Nome AS Disciplina_Ministrada
FROM
    Usuario u
JOIN
    Ministrar mi ON u.ID_Usuario = mi.ID_Professor
JOIN
    Disciplina d ON mi.CodigoDisciplina = d.Codigo
JOIN
    Disciplina_Curso dc ON d.Codigo = dc.CodigoDisciplina
JOIN
    Curso c ON dc.CodigoCurso = c.Codigo
JOIN
    Departamento dep ON c.CodigoDepartamento = dep.Codigo
WHERE
    dep.Codigo = 'SCC' AND u.Tipo = 'Professor'
ORDER BY
    Nome_Professor, Sobrenome, Disciplina_Ministrada;