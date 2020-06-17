# Projeto de Entrevista com TAKI Rails

Obrigado pelo seu interesse em fazer parte da equipe TAKI. Estamos empolgados por você estar pensando em se juntar à nossa incrível equipe!

Este projeto Rails é uma versão simples do Taki:
- Existe User
- O User tem um Business
- Business possui uma lista de Items
- O User pode criar/atualizar/excluir os Items de Business

## A Fazer

Por favor, adicione as seguintes funcionalidades ao projeto:

1. [TAKI-001] Conclua a implementação de Criar/Atualizar/Excluir Items
2. [TAKI-002] Conclua a implementação do registro de User (e Business associado ao User)
3. [TAKI-003] Adicione os casos de teste para todos os models e controllers
4. [TAKI-004][Extra Credit] Melhore o modelo de autenticação simples


Então você precisará criar uma solicitação pull request na `master`. Deve haver pelo menos os últimos 3 commits (crédito extra, se você fizer isso).

A ambiguidade do projeto é intencional. Queremos que você faça perguntas ou use seu bom senso.

*Certifique-se de incluir também os testes de unidade para os models e controllers e documente adequadamente seu código.*

## Como configurar

1. `bundle install`
2. `rake db:migrate`
2. `rake db:seed`
3. `rails s`

## Credenciais

```
Username: john@taki.com, Password: 000000
Username: jane@taki.com, Password: 111111
```

## Banco de Dados

```
List of relations
Schema |       Name        | Type  |  Owner
--------+-------------------+-------+----------
public | businesses        | table | postgres
public | items             | table | postgres
public | schema_migrations | table | postgres
public | users             | table | postgres
```
