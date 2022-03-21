CREATE(n:Institution {name: 'UnB', color:'#E466CB'});
CREATE(a:Author {name: 'Alba Cristina Magalhaes Alves De Melo', gender: 'F', lattesurl: 'http://lattes.cnpq.br/5123602572479168', email: 'alves@unb.br', title: 'Doutora em Ci�ncia da Computa��o', title_when_where: '1996 - INPG Intitut National Polytechnique de Grenoble - Fran�a', areas: 'Algoritmos Paralelos para Aplica��es de Bioinform�tica, Ambientes de Programa��o Paralelos H�bridos, Mem�ria Compartilhada e Distribu�da'});
MATCH(i:Institution {name: 'UnB'}),(a:Author {name: 'Alba Cristina Magalhaes Alves De Melo'}) MERGE (a)-[r:ASSOCIATED_TO]->(i);
CREATE(a:Author {name: 'Aleteia Patricia Favacho De Araujo', gender: 'F', lattesurl: 'http://lattes.cnpq.br/1566076687226024', email: 'aleteia@unb.br', title: 'Doutora em Ci�ncia da Computa��o', title_when_where: '2008 - PUC-Rio, Brasil', areas: 'Computa��o Paralela, Sistemas Distribu�dos, Otimiza��o Combinat�ria, Algoritmos Paralelos Distribu�dos, Grid Computacional, Computa��o em Nuvem'});
MATCH(i:Institution {name: 'UnB'}),(a:Author {name: 'Aleteia Patricia Favacho De Araujo'}) MERGE (a)-[r:ASSOCIATED_TO]->(i);
CREATE(a:Author {name: 'Andre Costa Drummond', gender: 'M', lattesurl: 'http://lattes.cnpq.br/8525132522308309', email: 'andred@unb.br', title: 'Doutor em Ci�ncia da Computa��o', title_when_where: '2010 - Universidade de Campinas - Brasil', areas: 'Redes de Computadores, Teleinform�tica'});
MATCH(i:Institution {name: 'UnB'}),(a:Author {name: 'Andre Costa Drummond'}) MERGE (a)-[r:ASSOCIATED_TO]->(i);
CREATE(a:Author {name: 'Bruno Luiggi Macchiavello Espinoza', gender: 'M', lattesurl: 'http://lattes.cnpq.br/5850453918340560', email: 'macchiavello@unb.br', title: 'Doutor em Engenharia El�trica', title_when_where: '2009 - Universidade de Bras�lia - Brasil', areas: 'Processamento de Imagens e V�deo, Processamento Digital de Sinais'});
MATCH(i:Institution {name: 'UnB'}),(a:Author {name: 'Bruno Luiggi Macchiavello Espinoza'}) MERGE (a)-[r:ASSOCIATED_TO]->(i);
CREATE(a:Author {name: 'Camilo Chang Dorea', gender: 'M', lattesurl: 'http://lattes.cnpq.br/7370796774582075', email: 'camilodorea@unb.br', title: 'Doutor em Teoria do Sinal e Telecomunica��es', title_when_where: '2007 - Universitat Politecnica de Catalunya - Espanha', areas: 'Processamento de Imagens, Processamento Digital de Sinais'});
MATCH(i:Institution {name: 'UnB'}),(a:Author {name: 'Camilo Chang Dorea'}) MERGE (a)-[r:ASSOCIATED_TO]->(i);
CREATE(a:Author {name: 'Celia Ghedini Ralha', gender: 'F', lattesurl: 'http://lattes.cnpq.br/5632722847264046', email: 'ghedini@unb.br', title: 'Doutora em Ci�ncia da Computa��o', title_when_where: '1997 - University of Leeds - Gr�-Bretanha', areas: 'Intelig�ncia Artificial, Sistema Multiagente, Tratamento de Informa��o e Conhecimento'});
MATCH(i:Institution {name: 'UnB'}),(a:Author {name: 'Celia Ghedini Ralha'}) MERGE (a)-[r:ASSOCIATED_TO]->(i);
CREATE(a:Author {name: 'Claudia Nalon', gender: 'F', lattesurl: 'http://lattes.cnpq.br/7793795625581127', email: 'nalon@unb.br', title: 'Doutora em Ci�ncia da Computa��o', title_when_where: '2004 - University of Liverpool - Gr�-Bretanha', areas: 'L�gica e Sem�ntica de Programas, Teoria da Computa��o'});
MATCH(i:Institution {name: 'UnB'}),(a:Author {name: 'Claudia Nalon'}) MERGE (a)-[r:ASSOCIATED_TO]->(i);
CREATE(a:Author {name: 'Dibio Leandro Borges', gender: 'M', lattesurl: 'http://lattes.cnpq.br/1808368824068028', email: 'dibio@unb.br', title: 'Doutor em�Ci�ncia da Computa��o', title_when_where: '1995 -�University of Edinburgh, EDINBURGH, Esc�cia', areas: 'Intelig�ncia Artificial, Rob�tica e Vis�o Computacional'});
MATCH(i:Institution {name: 'UnB'}),(a:Author {name: 'Dibio Leandro Borges'}) MERGE (a)-[r:ASSOCIATED_TO]->(i);
CREATE(a:Author {name: 'Edna Dias Canedo', gender: 'F', lattesurl: 'http://lattes.cnpq.br/9554285834432091', email: 'ednacanedo@unb.br', title: 'Doutora em Engenharia El�trica', title_when_where: '2012 - Universidade de Bras�lia', areas: 'Engenharia de Software, Engenharia de Requisitos, Minera��o de Dados em Reposit�rios de Software'});
MATCH(i:Institution {name: 'UnB'}),(a:Author {name: 'Edna Dias Canedo'}) MERGE (a)-[r:ASSOCIATED_TO]->(i);
CREATE(a:Author {name: 'Eduardo Adilio Pelinson Alchieri', gender: 'M', lattesurl: 'http:/lattes.cnpq.br/4885132018861296', email: 'alchieri@unb.br', title: 'Doutor em Engenharia de Automa��o e Sistemas', title_when_where: '2011 - Universidade Federal de Santa Catarina', areas: 'Sistemas Distribu�dos, Comunica��o de Grupo, Redes de Computadores, Engenharia de Software, Toler�ncia a Falhas e Toler�ncia a Intrus�es, Sistemas Distribu�dos Din�micos'});
MATCH(i:Institution {name: 'UnB'}),(a:Author {name: 'Eduardo Adilio Pelinson Alchieri'}) MERGE (a)-[r:ASSOCIATED_TO]->(i);
CREATE(a:Author {name: 'Flavio De Barros Vidal', gender: 'M', lattesurl: 'http://lattes.cnpq.br/0453892715674953', email: 'fbvidal@unb.br', title: 'Doutor em Engenharia El�trica', title_when_where: '2009 - Universidade de Bras�lia', areas: 'Vis�o Computacional, Rob�tica, Processamento Gr�fico, Deep Learning'});
MATCH(i:Institution {name: 'UnB'}),(a:Author {name: 'Flavio De Barros Vidal'}) MERGE (a)-[r:ASSOCIATED_TO]->(i);
CREATE(a:Author {name: 'George Luiz Medeiros Teodoro', gender: 'M', lattesurl: 'http://lattes.cnpq.br/6732940162423405', email: 'teodoro@unb.br', title: 'Doutor em Ci�ncia da Computa��o', title_when_where: '2010 - Universidade Federal de Minas Gerais - Brasil', areas: 'Computa��o de Alto Desempenho, Algoritmos para Minera��o de Dados, Computa��o em Ambientes Heterog�neos Multi-many-core, Sistemas de Com�rcio Eletr�nico, Sistemas de Computa��o'});
MATCH(i:Institution {name: 'UnB'}),(a:Author {name: 'George Luiz Medeiros Teodoro'}) MERGE (a)-[r:ASSOCIATED_TO]->(i);
CREATE(a:Author {name: 'Genaina Nunes Rodrigues', gender: 'F', lattesurl: 'http://lattes.cnpq.br/2966913210268454', email: 'genaina@unb.br', title: 'Doutora em Ci�ncia da Computa��o', title_when_where: '2008 - University College of London - Inglaterra', areas: 'Engenharia de Software, Modelos Anal�ticos e de Simula��o, Sistemas auto-adaptativos'});
MATCH(i:Institution {name: 'UnB'}),(a:Author {name: 'Genaina Nunes Rodrigues'}) MERGE (a)-[r:ASSOCIATED_TO]->(i);
CREATE(a:Author {name: 'Geraldo Pereira Rocha Filho', gender: 'M', lattesurl: 'http://buscatextual.cnpq.br/buscatextual/visualizacv.do?metodo=apresentar&id=K4492273T0', email: 'geraldof@unb.br', title: 'Doutor em Ci�ncia da Computa��o��e Matem�tica Computacional', title_when_where: '2018 -�Universidade de S�o Paulo, USP', areas: 'Intelig�ncia Artificial e Redes de Computadores'});
MATCH(i:Institution {name: 'UnB'}),(a:Author {name: 'Geraldo Pereira Rocha Filho'}) MERGE (a)-[r:ASSOCIATED_TO]->(i);
CREATE(a:Author {name: 'Jacir Luiz Bordim', gender: 'M', lattesurl: 'http://lattes.cnpq.br/8594325955153756', email: 'bordim@unb.br', title: 'Doutor em Ci�ncia da Computa��o', title_when_where: '2003 - Japan Advanced Institute of Science and Technology', areas: 'Redes M�veis, Controle de Admiss�o, Protocolos de Acesso ao Meio, Roteamento, QoS, Computa��o Colaborativa, Confian�a e Reputa��o em Sistemas Distribu�dos, Redes �pticas, P2P'});
MATCH(i:Institution {name: 'UnB'}),(a:Author {name: 'Jacir Luiz Bordim'}) MERGE (a)-[r:ASSOCIATED_TO]->(i);
CREATE(a:Author {name: 'Jorge Carlos Lucero', gender: 'M', lattesurl: 'http://lattes.cnpq.br/8444332296327124', email: 'lucero@unb.br', title: 'PhD em Engenharia Eletr�nica', title_when_where: '1993 - Shizuoka University ', areas: 'Processamento da Fala'});
MATCH(i:Institution {name: 'UnB'}),(a:Author {name: 'Jorge Carlos Lucero'}) MERGE (a)-[r:ASSOCIATED_TO]->(i);
CREATE(a:Author {name: 'Li Weigang', gender: 'M', lattesurl: 'http://lattes.cnpq.br/4218593188956443', email: 'weigang@unb.br', title: 'Doutor em Ci�ncia da Computa��o', title_when_where: '1994 - ITA - Instituto Tecnol�gico de Aeronautica - Brasil', areas: 'Intelig�ncia Artificial, Transporte A�reo'});
MATCH(i:Institution {name: 'UnB'}),(a:Author {name: 'Li Weigang'}) MERGE (a)-[r:ASSOCIATED_TO]->(i);
CREATE(a:Author {name: 'Luis Paulo Faina Garcia', gender: 'M', lattesurl: 'http://buscatextual.cnpq.br/buscatextual/visualizacv.do?metodo=apresentar&id=K4218452E7', email: 'luis.garcia@unb.br', title: 'Doutor em Ci�ncias da Computa��o e Matem�tica Computacional', title_when_where: '2016 - Universidade de S�o Paulo, USP - Brasil', areas: 'Intelig�ncia Artificial e Minera��o de Dados'});
MATCH(i:Institution {name: 'UnB'}),(a:Author {name: 'Luis Paulo Faina Garcia'}) MERGE (a)-[r:ASSOCIATED_TO]->(i);
CREATE(a:Author {name: 'Marcelo Antonio Marotta', gender: 'M', lattesurl: 'http://lattes.cnpq.br/3793781874827385', email: 'marcelo.marotta@unb.br', title: 'Doutor em Ci�ncia da Computa��o', title_when_where: '2019 - Universidade Federal do Rio Grande do Sul, UFRGS - Brasil', areas: 'Redes de Computadores'});
MATCH(i:Institution {name: 'UnB'}),(a:Author {name: 'Marcelo Antonio Marotta'}) MERGE (a)-[r:ASSOCIATED_TO]->(i);
CREATE(a:Author {name: 'Maria Emilia Machado Telles Walter', gender: 'F', lattesurl: 'http://lattes.cnpq.br/0216229039021964', email: 'mariaemilia@unb.br', title: 'Doutora em Biologia da Computacional', title_when_where: '1999 - Instituto de Computa��o da Universidade de Campinas', areas: 'Biologia Computacional, Bioinform�tica'});
MATCH(i:Institution {name: 'UnB'}),(a:Author {name: 'Maria Emilia Machado Telles Walter'}) MERGE (a)-[r:ASSOCIATED_TO]->(i);
CREATE(a:Author {name: 'Maristela Terto De Holanda', gender: 'F', lattesurl: 'http://lattes.cnpq.br/5724567591998546', email: 'mholanda@unb.br', title: 'Doutora em Engenharia El�trica', title_when_where: '2007 - UFRN - Universidade Federal do Rio Grande do Norte', areas: 'Bancos de Dados M�veis, Distribu�dos e Heterog�neos, Bancos de Dados Geogr�ficos, Bancos de Dados para Bioinform�tica, Desenvolvimento Web, Acessibilidade na Web, Redes Sociais'});
MATCH(i:Institution {name: 'UnB'}),(a:Author {name: 'Maristela Terto De Holanda'}) MERGE (a)-[r:ASSOCIATED_TO]->(i);
CREATE(a:Author {name: 'Mauricio Ayala Rincon', gender: 'M', lattesurl: 'http://lattes.cnpq.br/8466420403941522', email: 'ayala@unb.br', title: 'Dr. rer. nat. em Inform�tica', title_when_where: '1993 - Universit�t Kaiserslautern - Alemanha', areas: 'Teoria da Computa��o, L�gicas e Sem�ntica de Programas, Modelos de Computa��o, An�lise de Algoritmos e Complexidade, Linguagens Fomais e Aut�matos, Matem�tica Aplicada'});
MATCH(i:Institution {name: 'UnB'}),(a:Author {name: 'Mauricio Ayala Rincon'}) MERGE (a)-[r:ASSOCIATED_TO]->(i);
CREATE(a:Author {name: 'Mylene Christine Queiroz De Farias', gender: 'F', lattesurl: 'http://lattes.cnpq.br/4465619366143200', email: 'mylene@unb.br', title: 'PhD em Engenharia El�trica e de Computa��o', title_when_where: '2004 - University of California Santa Barbara (UCSB) - USA', areas: 'Qualidade de V�deo, Processamento de Imagens, Processamento de Sinais, Processamento de V�deo, Televis�o Digital'});
MATCH(i:Institution {name: 'UnB'}),(a:Author {name: 'Mylene Christine Queiroz De Farias'}) MERGE (a)-[r:ASSOCIATED_TO]->(i);
CREATE(a:Author {name: 'Priscila America Solis Mendez Barreto', gender: 'F', lattesurl: 'http://lattes.cnpq.br/6544098578171957', email: 'pris@unb.br', title: 'Doutora em Engenharia El�trica', title_when_where: '2007 - Universidade de Bras�lia - Brasil', areas: 'ARedes de Comunica��o, Modelagem e Controle de Tr�fego em Redes Multim�dia, Otimiza��o e Planejamento de Redes, Qualidade de Servi�o, Avalia��o de Desempenho'});
MATCH(i:Institution {name: 'UnB'}),(a:Author {name: 'Priscila America Solis Mendez Barreto'}) MERGE (a)-[r:ASSOCIATED_TO]->(i);
CREATE(a:Author {name: 'Ricardo Lopes De Queiroz', gender: 'M', lattesurl: 'http://lattes.cnpq.br/9271885452744905', email: 'queiroz@ieee.org', title: 'PhD em Engenharia El�trica', title_when_where: '1994 - The University of Texas at Arlington - USA', areas: 'Processamento de Imagens e Sinais, Codifica��o e Compress��o de Imagem e V�deo, TV Digital'});
MATCH(i:Institution {name: 'UnB'}),(a:Author {name: 'Ricardo Lopes De Queiroz'}) MERGE (a)-[r:ASSOCIATED_TO]->(i);
CREATE(a:Author {name: 'Ricardo Pezzuol Jacobi', gender: 'M', lattesurl: 'http://lattes.cnpq.br/5285476213900200', email: 'jacobi@unb.br', title: 'Doutor em Ci�ncias Aplicadas', title_when_where: '1993 - Universit� Catholique de Louvain - B�lgica', areas: 'Projeto de Sistemas Integrados, Sistemas Embarcados, Hardware para o Sistema Brasileiro de TV Digital'});
MATCH(i:Institution {name: 'UnB'}),(a:Author {name: 'Ricardo Pezzuol Jacobi'}) MERGE (a)-[r:ASSOCIATED_TO]->(i);
CREATE(a:Author {name: 'Rodrigo Bonifacio De Almeida', gender: 'M', lattesurl: 'http://lattes.cnpq.br/0368311142108150', email: 'rbonifacio@unb.br', title: 'Doutor em Ci�ncia da Computa��o', title_when_where: '2010 - Universidade Federal de Pernambuco - UFPE', areas: 'Engenharia de Software'});
MATCH(i:Institution {name: 'UnB'}),(a:Author {name: 'Rodrigo Bonifacio De Almeida'}) MERGE (a)-[r:ASSOCIATED_TO]->(i);
CREATE(a:Author {name: 'Teofilo Emidio De Campos', gender: 'M', lattesurl: 'http://lattes.cnpq.br/5052452346402051', email: 'teodecampos@unb.br', title: 'Doutor em Ci�ncia da Computa��o', title_when_where: '2006 - University of Oxford�', areas: 'Vis�o Computacional, Aprendizado de M�quina'});
MATCH(i:Institution {name: 'UnB'}),(a:Author {name: 'Teofilo Emidio De Campos'}) MERGE (a)-[r:ASSOCIATED_TO]->(i);
CREATE(a:Author {name: 'Thiago De Paulo Faleiros', gender: 'M', lattesurl: 'http://lattes.cnpq.br/1193412523364471', email: 'thiagodepaulo@unb.br', title: 'Doutor em Ci�ncia da Computa��o', title_when_where: '2016 - Universidade de S�o Paulo', areas: 'Aprendizado de M�quina, Teoria da Computa��o e Minera��o de Texto'});
MATCH(i:Institution {name: 'UnB'}),(a:Author {name: 'Thiago De Paulo Faleiros'}) MERGE (a)-[r:ASSOCIATED_TO]->(i);
CREATE(a:Author {name: 'Vander Ramos Alves', gender: 'M', lattesurl: 'http://lattes.cnpq.br/7500979195469357', email: 'valves@unb.br', title: 'Doutor em Ci�ncia da Computa��o', title_when_where: '2007 - Universidade Federal de Pernambuco UFPE', areas: 'Engenharia de Software, Linhas de Produto de Software, Vida Ambiente-Assistida, M�todos Formais'});
MATCH(i:Institution {name: 'UnB'}),(a:Author {name: 'Vander Ramos Alves'}) MERGE (a)-[r:ASSOCIATED_TO]->(i);
CREATE(a:Author {name: 'Vinicius Ruela Pereira Borges', gender: 'M', lattesurl: 'http://lattes.cnpq.br/1841593572448050', email: 'viniciusrpb@unb.br', title: 'Doutor em Ci�ncias da Computa��o e Matem�tica Computacional', title_when_where: '2016 - Universidade de S�o Paulo, USP, Brasil', areas: 'Intelig�ncia Artificial, Minera��o de Dados, Processamento Digital de Sinais e Multim�dia Vis�o Computacional'});
MATCH(i:Institution {name: 'UnB'}),(a:Author {name: 'Vinicius Ruela Pereira Borges'}) MERGE (a)-[r:ASSOCIATED_TO]->(i);
