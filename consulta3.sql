-- Consulta 3: Contar o número de alunos ativos em cada disciplina no 1º Semestre de 2025
SELECT
    d.Nome AS Nome_Disciplina,
    COUNT(m.ID_Aluno) AS Numero_de_Alunos_Ativos
FROM
    Matricula m
JOIN
    Disciplina d ON m.Disciplina_Codigo = d.Codigo
WHERE
    m.ID_Periodo = '2025-1S' AND m.Status_Matricula = 'Ativa'
GROUP BY
    d.Nome
ORDER BY
    Numero_de_Alunos_Ativos DESC;