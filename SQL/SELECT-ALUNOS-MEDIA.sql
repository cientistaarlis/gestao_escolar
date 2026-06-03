-- ============================================================
-- CONSULTA DOS ALUNOS - MÉDIA
-- ============================================================

-- 2) Média de notas por aluno (considera todas as avaliações de cada matrícula)
SELECT 
    a.nome AS aluno,
    d.nome AS disciplina,
    AVG(n.nota) AS media_notas
FROM notas n
JOIN matriculas m ON n.matricula_id = m.id
JOIN alunos a ON m.aluno_id = a.id
JOIN turmas t ON m.turma_id = t.id
JOIN disciplinas d ON t.disciplina_id = d.id
GROUP BY a.id, a.nome, d.id, d.nome
ORDER BY a.nome, media_notas DESC;
