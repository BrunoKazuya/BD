-- =============================================================================
-- Visão 2: vw_DesempenhoPorDisciplina
-- Objetivo: Gera um relatório analítico com estatísticas de desempenho (aprovados, reprovados, média, etc.) por disciplina.
-- Utilidade: Ferramenta gerencial para coordenadores analisarem o rendimento das turmas.
-- =============================================================================
CREATE OR REPLACE VIEW vw_DesempenhoPorDisciplina AS
SELECT
    d.Nome AS Nome_Disciplina,
    COUNT(m.ID_Aluno) AS Total_Alunos_Finalizados,
    COUNT(m.ID_Aluno) FILTER (WHERE m.Status_Matricula = 'Concluída') AS Aprovados,
    COUNT(m.ID_Aluno) FILTER (WHERE m.Status_Matricula = 'Reprovada') AS Reprovados,
    round(AVG(m.Nota_Final), 2) AS Media_Geral_Turma,
    round(
        (COUNT(m.ID_Aluno) FILTER (WHERE m.Status_Matricula = 'Concluída')) * 100.0 / COUNT(m.ID_Aluno), 2
    ) || '%' AS Taxa_de_Aprovacao
FROM
    Matricula m
JOIN
    Disciplina d ON m.Disciplina_Codigo = d.Codigo
WHERE
    m.Status_Matricula IN ('Concluída', 'Reprovada')
GROUP BY
    d.Nome
ORDER BY
    Media_Geral_Turma DESC;


-- Exemplo de Uso da vw_DesempenhoPorDisciplina:
-- Para encontrar disciplinas com taxa de aprovação abaixo de 80%
-- SELECT * FROM vw_DesempenhoPorDisciplina
-- WHERE (trim('%' from Taxa_de_Aprovacao)::numeric) < 80;