-- ============================================================
-- CONSULTA DOS ALUNOS
-- ============================================================

-- 1) Listar alunos, disciplina e professor (todas as matrículas, sem filtro complexo)
SELECT 
    a.nome AS aluno,
    d.nome AS disciplina,
    p.nome AS professor
FROM matriculas m
JOIN alunos a ON m.aluno_id = a.id
JOIN turmas t ON m.turma_id = t.id
JOIN disciplinas d ON t.disciplina_id = d.id
JOIN professores p ON t.professor_id = p.id
ORDER BY a.nome;
