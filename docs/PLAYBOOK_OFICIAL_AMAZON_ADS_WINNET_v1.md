# PLAYBOOK OFICIAL — AMAZON ADS WINNET v1

Data de emissão: 14/08/2026
Fonte: Extração Forense v2 validada
Versão: v1

---

## 1. Objetivo do Playbook

Documentar o método operacional vigente de Amazon Ads da Winnet Metais: como a operação analisa, decide, executa e audita publicidade na Amazon Brasil.

Este documento define COMO A OPERAÇÃO TRABALHA.

Não registra ações passadas nem valores momentâneos.

---

## 2. Escopo

Cobre:

- Sponsored Products;
- campanhas automáticas;
- campanhas manuais;
- Produto Indicado;
- rituais de monitoramento;
- ciclos de otimização;
- réguas de decisão;
- mineração de termos;
- negativações;
- criação de campanhas;
- relatórios;
- integração com a Planilha Mestra;
- utilização de sinais externos, principalmente Mercado Livre.

Não cobre:

- gestão completa de catálogo/listings, exceto quando afeta Ads;
- precificação, que pertence à Planilha Mestra;
- operação do Mercado Livre propriamente dita.

---

## 3. Como utilizar este documento

- REGRA OBRIGATÓRIA = aplicar sempre, salvo exceção documentada.
- PRINCÍPIO = orienta o raciocínio em situações não previstas.
- ORIENTAÇÃO = referência prática que admite adaptação justificada.
- PARÂMETRO VIGENTE = valor atual que pode mudar sem alterar o método.
- ESTADO ATUAL = situação momentânea da conta; nunca é regra.
- HISTÓRICO = precedente e aprendizado; nunca é regra.

Parâmetros vigentes e estado atual da conta devem ser consultados no documento:

AMAZON ADS — PARÂMETROS VIGENTES

Em conflito entre este Playbook e dados mais recentes provenientes de fonte oficial confiável, prevalece a informação mais recente e confiável, sinalizando a divergência.

---

## 4. Princípios fundamentais

1. CONCENTRAÇÃO PAGA AS CONTAS  
Poucas campanhas com tese clara superam muitas campanhas pulverizadas.

2. ENTREGA ≠ CONVERSÃO  
Todo zero de vendas exige primeiro esse diagnóstico.

3. TODA RÉGUA TEM CONTRAPESO DE CONTEXTO  
Ticket, margem, amostra e demanda externa moderam a aplicação cega de qualquer regra.

4. MEXIDA TEM DIA MARCADO  
Dados limpos exigem disciplina entre rituais. Conserto de configuração quebrada não é otimização e pode ocorrer a qualquer momento.

5. CAMPANHA PAUSADA NÃO É VEREDITO CONTRA O TERMO  
Termos bons podem migrar para estruturas melhores.

6. ACOS MEDE O ADS; TACOS MEDE O NEGÓCIO  
O objetivo estratégico é o orgânico crescer sobre a fundação paga.

7. CONHECIMENTO DE MERCADO > SILÊNCIO DE RELATÓRIO  
Demanda comprovada externamente pode justificar uma estrutura antes de o funil interno confirmar.

8. RADAR COMPRA DADOS, NÃO VENDAS  
Estrutura em teste existe para gerar amostra com custo controlado.

9. NICHO TEM PERSONALIDADE  
Ritmos de julgamento podem variar por categoria.

---

## 5. Hierarquia de fontes

1. Dados e instruções fornecidos na conversa atual
2. Planilha Mestra vigente e documentos oficiais do Project
3. Relatórios extraídos dos sistemas Amazon Ads, Seller Central e Mercado Livre
4. Histórico de conversas do Project
5. Memória

Valores financeiros e logísticos devem sempre vir da Planilha Mestra vigente.

A memória serve como apoio de contexto, não como fonte definitiva para informações variáveis.

---

## 6. Conceitos e métricas

ACOS = gasto ÷ vendas atribuídas.

O método possui três marcos:

- ACOS Objetivo
- ACOS Máximo
- ACOS Emergência

Os valores atuais desses marcos devem ser consultados em AMAZON ADS — PARÂMETROS VIGENTES.

TACOS = gasto de Ads ÷ vendas totais, incluindo Ads + orgânico.

ERA = período entre duas otimizações.

VIGIA = campanha mantida ativa com lance/orçamento reduzido e contrato explícito de saída, contendo prazo e gatilho.

RADAR = campanha ou segmentação em fase de geração de amostra.

ZUMBI/PORÃO = campanha ativa fora das listas normais de gestão, normalmente oriunda de gerações antigas.

ALVO = segmentação individual, termo, ASIN ou grupo de correspondência dentro de uma campanha.

---

## 7. Janelas de análise

### 7 dias

Utilizado no monitoramento.

Serve para detectar.

Não deve, sozinho, julgar estruturalmente a campanha.

### 30 dias

Base das principais réguas de orçamento durante a otimização.

Confirma tendências e autoriza ações estruturadas.

### Era

Período entre duas otimizações.

Serve para julgar testes e vigias criados ou ajustados no ciclo anterior.

### Vitalício

Usado:

- como contrapeso de campanhas com histórico;
- para analisar acumulados;
- para determinadas réguas no nível de alvo.

Doutrina:

SEMANAL DETECTA; 30 DIAS CONFIRMA.

---

## 8. Monitoramento semanal

Realizar a cada 7 dias.

A segunda-feira pode ser utilizada por conveniência operacional devido à chegada dos relatórios, mas não é uma regra conceitual.

O monitoramento é ritual de leitura, não de otimização completa.

### Roteiro

1. Analisar export de 7 dias do Gerenciador.
2. Preencher métricas semanais.
3. Procurar emergências.
4. Conferir promoções quando aplicável.
5. Conferir preço e Buy Box.
6. Conferir se pausas do ciclo anterior permanecem corretamente pausadas.

### Faixas

ACOS menor ou igual ao Máximo:

Não realizar ação estrutural apenas pelo monitoramento.

ACOS entre Máximo e Emergência:

Registrar e acompanhar.

A ação estruturada deve aguardar a otimização quinzenal.

ACOS acima da Emergência:

Aplicar protocolo de emergência no nível adequado.

Identificar o alvo/segmentação culpado antes de qualquer ação.

Respeitar:

- contrapeso vitalício;
- ALVO ≠ CAMPANHA;
- exceção da Geral Automática.

### Campanhas sem venda

Campanhas sem venda na janela e, portanto, sem ACOS calculável, NÃO devem ser enquadradas automaticamente nas faixas de ACOS.

Aplicar primeiro:

ENTREGA × CONVERSÃO.

Se houver pouca entrega/amostra insuficiente:

seguir a Régua de Radar.

### Alterações fora do ritual

Consertos de campanhas quebradas ou sem entrega por falha de configuração/lançamento podem ocorrer fora do ritual.

Isso é correção operacional, não otimização.

---

## 9. Otimização quinzenal

Realizar a cada 15 dias, independentemente do dia da semana.

Cada ciclo recebe:

[Ox dd/mm]

Exemplo:

[O4 25/08]

---

## 10. Régua de orçamento

Regra aplicada durante a otimização.

Janela principal:

30 dias.

Aplicar somente em campanhas com venda no período.

Sempre cruzar a decisão com a margem do SKU na Planilha Mestra.

### ACOS abaixo do Objetivo

Dobrar o orçamento.

### ACOS entre Objetivo e Máximo

Aumentar orçamento em 20%.

### ACOS acima do Máximo

Reduzir orçamento em 50% e revisar/limpar alvos.

### Campanha sem venda

Não aumentar orçamento automaticamente por esta régua.

Direcionar a análise para:

- Radar;
- vigia;
- checkpoint de conversão;
- pausa, quando realmente justificada.

ORÇAMENTO SÓ É ALAVANCA QUANDO A CAMPANHA CONSEGUE CONSUMIR O ORÇAMENTO.

Campanha que possui orçamento alto, mas gasta muito abaixo dele, deve ter entrega, lance e segmentação investigados antes de aumento de orçamento.

---

## 11. Entrega × Conversão

Princípio central.

Antes de pausar por ausência de vendas, diferenciar:

### AUSÊNCIA DE ENTREGA

A campanha praticamente:

- não imprime;
- não recebe cliques;
- não gasta;
- não alcança amostra suficiente.

A ausência de venda NÃO prova que a campanha é ruim.

Investigar:

- lance;
- competitividade;
- segmentação;
- elegibilidade;
- configuração;
- relevância;
- volume de busca.

Remédio típico:

Radar ou correção operacional.

### AUSÊNCIA DE CONVERSÃO

A campanha/segmentação recebeu volume relevante de cliques, porém não vendeu.

Investigar:

- página;
- preço;
- imagens;
- oferta;
- qualidade do tráfego;
- relevância.

Remédio típico:

checkpoint de conversão, seguido de correção, redução ou pausa.

Nunca tratar falta de entrega e falta de conversão com o mesmo remédio.

---

## 12. Régua de Radar

Aplicável a campanhas/segmentações com pouca entrega e amostra insuficiente.

### Processo

1. Identificar a pouca entrega.
2. Confirmar que a segmentação faz sentido comercial.
3. Verificar se a página está minimamente adequada.
4. Confirmar na Planilha Mestra que o produto possui margem para o teste.
5. Se tudo estiver adequado, subir o lance gradualmente para gerar amostra.

O percentual de aumento utilizado como referência vigente deve ser consultado em:

AMAZON ADS — PARÂMETROS VIGENTES.

Esse aumento é orientação, não obrigação cega.

Realizar aumentos controlados e preferencialmente uma intervenção por ciclo para permitir leitura dos resultados.

Objetivo:

COMPRAR DADOS, NÃO ESCALAR GASTO.

Ao atingir aproximadamente o checkpoint vigente de cliques sem venda:

interromper a escalada automática do lance e executar o checkpoint de conversão.

Campanha que possui orçamento disponível e mesmo assim gasta pouco não necessita automaticamente de mais orçamento.

Primeiro diagnosticar entrega.

---

## 13. Checkpoint de aproximadamente 15 cliques

Aproximadamente 15 cliques sem venda = checkpoint padrão de diagnóstico.

Não significa pausa automática universal.

Ao atingir esse patamar, revisar:

- página;
- preço;
- imagens;
- oferta;
- avaliações, quando relevantes;
- relevância da segmentação;
- conversão;
- elegibilidade;
- configuração.

### Página problemática

Corrigir e dar nova oportunidade de teste.

### Página saudável + amostra suficiente sem venda

Avaliar redução ou pausa da segmentação/alvo conforme o tipo de campanha.

Em produtos de ticket alto, esse checkpoint evita esperar que a campanha gaste uma parcela excessivamente grande do valor do produto antes de agir.

---

## 14. Contrapeso vitalício

Nível principal:

CAMPANHA.

Campanha com vendas históricas não deve ser condenada apenas por uma janela recente fria.

Antes de pausar uma campanha com histórico:

1. analisar janela recente;
2. analisar 30 dias;
3. verificar vitalício;
4. avaliar relevância das vendas históricas;
5. aplicar a régua no nível correto.

Vitalício saudável + era fria:

Vigia com contrato de saída, não pausa automática.

Vitalício ruim + era fria:

Pausa pode ser autorizada.

---

## 15. Regra ALVO ≠ CAMPANHA

Regra obrigatória.

As réguas operam em níveis diferentes e não devem ser misturadas.

### Nível ALVO

Em Produto Indicado:

15+ cliques vitalícios sem venda pode ser gatilho formal para pausa do alvo/segmentação.

Exemplo:

- alvo A: 18 cliques / 0 venda → pode ser pausado;
- alvo B: possui vendas → permanece;
- campanha como um todo → pode continuar ativa.

### Nível CAMPANHA

Julgamento utiliza:

- contrapeso vitalício;
- desempenho agregado;
- réguas de orçamento;
- contexto estratégico.

Pausar alvo ruim é manutenção.

Pausar campanha inteira é decisão de portfólio.

---

## 16. Campanha Geral Automática

Estrutura central de mineração e cobertura do catálogo.

### Regras próprias

- Nunca deve ser pausada como uma campanha comum.
- Em emergência, atuar sobre a segmentação/lance culpado e não pausar a Geral inteira.
- Trabalhar internamente por produtos, segmentações, negativas e ajustes.
- Cobrir catálogo, exceto SKUs temporariamente em tratamento de página.
- SKUs corrigidos podem retornar pela Geral como teste controlado.

---

## 17. Automáticas individuais

Papel principal:

- Radar;
- mineração de nicho;
- teste de SKUs/famílias específicas.

São regidas pelas réguas gerais:

- orçamento;
- Radar;
- checkpoint;
- emergência;
- entrega × conversão.

Uma automática redundante com Manual ou PI que já executa eficientemente o mesmo trabalho pode ser candidata a vigia ou pausa.

Decisão sempre baseada em mérito e dados.

---

## 18. Produto Indicado — PI

Estratégia de duas frentes:

### Concorrentes diretos

Lance cheio da estratégia vigente.

### Complementares

Lance reduzido em relação aos concorrentes diretos.

Os percentuais atuais devem ser consultados em:

AMAZON ADS — PARÂMETROS VIGENTES.

Preferir alvos ASIN exatos quando aplicável.

### Pausa/exclusão de alvo

Regra formal:

15+ cliques vitalícios sem venda pode autorizar pausa do alvo.

### Triagem

ASINs com menor volume de cliques acumulados sem venda podem entrar antecipadamente em lista de revisão.

O valor de triagem vigente está em:

AMAZON ADS — PARÂMETROS VIGENTES.

Triagem NÃO é exclusão automática.

Avaliar relevância e evolução da amostra.

### Engorda

Utilizar ASINs vencedores para encontrar novas oportunidades relacionadas ao concorrente que converte.

---

## 19. Manuais novas — Exata e Frase

Manual é estrutura de alta intenção/elite.

Entram preferencialmente:

- termos com venda comprovada;
- termos com evidência externa forte;
- oportunidades justificadas por dados.

Estrutura padrão:

- correspondência exata;
- correspondência de frase.

Dentro da mesma estratégia:

lance da EXATA > lance da FRASE.

Os valores atuais devem ser consultados em:

AMAZON ADS — PARÂMETROS VIGENTES.

Grupos multi-SKU podem ser utilizados em famílias homogêneas.

Revisar se um SKU monopolizar cliques sem converter.

Não confundir com as antigas campanhas de Palavra-Chave da estrutura original da assessoria, atualmente inativas.

---

## 20. Mineração e promoção de termos

Funil:

AUTOMÁTICAS / GERAL
↓
TERMO VENDE
↓
CANDIDATO A PROMOÇÃO
↓
MANUAL / EXATA

Termo com venda comprovada em campanha posteriormente pausada continua podendo ser aproveitado.

A pausa condena a estrutura, não necessariamente o termo.

Evidência externa forte pode acelerar a promoção.

---

## 21. Negativações

### Termos

A referência de poucos cliques sem venda é sinal de REVISÃO, não gatilho automático.

O valor de triagem atual deve ser consultado em:

AMAZON ADS — PARÂMETROS VIGENTES.

Antes de negativar, avaliar:

- relevância;
- intenção da busca;
- contexto do nicho;
- tamanho da amostra.

Termos claramente irrelevantes ao catálogo podem ser negativados por irrelevância independentemente do número de cliques.

Quando adequado:

- genéricos curtos → exata negativa;
- padrões amplos indesejados → frase negativa.

Proteger termos-core de SKUs em tratamento.

### ASINs de PI

Pausa/exclusão formal pela régua de 15+ cliques vitalícios sem venda.

Sinais menores servem somente para triagem.

---

## 22. Auditoria de campanhas zumbis/porão

A cada otimização:

varrer campanhas ativas fora das listas normais de gestão.

Procurar:

- gerações antigas;
- duplicatas;
- renomeações órfãs;
- campanhas esquecidas;
- SKUs com grafias que escapam de filtros.

Utilizar export que contenha a coluna Estado.

Zumbis identificados:

pausar, salvo mérito documentado.

Periodicamente realizar auditoria vitalícia mais ampla da conta.

---

## 23. Criação e teste de novas campanhas

Toda criação deve possuir:

- tese explícita;
- objetivo;
- estrutura escolhida;
- orçamento inicial controlado;
- prazo de prova;
- critério de julgamento.

Campanha nova sem entrega nos primeiros dias:

diagnosticar lance/configuração.

Correções de entrega podem ocorrer fora do ritual de otimização.

---

## 24. Estratégias de lance

Regra obrigatória.

NÃO EXISTE UMA ÚNICA ESTRATÉGIA DE LANCES PARA TODA A CONTA.

### Estruturas criadas na fase original da assessoria

Utilizam predominantemente:

Lances dinâmicos — aumentar e reduzir.

### Estruturas novas

Podem utilizar:

Lances fixos.

Antes de alterar lance ou estratégia:

VERIFICAR A CONFIGURAÇÃO ATUAL DA CAMPANHA.

Nunca presumir estratégia apenas pela memória ou geração estimada.

O mapa campanha por campanha deve ser consultado no documento de estado/parâmetros vigente quando disponível.

---

## 25. Posicionamento

Ajustes de topo de pesquisa devem ser definidos por nicho conforme conversão comprovada.

Valores atuais:

consultar AMAZON ADS — PARÂMETROS VIGENTES.

Utilizar o relatório de Parcela de Impressões como apoio.

Exemplo de interpretação:

- share baixo + termo com alta conversão → possível espaço de crescimento;
- rank alto + share alto → possibilidade de estar próximo do teto.

---

## 26. Nomenclatura e rastreabilidade

Campanhas alteradas no ciclo:

[Ox dd/mm]

Relatórios recorrentes:

WN | Tipo | 30d | Recorrente

Registrar nota-resumo de cada ciclo.

Vigias e testes devem possuir:

- prazo;
- gatilho de saída;
- registro da decisão.

---

## 27. Uso da Planilha Mestra

Toda decisão de Ads que dependa de:

- margem;
- preço;
- custo;
- tarifa;
- frete;
- classe logística;
- rentabilidade;

deve consultar a versão oficial mais recente da Planilha Mestra disponível no Contexto do Project.

Utilizar principalmente:

Simulador → análise de margem por SKU.

Registro/Livro → desempenho real de vendas.

Não utilizar valor antigo da memória quando a Mestra vigente possuir informação mais recente.

Seguir também o Guia Oficial da Planilha Mestra.

---

## 28. Relatórios utilizados

### WN Termos de Pesquisa 30d

Função:

- colheita de vencedores;
- sinais de negativação.

### WN Segmentação 30d

Função:

réguas por alvo.

### WN Produtos Anunciados 30d

Função:

- vendas por SKU;
- halo;
- fase-produto da Geral.

### WN Posicionamento 30d

Função:

leitura de posicionamentos.

### WN Campanhas 30d

Função:

réguas de orçamento.

### WN Parcela de Impressões 30d

Função:

identificar espaço de crescimento por termo.

### Export manual do Gerenciador

Janela:

7 dias / Era.

Importante por possuir coluna Estado.

### Relatório de negócios

Mensal.

Utilizado para vendas totais e leitura orgânico × Ads.

### Planilha Mestra

Margem, registro e livro de vendas.

### Relatórios Mercado Livre

Sinal externo sob demanda.

---

## 29. Mercado Livre como sinal externo

Mercado Livre é camada adicional de inteligência.

Pode ser utilizado para:

- validar demanda;
- identificar vocabulário;
- confirmar product-market fit;
- encontrar oportunidades;
- apoiar decisões quando a Amazon ainda não possui amostra.

Não substitui os dados Amazon.

É sinal complementar.

A confirmação final é sempre o desempenho dentro da própria Amazon.

---

## 30. Política e elegibilidade de produtos

Produto não qualificado para Ads, mas com listing saudável, pode representar bloqueio de política de publicidade e não necessariamente problema de venda.

Nesses casos:

- adequar conteúdo;
- verificar política;
- contestar quando aplicável.

### Nicho relacionado a fumo

Regra da casa:

Título e bullets utilizam vocabulário voltado à coleta de resíduos, como:

- coletor de bitucas;
- coletor de resíduos.

Campo semântico relacionado a fumo pode ser tratado no backend conforme a política vigente.

Campanha de SKU inelegível:

pausar com registro de reativação quando elegível.

Não contar como falha de desempenho.

Após edição de conteúdo, aguardar reprocessamento da Amazon antes de concluir que a alteração não funcionou.

---

## 31. Exceções e casos especiais

### Geral

Nunca pausar como campanha comum.

### Nichos de busca rara e alta conversão

Exemplo: extintor.

Podem exigir ciclo de julgamento mais longo.

Semanas sem venda não condenam automaticamente.

### Ticket alto

Checkpoint de aproximadamente 15 cliques ganha importância adicional.

### SKU com venda orgânica recente

Pode reabrir discussão sobre Ads antes de pausa definitiva.

### SKU em tratamento de página

Pode sair temporariamente do Ads até correção.

Depois retorna de maneira controlada.

### Vigias

Só existem com contrato explícito de saída.

---

## 32. O que NÃO fazer

- Não otimizar estruturalmente fora do ciclo quinzenal, exceto emergências e consertos de entrega.
- Não agir estruturalmente apenas porque o ACOS semanal ficou entre Máximo e Emergência.
- Não enquadrar campanha sem venda nas faixas de ACOS.
- Não pausar campanha com vendas históricas sem contrapeso vitalício.
- Não pausar campanha inteira porque um alvo é ruim.
- Não excluir ASIN automaticamente por sinal de triagem.
- Não negativar termo automaticamente por sinal de triagem.
- Não subir orçamento de campanha que não consegue consumir o orçamento atual.
- Não presumir estratégia de lance.
- Não adicionar termo sem prova a campanha manual, salvo evidência externa forte devidamente justificada.
- Não aplicar régua financeira sem consultar a Planilha Mestra.
- Não criar rotina para estruturas inativas.
- Não transformar episódio histórico em regra.
- Não congelar parâmetro vigente como se fosse método.

---

## 33. Evolução do método / regras aposentadas

O método nasceu a partir da metodologia utilizada durante a fase da assessoria e foi evoluído pela operação Winnet.

As regras abaixo são preservadas como histórico e NÃO devem ser utilizadas automaticamente.

### “Gastou menos de R$5 → +20% CPC”

Regra original.

Foi utilizada no início e ficou dormente posteriormente.

Sua lógica foi absorvida pela Régua de Radar e pelo diagnóstico de campanhas sufocadas.

### “Gastou 50% do valor do produto sem vender”

Aposentada por ser permissiva demais em produtos de ticket alto.

Substituída pelo checkpoint de aproximadamente 15 cliques.

### 20–25 e 30–50 cliques

Referências históricas de calibragem.

Não são réguas oficiais.

### Campanhas de Categoria

Estrutura antiga atualmente inativa.

Não criar rotina recorrente.

### Palavra-Chave da estrutura antiga

Atualmente inativa.

Não confundir com as campanhas manuais novas exata/frase.

### Cupons percentuais em massa

Substituídos pela estratégia de promoção vigente.

### Meta ACOS 28%

Regra herdada antiga.

Substituída pelos marcos atuais de ACOS.

### Pausa direta por era fria

Substituída pelo contrapeso vitalício.

---

## 34. Estado e parâmetros variáveis

Inventário de estratégias de lance, mapa atual de campanhas, campanhas vigias/radar, ciclo atual, lances, posicionamentos, promoções e outros parâmetros que mudam com o tempo NÃO pertencem ao corpo permanente deste Playbook.

Consultar:

AMAZON ADS — PARÂMETROS VIGENTES

Esse documento deve ser atualizado sempre que houver alteração relevante ou ao final dos ciclos de otimização.

---

## 35. Checklist completo de uma otimização Ox

1. Coletar os 6 relatórios recorrentes + export manual com recorte da Era e coluna Estado.
2. Validar consistência entre relatórios.
3. Colher termos/alvos com venda e identificar candidatos à promoção.
4. Aplicar régua de orçamento de 30 dias em campanhas com venda, cruzando margem na Planilha Mestra.
5. Julgar testes e vigias da Era aplicando Entrega × Conversão e checkpoint antes de qualquer pausa.
6. Aplicar contrapeso vitalício antes de pausar campanha com venda histórica.
7. Varrer zumbis/porão.
8. Executar rodada de Radar onde houver entrega insuficiente.
9. Revisar sinais de negativação e triagem.
10. Pausar alvos de PI apenas pela régua formal ou quando houver justificativa específica documentada.
11. Criar ou engordar estruturas aprovadas, verificando a estratégia de lance antes de qualquer ajuste.
12. Renomear campanhas alteradas com [Ox dd/mm].
13. Registrar nota-resumo do ciclo.
14. Agendar próximo ciclo em aproximadamente 15 dias e monitoramentos semanais.
15. Realizar auditoria pós-execução com novo export para confirmar que alterações foram aplicadas corretamente.

---

# REGRA FINAL

Este Playbook é a fonte oficial do MÉTODO Amazon Ads Winnet.

Para parâmetros atuais, consultar:

AMAZON ADS — PARÂMETROS VIGENTES

Para preço, custo, margem, tarifa, frete e rentabilidade por SKU, consultar:

PLANILHA MESTRA vigente.

Para dados de desempenho, consultar:

RELATÓRIOS AMAZON vigentes.

Nunca substituir uma fonte atual e confiável por memória antiga.