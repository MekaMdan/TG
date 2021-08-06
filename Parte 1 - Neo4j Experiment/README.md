# Parte 1 - Neo4j Experiment

![Neo4J logo](https://dist.neo4j.com/wp-content/uploads/20210423110631/neo4j-new-logo-2021.jpg.png)

## Objetivo
Nesta etapa, o objetivo é entender o banco de dados Neo4j, que é um banco de dados não relacional (NoSQL) que usa estruturas de grafos. Para isto, será criado um banco de dados seguindo os [tutoriais dados pelo proprio site do Neo4J](https://neo4j.com/developer/cypher/guide-cypher-basics/).
O importante é que no final, os seguintes conhecimentos sejam adquiridos:
- [ ] Criação de BD com Neo4J
- [x] Modo em que cada Entidade é representado
- [x] Modo em que cada Relação é representado
- [ ] Conseguir explicar o processo e o geral sobre Neo4J
- [ ] Modo que propriedades das entidades é representado

### Instalação
A instalação do Neo4J se encontra no seguinte [link](https://neo4j.com/download/). Antes de fazer o download, precisa preencher o formulario e o download se inicia automaticamente. Também é disponibilizado um pdf do livro "Graph Databases"

### Neo4j
Para mexer com Neo4J, vê-se a necessidade de aprender Cypher
#### Cypher
Cypher é a linguagem de query de grafo utilizada pelo Neo4j. Uma query cypher tem a seguinte aparencia
```
Match(m:Movie) where m.release > 2000 Return m limit 5
```
Esta query recupera todos os filmes no banco de dados que lançaram depois do ano 2000, limitando o resultado a 5 filmes

Com esta database tutorial de filmes, testaremos alguns exercicíos de criação de query

1. Criar query que recupera todos os filmes lançados após o ano de 2005
    ```
    Match(m:Movie) where m.released > 2005 RETURN m
    ```

2. Criar query que retorna a quantidade de filmes lançados depois do ano de 2005
    ```
    Match(m:Movie) where m.released > 2005 RETURN count(m)
    ```
Logo, podemos entender que o comando MATCH serve para buscar um dado no db. Logo, a forma basica de MATCH é a seguinte:
```
    MATCH <pattern>
    WHERE <conditions>
    RETURN <expressions>        
```


### Nós e Relações
As estruturas do banco de dados são representadas atraves de nós e de relações entre os nós

![Schema](./imagens/schema.svg)

#### Nós
Nós representam entidades. Um nó seria similar a uma fileira em um banco de dados relacional.
No projeto tutorial de Neo4j (*Movies Project*) temos dois nós, o de Person e o de Movies. Em cypher query, um nó é contido entre parênteses - como `(p:Person)`, onde p é a variável e Person é o nó que está sendo referido
#### Relações
Dois nós podem estar conectados com uma relação. No caso do projeto tutorial, Person se relaciona com Movie atraves das relações *ACTED_IN*, *REVIEWED*, *PRODUCED*, *WROTE* e *DIRECTED*.
Em cypher query, relações são contidas em colchetes, como `[w:WORKS_FOR]`, onde w é uma variável e *WORKS_FOR* é o tipo de relação que esta está se referindo.
Dois nós podem estar conectados por mais de uma relação. 

Uma busca na database por relacionamento teria a seguinte aparencia:
```
    MATCH (p:Person)-[d:DIRECTED]-(m:Movie) where m.released > 2010 RETURN p,d,m
```
Esta query tem como objetivo retornar todas as pessoas que dirigiram um filme que lançou depois de 2010.
Tendo isso em mente, testaremos alguns exercicios de query:
1. Query que retorne todas as pessoas que atuaram em um filme lançado depois de 2010
    ```
    MATCH (p:Person)-[a:ACTED_IN]-(m:Movie) where m.released > 2010 RETURN p,a,m
    ```
### Labels
Nas queries de cypher, Labes são prefixadas com dois pontos, como :Person ou :ACTED_IN.
Para atribuir um label de nó para uma variável basta prefixar a variável a Label, como (p:Person), que significa que p indica nós com a label de Person.

Labels são usados quando se quer realizar operações apemas em tipos específicos de nós.
Uma operação do tipo
```
MATCH (p:Person) RETURN p limit 20
```
retonaria no maxímo 20 itens do nó de Pessoas, enquanto a operação do tipo
```
MATCH (n) RETURN n limit 20
```
retornaria no maxímo 20 itens de todos nós

### Propriedades
[*to be continued*]

### Referências
* [Tutorial: Getting Started with Cypher](https://neo4j.com/developer/cypher/guide-cypher-basics/)
* [Neo4j - Overview](https://www.tutorialspoint.com/neo4j/neo4j_overview.htm)
* [Getting Started](https://neo4j.com/developer/get-started/)
* [Setting up a go-neo4j ecosystem](https://medium.com/@angadsharma1016/optimizing-go-neo4j-concurrency-patterns-810dff25f88f)
* [Challenges of neo4j at the heart of software](https://dev.to/l04db4l4nc3r/challenges-of-neo4j-at-the-heart-of-software-2dbi)
* [GraphAcademy Online Training](https://neo4j.com/graphacademy/online-training/)