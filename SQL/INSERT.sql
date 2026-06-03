-- ============================================================
-- INSERÇÃO DE DADOS DE 
-- ============================================================

-- Departamentos
INSERT INTO departamentos (nome, descricao) VALUES
('Ciências Exatas', 'Matemática, Física, Computação'),
('Ciências Humanas', 'História, Geografia, Filosofia');

-- Professores
INSERT INTO professores (nome, data_contratacao, email, telefone, departamento_id) VALUES
('Dr. Carlos Alberto', '2025-03-10', 'carlos.alberto@escola.edu', '(79) 98765-4321', 1),
('Profa. Mariana Silva', '2022-02-15', 'mariana.silva@escola.edu', '(11) 91234-5678', 2);

-- Alunos
INSERT INTO alunos (nome, data_nascimento, data_matricula, email, telefone) VALUES
('João Pedro Santos', '2006-05-12', '2024-01-20', 'joao.santos@aluno.edu', '(71) 99999-1111'),
('Ana Beatriz Lima', '2007-08-25', '2024-01-20', 'ana.lima@aluno.edu', '(11) 98888-2222'),
('Lucas Martins', '2006-11-02', '2024-01-21', 'lucas.martins@aluno.edu', '(75) 97777-3333');

-- Disciplinas
INSERT INTO disciplinas (nome, descricao, creditos, departamento_id) VALUES
('Banco de Dados', 'Modelagem, SQL, administração', 4, 1),
('Programação Web', 'Do período colonial à república', 2, 2);

-- Turmas (2024/1)
INSERT INTO turmas (disciplina_id, professor_id, ano, semestre, horario, sala) VALUES
(1, 1, 2024, 1, 'Seg/Qua 19:00-21:00', 'Lab 3'),
(2, 2, 2024, 1, 'Ter/Qui 18:00-19:30', 'Sala 12');

-- Matrículas
INSERT INTO matriculas (aluno_id, turma_id, data_matricula, status) VALUES
(1, 1, '2022-01-25', 'matriculado'),
(2, 1, '2026-01-26', 'matriculado'),
(3, 2, '2024-01-27', 'matriculado'),
(1, 2, '2023-02-01', 'matriculado'); -- João também em História

-- Notas (alguns alunos já possuem avaliações)
INSERT INTO notas (matricula_id, tipo_avaliacao, nota, nota_maxima) VALUES
-- Matrícula 1 (João em BD)
(1, 'AV1', 8.5, 10),
(1, 'AV2', 7.0, 10),
-- Matrícula 2 (Ana em BD)
(2, 'AV1', 9.0, 10),
(2, 'AV2', 8.0, 10),
-- Matrícula 3 (Lucas em História)
(3, 'AV1', 6.5, 10),
(3, 'Trabalho', 8.0, 10),
-- Matrícula 4 (João em História)
(4, 'AV1', 5.0, 10);