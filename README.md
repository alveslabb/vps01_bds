# Atendimento a Chamados

Banco de dados desenvolvido para um sistema de **atendimento a chamados de TI**.

O banco registra os usuários que solicitam atendimento, os técnicos responsáveis, as categorias dos chamados, os chamados abertos e o histórico dos atendimentos.

## Tabelas

### Usuário

| Campo        | Descrição                |
| ------------ | ------------------------ |
| id           | Identificação do usuário |
| nome         | Nome do usuário          |
| email        | Email do usuário         |
| telefone     | Telefone do usuário      |
| departamento | Departamento do usuário  |
| carga        | Carga horária            |
| status       | Situação do usuário      |

### Chamado

| Campo           | Descrição                   |
| --------------- | --------------------------- |
| id              | Identificação do chamado    |
| título          | Título do chamado           |
| descrição       | Descrição do problema       |
| data_abertura   | Data de abertura            |
| data_fechamento | Data de fechamento          |
| status          | Situação do chamado         |
| prioridade      | Prioridade do chamado       |
| id_usuario      | Usuário que abriu o chamado |
| id_categoria    | Categoria do chamado        |
| id_tecnico      | Técnico responsável         |

### Técnico

| Campo         | Descrição                |
| ------------- | ------------------------ |
| id            | Identificação do técnico |
| nome          | Nome do técnico          |
| email         | Email do técnico         |
| especialidade | Especialidade do técnico |
| status        | Situação do técnico      |

### Categoria

| Campo     | Descrição                  |
| --------- | -------------------------- |
| id        | Identificação da categoria |
| nome      | Nome da categoria          |
| descrição | Descrição da categoria     |

Exemplos:

* Hardware
* Software
* Rede
* Acesso

### Histórico/Comentários

| Campo      | Descrição                              |
| ---------- | -------------------------------------- |
| id         | Identificação do histórico             |
| id_chamado | Chamado relacionado                    |
| id_usuario | Usuário relacionado                    |
| data_hora  | Data e hora do registro                |
| descrição  | Descrição do comentário ou atualização |
| tipo       | Tipo do registro                       |

## Relacionamentos

| Tabela              | Relacionamento                                         |
| ------------------- | ------------------------------------------------------ |
| Usuário → Chamado   | Um usuário pode abrir vários chamados                  |
| Técnico → Chamado   | Um técnico pode atender vários chamados                |
| Categoria → Chamado | Uma categoria pode possuir vários chamados             |
| Chamado → Histórico | Um chamado pode possuir vários registros no histórico  |
| Usuário → Histórico | Um usuário pode realizar vários registros no histórico |

## Tecnologias utilizadas

* MySQL
* SQL
* Visual Studio Code
* Draw.io
* Excel

## Projeto

**Desafio Tema 01 - Atendimento a Chamados**

Desenvolvido para a disciplina de **Banco de Dados**.
