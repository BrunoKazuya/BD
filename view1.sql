CREATE OR REPLACE VIEW vw_QuadroDocente AS
SELECT DISTINCT
    u.Nome AS Nome_Professor,
    u.Sobrenome,
    d.Nome AS Disciplina_Ministrada,
    dep.Nome AS Departamento
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
    u.Tipo = 'Professor';

-- Exemplo de Uso da vw_QuadroDocente:
-- Para ver todos os professores e disciplinas do departamento de 'Ciências de Computação'
-- -- Visão 1: vw_QuadroDocente
-- Objetivo: Consolida a relação entre professores, as disciplinas que ministram e seus respectivos departamentos,
-- simplificando consultas administrativas sobre a alocação de docentes.
-- =============================================================================
CREATE OR REPLACE VIEW vw_QuadroDocente AS
SELECT DISTINCT
    u.Nome AS Nome_Professor,
    u.Sobrenome,
    d.Nome AS Disciplina_Ministrada,
    dep.Nome AS Departamento
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
    u.Tipo = 'Professor';

-- Exemplo de Uso da vw_QuadroDocente:
-- Para ver todos os professores e disciplinas do departamento de 'Ciências de Computação'
-- SELECT * FROM vw_QuadroDocente
-- WHERE Departamento = 'Ciências de Computação';