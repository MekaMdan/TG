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

#### Verificação da função de gênero com apenas a biblioteca internacional

| Universidade | Total | Acertos | Erros | Não identificados |
|--------------|-------|---------|-------|-------------------|
| UFAM         |  36   |    23   |   0   |        13         |
| UFMG         |  66   |    44   |   0   |        22         |
| UFRN         |  29   |    22   |   0   |        7          |
| UnB          |  30   |    22   |   0   |        8          |
| USP          |  40   |    33   |   0   |        7          |
| Total        |  201  |    144  |   0   |        57         |

Media de acerto = 71,6%


#### Verificação da função de gênero final

| Universidade | Total | Acertos | Erros | Não identificados |
|--------------|-------|---------|-------|-------------------|
| UFAM         |  36   |    34   |   0   |        2          |
| UFMG         |  66   |    65   |   0   |        1          |
| UFRN         |  29   |    28   |   0   |        1          |
| UnB          |  30   |    28   |   0   |        2          |
| USP          |  40   |    39   |   0   |        1          |
| Total        |  201  |    194  |   0   |        7          |

Media de acerto = 96,5%

Entre os nomes não identificados, podemos verificar nomes unisex como Li e nomes não muito usuais como Routo, Dibio, Altigran, entre outros


### 2 - Obter os participantes da amostra

Para iniciar, foi-se escolhido a amostra de professores participantes, que foram os professores de mestrado das seguintes universidades: USP, UNB, UFAM, UFMG, UFRN.

Foram colhidos os nomes dos professores utilizando-se web-scrapping da pagina de professores do mestrado das faculdades citadas. 

Para cada professor de cada site, passa-se pelo gender_guesser e após obter todos os dados de uma faculdade, transforma-se esses dados em comandos chypher e associa-se cada professor a instituição de ensino. Para que cada nó de professor seja unico, foi-se retirado o registro de um professor da UnB, uma vez que este está agora na UFMG e o site da UnB não havia sido atualizado. Contudo, isto não irá fazer diferença uma vez que o que importa na pesquisa seria as pesquisas em si.

### 3 - Obter pesquisas dos professores da amostra

O processo para obter as pesquisas foi um pouco mais complicado. Decidiu-se que as pesquisas seriam retiradas do lattes de cada professor, porém este processo não poderia ser realizado como o anterior, atráves de web-scrapper, uma vez que o firewall do lattes não permite tais operações. 

A alternativa encontrada, então, foi baixar todos os curriculos dos professores. Porem, não foi encontrado lattes de alguns professores. O total de documentos obtidos foi 190 de 201 curriculos.

O proximo passo foi obter os nomes de citação de cada um dos professores, que foi colocado em um dicionario onde o nome do professor é a chave e o valor associado a essa chave é a lista de nomes associados aquele professor.