-- =============================================================================
-- Visão 3: vw_HistoricoMatriculas
-- Objetivo: Fornece um histórico acadêmico detalhado e legível, unindo matrículas com os nomes de alunos, disciplinas e períodos.
-- Utilidade: Visão operacional de alta demanda para gerar históricos escolares e listas de turmas.
-- =============================================================================
CREATE OR REPLACE VIEW vw_HistoricoMatriculas AS
SELECT
    m.ID_Matricula,
    u.ID_Usuario,
    u.Nome AS Nome_Aluno,
    u.Sobrenome,
    d.Nome AS Nome_Disciplina,
    p.Descricao AS Periodo,
    m.Status_Matricula,
    m.Nota_Final,
    m.Data_Matricula
FROM
    Matricula m
JOIN
    Usuario u ON m.ID_Aluno = u.ID_Usuario
JOIN
    Disciplina d ON m.Disciplina_Codigo = d.Codigo
JOIN
    Periodo_Letivo p ON m.ID_Periodo = p.ID_Periodo;


-- Exemplo de Uso da vw_HistoricoMatriculas:
-- Para gerar o histórico completo da aluna 'Ana Silva' de forma simples
-- SELECT Periodo, Nome_Disciplina, Status_Matricula, Nota_Final
-- FROM vw_HistoricoMatriculas
-- WHERE Nome_Aluno = 'Ana' AND Sobrenome = 'Silva'
-- ORDER BY Periodo;