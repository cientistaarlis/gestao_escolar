-- 3) Exibe todas as turmas cadastradas, relacionando cada uma à disciplina e ao professor responsável, além do horário, sala, ano e semestre

SELECT 
    t.id AS turma_id,
    d.nome AS disciplina,
    p.nome AS professor,
    t.horario,
    t.sala,
    t.ano,
    t.semestre
FROM turmas t
JOIN disciplinas d ON t.disciplina_id = d.id
JOIN professores p ON t.professor_id = p.id
ORDER BY t.ano DESC, t.semestre, t.horario;