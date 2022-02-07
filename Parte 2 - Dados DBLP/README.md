# Parte 2 - Dados da amostra

Nesta etapa, os dados utilizados serão obtidos atraves de webscraping sites de interesse e serão tratados para poderem ser inseridos no banco de dados Neo4J

## Objetivos
- [ ] Definir Perguntas para serem respondidas
- [ ] Criar função que suponha o genero pelo nome
- [ ] Obter professores da amostra e aplicar função de gênero
- [ ] Obter pesquisas associadas aos professores
- [ ] Criação das perguntas da pesquisa

### 0 - Perguntas da pesquisa

- Como é a rede de colaboração feminida e masculina?
    - A rede feminina é semelhante a masculina visualmente?
- Avarage degree(f/m)
- Mostrar apenas pesquisadoras mulheres e apenas pesquisadores homens

### 1 - Criação das funções de gênero

Para iniciar, utiliza-se os sites de professores de pós graduação da aréa de computação das seguintes universidades: USP, UNB, UFAM, UFMG, UFRN

#### Verificação da Função de gênero

| Universidade | Total | Acertos | Erros | Não identificados |
|--------------|-------|---------|-------|-------------------|
| UFAM         |  36   |    34   |   0   |        2          |
| UFMG         |  66   |    65   |   0   |        1          |
| UFRN         |  29   |    28   |   0   |        1          |
| UnB          |  30   |    28   |   0   |        2          |
| USP          |  40   |    39   |   0   |        1          |