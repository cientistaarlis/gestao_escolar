# 📚 Sistema de Gestão Escolar - Comparação SQL vs NoSQL

Projeto acadêmico da Pós Graduação do IFSP que implementa um sistema de gestão escolar em dois paradigmas de banco de dados: **Relacional (MySQL)** e **Não Relacional (MongoDB)**, comparando modelagem, consultas e abordagens.

---

## 🎯 Objetivo

Demonstrar na prática as diferenças entre modelagem relacional e documental aplicadas a um cenário real de gestão acadêmica, incluindo:
- Cadastro de alunos, professores e departamentos
- Gerenciamento de disciplinas e turmas
- Sistema de matrículas e notas
- Cálculo de médias e relatórios

---

## 🗂️ Estrutura do Projeto
gestao-escolar-db/
├── README.md
├── sql/
│   ├── 01_create_tables.sql
│   ├── 02_insert_data.sql
│   ├── 03_select_alunos.sql
│   ├── 04_select_prof_horario_sala.sql
│   ── 05_select_alunos_media.sql
── mongodb/
│   ├── collections/
│   │   ├── alunos.json
│   │   ├── departamentos.json
│   │   ├── disciplinas.json
│   │   ├── matriculas.json
│   │   ├── notas.json
│   │   ├── professores.json
│   │   └── turmas.json
│   └── queries/
│       ├── 01_turmas_disciplina_professor.js
│       ├── 02_media_notas_aluno.js
│       └── 03_turmas_professor_horario.js
└── screenshots/
    ├── mysql/
    │   ├── schema_tables.png
    │   ├── select_alunos.png
    │   ├── select_prof_horario_sala.png
    │   └── select_alunos_media.png
    └── mongodb/
        ├── collections_structure.png
        ├── query_turmas_disciplina.png
        ├── query_media_notas.png
        └── query_turmas_professor.png

---

## 📋 Pré-requisitos

- MySQL 
- MongoDB 5.0+
- MongoDB Compass 
- MySQL Workbench 

---

## ⚖️ Vantagens e Desvantagens

### ✅ SQL (MySQL)

| **Vantagens** | **Desvantagens** |
|:--------------|:-----------------|
| ✅ Integridade ACID garantida | ❌ Rigidez de schema (ALTER TABLE custoso) |
| ✅ Consultas complexas mais simples (JOIN) | ❌ Escalabilidade vertical limitada |
| ✅ Constraints nativas (CHECK, UNIQUE) | |
| ✅ Ideal para relatórios e BI | |

### 🍃 NoSQL (MongoDB)

| **Vantagens** | **Desvantagens** |
|:--------------|:-----------------|
| ✅ Schema flexível (evolução fácil) | ❌ Sem integridade referencial nativa |
| ✅ Performance de leitura (dados aninhados) | ❌ Queries complexas verbosas ($lookup múltiplos) |
| ✅ Escalabilidade horizontal nativa | ❌ Transações multi-documento complexas |

---

### 🔍 Comparativo Direto

| Critério | MySQL | MongoDB |
|:---------|:------|:--------|
| **Integridade** | ⭐⭐⭐⭐⭐ | ⭐⭐ |
| **Flexibilidade** | ⭐⭐ | ⭐⭐⭐⭐⭐ |
| **Consultas Complexas** | ⭐⭐⭐⭐⭐ | ⭐⭐⭐ |
| **Escalabilidade** | ⭐⭐⭐ | ⭐⭐⭐⭐⭐ |
| **Facilidade de Uso** | ⭐⭐⭐⭐ | ⭐⭐⭐ |

---
### 📊 Modelo Recomendado para Produção

> **💡 Recomendação:** SQL (MySQL)

**Justificativa Técnica:**

1. **🔒 Natureza dos Dados (Transacionais e Críticos)**  
   Um sistema acadêmico lida com dados oficiais, históricos escolares, notas e vínculos legais. A integridade referencial e transações ACID são inegociáveis.

2. **📈 Complexidade de Consultas (BI e Relatórios)**  
   O coração de um sistema acadêmico são os relatórios. O modelo relacional cruza tabelas normalizadas de forma eficiente.

3. **⚙️ Restrições de Negócio**  
   SQL permite embutir regras de negócio no banco (CHECK constraints), atuando como última linha de defesa contra dados corrompidos.
