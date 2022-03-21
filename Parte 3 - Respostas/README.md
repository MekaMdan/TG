# Parte 3 - Respostas

![Respostas](https://cdn.searchenginejournal.com/wp-content/uploads/2020/01/answer-all-the-important-questions-actionable-tasking-5e1479550136c.png)

## Objetivos

- [ ] Criar queries para as seguintes perguntas
    - Como é a rede de colaboração feminina e masculina (unb-unb e unb-externo)? 
    - Se a rede feminina é semelhante a masculina visualmente
    - Achar o avarage degree feminino e masculino
    - Mostrar os pesquisadores apenas homens e apenas mulheres

## Progresso das Respostas

- [X] Mostrar apenas pesquisadoras mulheres (e suas pesquisas) e apenas homens (e suas pesquisas)
- [X] Rede de colabolação interna
- [X] Rede de colabolação externa
- [X] Obter rede de colabolação masculina e feminina
- [X] Avarage Degree feminina/ masculina

## Pensamentos para criar as queries

1.  Mostrar apenas pesquisadores unb

    Primeiro achamos como associar professores à Unb e mostrar suas pesquisas


    ```
    MATCH (p:Paper)<-[rs:AUTHORING]-(a:Author)-[r:ASSOCIATED_TO]-(i:Institution {name: 'UnB'}) return a,p,i,rs,r
    ```
    Gerando o seguinte grafo:
    ![Pesquisas por autores Unb](./imagens/graph-pesq-unb-autores.png)

    Agora precisamos separar por genero

    ```

    MATCH (p:Paper)<-[rs:AUTHORING]-(a:Author{gender:"F"})-[r:ASSOCIATED_TO]-(i:Institution {name: 'UnB'}) return a,p,i,rs,r

    MATCH (p:Paper)<-[rs:AUTHORING]-(a:Author{gender:"M"})-[r:ASSOCIATED_TO]-(i:Institution {name: 'UnB'}) return a,p,i,rs,r

    ```

    Grafos gerados por autores Homens:
    ![Pesquisas por autores Unb - Homens](./imagens/graph-unb-pesq-autores-m.png)

    Grafos gerados por autoras mulheres:
    ![Pesquisas por autores Unb - Homens](./imagens/graph-unb-pesq-autores-f.png)
    
    
    Iremos excluir co-autores que tem um relacionamento

    Sem co-autores do genero oposto da unb:
    ```
    MATCH (co:Author)-[rco:AUTHORING]-(p:Paper)<-[rs:AUTHORING]-(a:Author{gender:"F"})-[r:ASSOCIATED_TO]-(i:Institution {name: 'UnB'}) WHERE NOT (co{gender:"M"})-[:ASSOCIATED_TO]-(:Institution) return a,p,i,rs,r,co,rco

    MATCH (co:Author)-[rco:AUTHORING]-(p:Paper)<-[rs:AUTHORING]-(a:Author{gender:"M"})-[r:ASSOCIATED_TO]-(i:Institution {name: 'UnB'}) WHERE NOT (co{gender:"F"})-[:ASSOCIATED_TO]-(:Institution) return a,p,i,rs,r,co,rco
    ```

    Grafos gerados por autores Homens:
    ![Pesquisas por autores Unb - Homens](./imagens/graph-unb-pesq-autores-m-co-semunb.png)

    Grafos gerados por autoras mulheres:
    ![Pesquisas por autores Unb - Mulheres](./imagens/graph-unb-pesq-autores-f-co-semunb.png)



    Com co-autores do genero oposto da unb:

    ```
    MATCH (co:Author)-[rco:AUTHORING]-(p:Paper)<-[rs:AUTHORING]-(a:Author{gender:"M"})-[r:ASSOCIATED_TO]-(i:Institution {name: 'UnB'}) return a,p,i,rs,r,co,rco

    MATCH (co:Author)-[rco:AUTHORING]-(p:Paper)<-[rs:AUTHORING]-(a:Author{gender:"F"})-[r:ASSOCIATED_TO]-(i:Institution {name: 'UnB'}) return a,p,i,rs,r,co,rco
    ```

    Grafos gerados por autores Homens:
    ![Pesquisas por autores Unb - Homens](./imagens/graph-unb-pesq-autores-m-co.png)

    Grafos gerados por autoras mulheres:
    ![Pesquisas por autores Unb - Homens](./imagens/graph-unb-pesq-autores-f-co.png)




2. Rede de colabolação interna

    Geral:
    ```
    MATCH (co:Author)-[rco:AUTHORING]-(p:Paper)<-[rs:AUTHORING]-(a:Author)-[r:ASSOCIATED_TO]-(i:Institution {name: 'UnB'}) WHERE (co)-[:ASSOCIATED_TO]-(:Institution) return a,p,i,rs,r,co,rco
    ```
    ![Grafo de colabolação interna geral](./imagens/graph-unb-pesq-interna-geral.png)


    Só de mulheres:
    ```
    MATCH (co:Author)-[rco:AUTHORING]-(p:Paper)<-[rs:AUTHORING]-(a:Author{gender:"F"})-[r:ASSOCIATED_TO]-(i:Institution {name: 'UnB'}) WHERE (co)-[:ASSOCIATED_TO]-(:Institution) return a,p,i,rs,r,co,rco

    MATCH (co:Author)-[rco:AUTHORING]-(p:Paper)<-[rs:AUTHORING]-(a:Author{gender:"F"})-[r:ASSOCIATED_TO]-(i:Institution {name: 'UnB'}) WHERE (co{gender:"F"})-[:ASSOCIATED_TO]-(:Institution) return a,p,i,rs,r,co,rco
    ```
    F-geral
    ![Grafo de colabolação interna feminina-geral](./imagens/graph-unb-pesq-interna-f-to-geral.png)
    
    F-F
    ![Grafo de colabolação interna feminina-feminina](./imagens/graph-unb-pesq-interna-f-to-f.png)


    Só de homens:
    ```
    MATCH (co:Author)-[rco:AUTHORING]-(p:Paper)<-[rs:AUTHORING]-(a:Author{gender:"M"})-[r:ASSOCIATED_TO]-(i:Institution {name: 'UnB'}) WHERE (co)-[:ASSOCIATED_TO]-(:Institution) return a,p,i,rs,r,co,rco

    MATCH (co:Author)-[rco:AUTHORING]-(p:Paper)<-[rs:AUTHORING]-(a:Author{gender:"M"})-[r:ASSOCIATED_TO]-(i:Institution {name: 'UnB'}) WHERE (co{gender:"M"})-[:ASSOCIATED_TO]-(:Institution) return a,p,i,rs,r,co,rco
    ```
    M-geral
    ![Grafo de colabolação interna masculina-geral](./imagens/graph-unb-pesq-interna-m-to-geral.png)
    
    M-M
    ![Grafo de colabolação interna feminina-feminina](./imagens/graph-unb-pesq-interna-m-to-m.png)


3. Rede de colabolação externa
    Talvez seja a mesma coisa do grafo de autores separados por genero sem co-autores da unb

    Sem co-autores do genero oposto da unb:
    ```
    MATCH (co:Author)-[rco:AUTHORING]-(p:Paper)<-[rs:AUTHORING]-(a:Author{gender:"F"})-[r:ASSOCIATED_TO]-(i:Institution {name: 'UnB'}) WHERE NOT (co{gender:"M"})-[:ASSOCIATED_TO]-(:Institution) return a,p,i,rs,r,co,rco

    MATCH (co:Author)-[rco:AUTHORING]-(p:Paper)<-[rs:AUTHORING]-(a:Author{gender:"M"})-[r:ASSOCIATED_TO]-(i:Institution {name: 'UnB'}) WHERE NOT (co{gender:"F"})-[:ASSOCIATED_TO]-(:Institution) return a,p,i,rs,r,co,rco
    ```

    Grafos gerados por autores Homens:
    ![Pesquisas por autores Unb - Homens](./imagens/graph-unb-pesq-autores-m-co-semunb.png)

    Grafos gerados por autoras mulheres:
    ![Pesquisas por autores Unb - Mulheres](./imagens/graph-unb-pesq-autores-f-co-semunb.png)

4.  Rede de colaboração total f/m
- F :
    ```
    Match (a:Author{gender:'F'})-[r:COAUTHOR]-(co:Author) WHERE (a)-[:ASSOCIATED_TO]-(:Institution) return a,r,co
    ```
    ![Rede feminina](./imagens/grafo-rede-colaboracao-f.png)
    ![Tabela Rede feminina](./imagens/rede-colaboracao-f-dados.png)

- M :
    ```
    Match (a:Author{gender:'M'})-[r:COAUTHOR]-(co:Author) WHERE (a)-[:ASSOCIATED_TO]-(:Institution) return a,r,co
    ```
    ![Rede Maculina](./imagens/grafo-rede-colaboracao-m.png)
    ![Tabela Rede Maculina](./imagens/rede-colaboracao-m-dados.png)
5. Primeiro, cria-se relação COAUTHOR que relaciona coautores a autores com a pesquisa como campo titulo. Isso irá criar apenas coautores externos a instituição

    ```
    MATCH (co:Author)-[rco:AUTHORING]-(p:Paper)<-[rs:AUTHORING]-(a:Author)-[r:ASSOCIATED_TO]-(i:Institution {name: 'UnB'}) CREATE (co)-[rn:COAUTHOR{title: p.title}]->(a) return a,p,i,rs,r,co,rco,rn
    ```
    
    ![Criação de coautores](./imagens/graph-coauthor.png)

Average Degree = Numero de relacionamentos/ numero de nós 

Filtramos os nós pelas pesquisas seguintes:
    
- Filtrar nós relacionados a UnB (Os nós de pesquisa)

    ```
    Match (a:Author{gender:' '})-[r:ASSOCIATED_TO]-(i:Institution) return a
    ```

- Filtrar relacionamentos de coautores

    ```
    MATCH (a:Author{gender:' '})-[c:COAUTHOR]-(co:Author) Where (a)-[:ASSOCIATED_TO]-(:Institution) return a,co,c
    ```
- Filtrar relacionamentos de pesquisas 
    ```
    Match (a:Author{gender:' '})-[r:AUTHORING]-(p:Paper) where (a)-[:ASSOCIATED_TO]-(:Institution{name:'UnB'}) RETURN a,r,p
    ```

    |                   | Feminino | Masculino |
    |-------------------|----------|-----------|
    | Nós               | 10       | 21        |
    | Coautores         | 1414     | 2129      |
    | Pesquisas         | 256      | 523       |
    | Average pesquisa  | 141,4    | 101,38    |
    | Average coautores | 25,6     | 24,9      |


## Queries finais para cada pergunta

1.
2.
3.
4.
5.
