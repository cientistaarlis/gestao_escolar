-- ============================================================
-- CRIAÇÂO DAS TABELAS
-- ============================================================

-- 1. Departamentos
CREATE TABLE departamentos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL UNIQUE,
    descricao TEXT
);

-- 2. Professores
CREATE TABLE professores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(120) NOT NULL,
    data_contratacao DATE NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    telefone VARCHAR(20),
    departamento_id INT NOT NULL,
    FOREIGN KEY (departamento_id) REFERENCES departamentos(id) ON DELETE RESTRICT
);

-- 3. Alunos
CREATE TABLE alunos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(120) NOT NULL,
    data_nascimento DATE NOT NULL,
    data_matricula DATE NOT NULL DEFAULT (CURRENT_DATE),
    email VARCHAR(100) NOT NULL UNIQUE,
    telefone VARCHAR(20)
);

-- 4. Disciplinas
CREATE TABLE disciplinas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    creditos INT NOT NULL CHECK (creditos > 0),
    departamento_id INT NOT NULL,
    FOREIGN KEY (departamento_id) REFERENCES departamentos(id) ON DELETE RESTRICT
);

-- 5. Turmas
CREATE TABLE turmas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    disciplina_id INT NOT NULL,
    professor_id INT NOT NULL,
    ano INT NOT NULL CHECK (ano >= 2000),
    semestre INT NOT NULL CHECK (semestre IN (1, 2)),
    horario VARCHAR(50),
    sala VARCHAR(30),
    FOREIGN KEY (disciplina_id) REFERENCES disciplinas(id) ON DELETE RESTRICT,
    FOREIGN KEY (professor_id) REFERENCES professores(id) ON DELETE RESTRICT,
    UNIQUE (disciplina_id, ano, semestre, professor_id, horario, sala)
);

-- 6. Matrículas
CREATE TABLE matriculas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    aluno_id INT NOT NULL,
    turma_id INT NOT NULL,
    data_matricula DATE NOT NULL DEFAULT (CURRENT_DATE),
    status VARCHAR(15) NOT NULL DEFAULT 'matriculado'
        CHECK (status IN ('matriculado', 'trancado', 'concluido')),
    FOREIGN KEY (aluno_id) REFERENCES alunos(id) ON DELETE CASCADE,
    FOREIGN KEY (turma_id) REFERENCES turmas(id) ON DELETE CASCADE,
    UNIQUE (aluno_id, turma_id)
);

-- 7. Notas
CREATE TABLE notas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    matricula_id INT NOT NULL,
    tipo_avaliacao VARCHAR(20) NOT NULL,
    nota DECIMAL(5,2) NOT NULL CHECK (nota >= 0),
    nota_maxima DECIMAL(5,2) NOT NULL CHECK (nota_maxima > 0),
    FOREIGN KEY (matricula_id) REFERENCES matriculas(id) ON DELETE CASCADE,
    CHECK (nota <= nota_maxima)
);