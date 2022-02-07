# Parte 2 - Dados da amostra

Nesta etapa, os dados utilizados serão obtidos atraves de webscraping sites de interesse e serão tratados para poderem ser inseridos no banco de dados Neo4J

## Objetivos
- [x] Definir Perguntas para serem respondidas
- [x] Criar função que suponha o genero pelo nome
- [x] Obter professores da amostra e aplicar função de gênero
- [ ] Obter pesquisas associadas aos professores
- [ ] Criação dos comandos chypher que respondam as perguntas da pesquisa

### 0 - Perguntas da pesquisa

- Como é a rede de colaboração feminida e masculina?
    - A rede feminina é semelhante a masculina visualmente?
- Avarage degree(f/m)
- Mostrar apenas pesquisadoras mulheres e apenas pesquisadores homens

### 1 - Criação das funções de gênero

Para a criação da função de identificação de generos, utiliza-se a biblioteca  [Gender-guesser](https://pypi.org/project/gender-guesser/) para passar pela amostra. Porem, muitos nomes brasileiros não eram reconhecidos pela amostra, o que deixava a margem de acertos muito baixa. Para resolver esse problema usou-se o [dataset de nomes brasileiros do Censo de 2010 classificados por generos](https://brasil.io/dataset/genero-nomes/nomes/) conforme orientado por um [tutorial](https://blog.brasil.io/2019/05/31/classificando-nomes-por-genero-usando-dados-publicos/index.html).

Com isso, a maior parte dos nomes da amostra foram classificados corretamente, tendo uma margem pequena de não-identificados, conforme mostra a tabela abaixo

#### Verificação da função de gênero nos dados da amostra

| Universidade | Total | Acertos | Erros | Não identificados |
|--------------|-------|---------|-------|-------------------|
| UFAM         |  36   |    34   |   0   |        2          |
| UFMG         |  66   |    65   |   0   |        1          |
| UFRN         |  29   |    28   |   0   |        1          |
| UnB          |  30   |    28   |   0   |        2          |
| USP          |  40   |    39   |   0   |        1          |
| Outros       |       |         |       |                   |

### 2 - Obter os participantes da amostra

Para iniciar, utiliza-se os sites de professores de pós graduação da aréa de computação das seguintes universidades: USP, UNB, UFAM, UFMG, UFRN
