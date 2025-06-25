# Projeto Final - Banco de Dados para Sistema de Gestão Escolar

Este repositório contém os scripts SQL para a criação, população e consulta do banco de dados desenvolvido para o projeto final da disciplina de Bases de Dados (SCC-0240). O sistema foi projetado para gerenciar as atividades acadêmicas e administrativas de uma instituição de ensino.

## 🛠️ Pré-requisitos

Antes de começar, garanta que você tenha os seguintes softwares instalados e configurados em sua máquina:

* **PostgreSQL:** O sistema de gerenciamento de banco de dados utilizado no projeto.
* **Um Cliente PostgreSQL:** Você pode usar o cliente de linha de comando `psql` (que vem com a instalação do PostgreSQL) ou uma ferramenta com interface gráfica como [DBeaver](https://dbeaver.io/) ou [PgAdmin](https://www.pgadmin.org/).

## ⚙️ Configuração Padrão

Siga os passos abaixo para uma configuração padrão do banco de dados com um volume de dados funcional para a maioria das consultas.

### Passo 1: Criar o Banco de Dados

Primeiro, crie um novo banco de dados para o projeto. Você pode nomeá-lo.

```bash
createdb <nome_db>
```

### Passo 2: Criar a Estrutura (Tabelas e Visões)

Conecte-se ao banco de dados recém-criado (`psql -d <nome_db>`) e execute os seguintes scripts **nesta ordem**:

1.  **Crie as tabelas** com o script `createTables.sql`.
    ```sql
    -- Dentro do psql
    \i createTables.sql
    ```
2.  **Crie as visões (views)** executando cada um dos 3 scripts de visão.
    ```sql
    -- Dentro do psql
    \i view1.sql
    \i view2.sql
    \i view3.sql
    ```

### Passo 3: Popular o Banco de Dados (Carga Padrão)

Com a estrutura já criada, execute o script `dados.sql` para inserir um conjunto de registros padrão.

```sql
-- Dentro do psql
\i 'dados.sql'
```

Ao final destes passos, o banco de dados está pronto para as consultas gerais. Para a análise de desempenho dos índices, siga as instruções da próxima seção.

## 📈 Configuração para Teste de Índices (Exercício 7)

Para avaliar o impacto dos índices em um grande volume de dados, conforme solicitado no Exercício 7, siga estes passos.

**Atenção:** Estes passos devem ser executados **após o Passo 2** da configuração padrão e **em vez do Passo 3**.

### Passo 3-A: Popular com Carga Massiva de Dados

Execute o script `carga_final_completa.sql` para inserir uma quantidade massiva de registros. **Este processo pode levar vários minutos para ser concluído.**

```sql
-- Dentro do psql, conectado ao banco <nome_db>
\i 'carga_final_completa.sql'
```

### Passo 3-B: Criar os Índices

Com o grande volume de dados já inserido, execute cada um dos 3 scripts de índice. A análise de desempenho das consultas deve ser feita após este passo.

```sql
-- Dentro do psql
\i indice1.sql
\i indice2.sql
\i indice3.sql
```

## 🚀 Executando as Consultas do Projeto

Os arquivos `consulta1.sql` a `consulta7.sql` contêm as consultas desenvolvidas para demonstrar a capacidade do sistema. Para executá-las individualmente, use o seguinte comando no terminal, substituindo `consulta1.sql` pelo arquivo desejado:

```bash
psql -d <nome_db> -f consulta1.sql
```

## 📁 Estrutura do Repositório

### Scripts de Configuração
* `createTables.sql`: Cria a estrutura de todas as tabelas e suas restrições.
* `dados.sql`: Script de `INSERT` para uma **carga de dados padrão**.
* `carga_final_completa.sql`: Script de `INSERT` para um **volume massivo de dados**, usado para a análise de desempenho dos índices (Exercício 7).

### Scripts de Funcionalidades
* `view1.sql`, `view2.sql`, `view3.sql`: Cada arquivo contém a criação de uma das visões (views) do projeto.
* `indice1.sql`, `indice2.sql`, `indice3.sql`: Cada arquivo contém a criação de um dos índices de otimização.

### Scripts de Consulta
* `consulta1.sql`
* `consulta2.sql`
* `consulta3.sql`
* `consulta4.sql`
* `consulta5.sql`
* `consulta6.sql`
* `consulta7.sql`
