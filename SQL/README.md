
---

## Implementação Relacional (MySQL)

### Modelagem

O sistema utiliza **7 tabelas** normalizadas:

| Tabela | Descrição |
|--------|-----------|
| `alunos` | Cadastro de alunos |
| `professores` | Cadastro de professores |
| `departamentos` | Departamentos acadêmicos |
| `disciplinas` | Cursos/disciplinas oferecidas |
| `turmas` | Turmas por ano/semestre |
| `matriculas` | Vínculo aluno-turma |
| `notas` | Avaliações por matrícula |

### Scripts SQL

#### 1. Criação das Tabelas
```sql
-- Ver arquivo: CREATE_TABLES.sql
-- Inclui: Primary Keys, Foreign Keys, Constraints (CHECK, UNIQUE, NOT NULL)
