---
name: amazon-ads-winnet
description: Analisa Amazon Ads da Winnet com relatorios, Playbook, Parametros e Planilha Mestra; cruza Ads com vendas totais e recomenda acoes sem executar mudancas.
---

# Otimização Amazon Ads Winnet

**Versão da Skill:** v1.6.3

## Objetivo

Executar de forma repetível a análise operacional de Amazon Ads da Winnet Metais.

Esta Skill deve:

**LER → VALIDAR → CRUZAR → ANALISAR → EXPLICAR → RECOMENDAR**

Nesta versão, **não executar alterações automaticamente** em campanhas, orçamento, lances, segmentações, negativas, promoções, preços ou listings.

Toda recomendação deve ser apresentada para revisão humana antes de qualquer alteração.

---

## Quando usar esta Skill

Use esta Skill quando o usuário pedir, por exemplo:

- “Faça a O4.”
- “Faça a otimização quinzenal.”
- “Faça o monitoramento semanal.”
- “Analise os relatórios de Amazon Ads.”
- “Veja como estão minhas campanhas.”
- “Analise essa campanha.”
- “O que devo alterar no Ads?”
- “Cruze as vendas de Ads com as vendas totais.”
- “Veja o que foi Ads e o que não foi atribuído a Ads.”
- “Quais campanhas devo escalar, manter, corrigir, vigiar ou pausar?”
- “Analise termos, segmentações ou Produto Indicado.”
- “Veja se alguma campanha está sem entrega.”
- “Veja se existem campanhas zumbis.”

Se o pedido for apenas sobre criação de listing, SEO, imagens ou catálogo sem análise de publicidade, esta Skill não é a principal Skill.

---

# 1. FONTES OFICIAIS

Quando esta Skill for usada dentro do Project Amazon da Winnet, consultar as fontes oficiais disponíveis.

## Método

Fonte oficial:

**PLAYBOOK OFICIAL — AMAZON ADS WINNET v1**

O Playbook define COMO analisar e decidir.

Não substituir suas regras por práticas genéricas de Amazon Ads sem apontar explicitamente o conflito.

## Estado e parâmetros atuais

Fonte oficial:

**AMAZON ADS — PARÂMETROS VIGENTES**

Usar para:

- ACOS Objetivo, Máximo e Emergência vigentes;
- lances atuais conhecidos;
- ajustes de posicionamento;
- estado atual das campanhas;
- ciclos;
- vigias;
- Radar;
- promoções;
- inventário de estratégias de lance quando disponível.

Parâmetros podem ficar desatualizados. Se um relatório, console, arquivo ou informação atual confirmada pelo usuário mostrar estado mais recente, usar o dado mais recente e confiável e sinalizar a diferença.

## Dados financeiros e por SKU

Fontes oficiais:

**Planilha_Mestra_Winnet vigente**
e
**GUIA — PLANILHA MESTRA AMAZON WINNET**

Usar para:

- SKU;
- preço;
- custo;
- margem;
- tarifa;
- frete;
- classe logística;
- rentabilidade.

Nunca inventar um dado ausente.

## Desempenho

Usar os relatórios Amazon mais recentes fornecidos para a tarefa.

Para dados de desempenho, o relatório do período analisado prevalece sobre histórico antigo ou memória.

---

# 2. HIERARQUIA POR TIPO DE INFORMAÇÃO

Não usar uma única fonte para tudo.

## Para MÉTODO

1. Playbook Oficial
2. validação explícita do usuário na conversa atual
3. histórico
4. memória

## Para PERFORMANCE

1. relatório Amazon mais recente e compatível com o período
2. dados atuais confirmados pelo usuário
3. Parâmetros Vigentes
4. histórico
5. memória

## Para FINANCEIRO / SKU

1. Planilha Mestra vigente
2. informação atual confirmada pelo usuário
3. Parâmetros Vigentes quando aplicável
4. histórico
5. memória

## Para ESTADO DA CAMPANHA

1. export/console atual
2. informação atual confirmada pelo usuário
3. Parâmetros Vigentes
4. histórico
5. memória

Se fontes confiáveis entrarem em conflito, não esconder a divergência.

---

# 3. CLASSIFICAR O TIPO DE TAREFA

Antes da análise, identificar qual modo está sendo executado.

## MODO A — Monitoramento semanal

Horizonte principal:

**7 dias**

Objetivo:

detectar emergências, falhas, falta de entrega e situações que precisam de acompanhamento.

Não transformar o monitoramento semanal em otimização quinzenal.

## MODO B — Otimização quinzenal Ox

Executar quando o usuário pedir O1, O2, O3, O4 etc. ou “otimização quinzenal”.

Ritmo:

**a cada 15 dias**

Janelas:

- 30 dias para réguas principais;
- Era para testes/vigias;
- Vitalício para contrapesos e acumulados;
- 7 dias como leitura complementar.

## MODO C — Investigação pontual

Exemplos:

- uma campanha específica;
- um SKU;
- uma segmentação;
- um ASIN;
- um termo;
- uma queda de entrega;
- uma suspensão.

Usar apenas as partes do método relevantes ao caso.

## MODO D — Ads × vendas totais

Objetivo:

cruzar desempenho de Ads com vendas totais e estimar a parcela não atribuída a Ads quando os dados forem compatíveis.

Pode ser executado sozinho ou dentro da otimização.

Se o modo não estiver explícito, inferir pelos arquivos e pelo pedido. Se ainda houver ambiguidade relevante, declarar o modo assumido antes de analisar.

---

# 4. INVENTÁRIO DE DADOS ANTES DE ANALISAR

Antes de concluir qualquer coisa, listar internamente quais fontes estão disponíveis.

Para uma otimização completa, procurar preferencialmente:

1. Relatório de Termos de Pesquisa — 30 dias
2. Relatório de Segmentação — 30 dias
3. Relatório de Produtos Anunciados — 30 dias
4. Relatório de Posicionamento — 30 dias
5. Relatório de Campanhas — 30 dias
6. Relatório de Parcela de Impressões — 30 dias
7. Export manual do Gerenciador — 7 dias e/ou Era, com coluna Estado
8. Relatório de Negócios / vendas totais do período, quando o objetivo incluir Ads × orgânico
9. Planilha Mestra vigente
10. Playbook Oficial
11. Parâmetros Vigentes

Não exigir todos os relatórios para produzir qualquer análise.

Se faltarem fontes:

- analisar o que for possível;
- indicar claramente o que está faltando;
- indicar quais conclusões ficam limitadas;
- nunca preencher lacunas com números inventados.

---

# 5. VALIDAR OS RELATÓRIOS

Antes de aplicar réguas:

## Conferir período

Verificar datas inicial e final.

Não cruzar 7 dias de um relatório com 30 dias de outro como se fossem a mesma janela.

## Conferir unidade

Distinguir, quando disponível:

- pedidos;
- unidades;
- vendas em R$;
- vendas atribuídas a Ads;
- cliques;
- impressões.

Não subtrair “pedidos” de “unidades”.

## Conferir duplicidade

Relatórios de Ads representam visões diferentes do mesmo desempenho.

**Não somar vendas atribuídas de vários relatórios Ads entre si.**

Exemplo:

não somar “Campanhas + Produtos Anunciados + Termos” para obter vendas Ads totais.

Escolher a visão apropriada para cada pergunta.

## Conferir números BR

Validar:

- vírgula decimal;
- ponto de milhar;
- moeda;
- porcentagem.

Quando necessário, utilizar execução de código/Python/pandas para ler CSV/XLSX e validar totais.

## Conferir consistência

Comparar totais entre relatórios quando deveriam ser compatíveis.

Se divergirem materialmente:

- registrar a divergência;
- identificar possível motivo;
- reduzir confiança da recomendação quando necessário.

---

# 6. ADS × VENDAS TOTAIS × NÃO ATRIBUÍDAS A ADS

Esta etapa é obrigatória quando o usuário pedir visão de Ads x orgânico ou quando houver Relatório de Negócios compatível disponível em uma otimização completa.

## Mostrar separadamente

Quando os dados permitirem:

- vendas totais;
- vendas/unidades atribuídas a Ads;
- vendas/unidades não atribuídas a Ads;
- participação estimada de Ads;
- participação estimada não atribuída a Ads.

## Regra de cálculo

Somente calcular:

**não atribuídas a Ads = vendas totais − vendas atribuídas a Ads**

quando:

- o período for compatível;
- a unidade de medida for compatível;
- o SKU/produto puder ser relacionado de forma confiável;
- não houver evidência de que as fontes medem conceitos incompatíveis.

## Terminologia

Não chamar automaticamente toda diferença de “orgânico exato”.

Preferir:

**“vendas não atribuídas a Ads / estimativa de orgânico”**

porque relatórios de Ads podem usar lógica e janelas de atribuição próprias.

Se houver uma fonte que forneça diretamente vendas orgânicas, usar a nomenclatura da fonte.

## Se os dados não forem compatíveis

Dizer explicitamente:

“Consigo analisar as vendas atribuídas a Ads, mas não consigo calcular com segurança a parcela não atribuída a Ads neste período porque as fontes não estão comparáveis.”

Nunca estimar sem base.

## Reconciliação temporal

Não deduzir quais dias específicos foram Ads ou não-Ads apenas porque valores agregados de vendas atribuídas coincidem com valores diários do Painel de Vendas.

Sem um relatório de Ads com granularidade diária apropriada, manter a análise Ads × total no agregado do período.

Coincidência de valor não prova correspondência causal ou temporal.

## Janela de atribuição / maturação

Quando o período de vendas totais e a lógica de atribuição do Ads puderem produzir maturação posterior dos números, sinalizar a limitação.

**Não presumir automaticamente a direção do viés.** Informar que vendas atribuídas podem mudar/maturar e que a direção e a magnitude da diferença não são determináveis apenas pelos arquivos atuais, salvo quando houver evidência específica que permita concluir o contrário.

---

# 7. VISÃO GERAL DA CONTA

Antes de entrar campanha por campanha, produzir uma leitura executiva do período, quando os dados permitirem.

Exibir:

- gasto total Ads;
- vendas atribuídas a Ads;
- ACOS geral;
- pedidos/unidades de Ads, quando disponíveis;
- vendas totais;
- vendas não atribuídas a Ads / estimativa de orgânico;
- participação de Ads nas vendas;
- principais campanhas geradoras de venda;
- principais concentrações de gasto;
- principais emergências;
- principais oportunidades.

Separar:

**FATO**
do que os relatórios mostram.

**INTERPRETAÇÃO**
o que os dados sugerem.

**RECOMENDAÇÃO**
o que fazer.

---

# 8. ANÁLISE DE CAMPANHA

Para cada campanha relevante, levantar o máximo disponível de:

- nome;
- status;
- tipo;
- estratégia de lance;
- orçamento;
- gasto;
- impressões;
- cliques;
- CTR;
- CPC;
- vendas atribuídas;
- ACOS;
- período;
- histórico/vitalício quando necessário;
- papel atual: Vendedora, Aposta, Vigia, Radar, Pausada Condicional ou Coberta pela Geral.

Não inventar campos ausentes.

---

# 9. PRIMEIRO DIAGNÓSTICO: ENTREGA × CONVERSÃO

Todo caso sem venda deve passar por este diagnóstico antes de uma decisão.

## CLASSIFICAÇÃO INICIAL OBRIGATÓRIA

Poucos cliques + zero vendas NÃO é, por si só, ausência de entrega.
A quantidade pequena de cliques isolada não determina o diagnóstico.

Classificar inicialmente como:

**AMOSTRA INSUFICIENTE / POSSÍVEL PROBLEMA DE ENTREGA**

Antes de concluir que existe ausência de entrega, verificar obrigatoriamente:

- impressões;
- CTR;
- gasto;
- elegibilidade;
- configuração;
- capacidade de consumir o orçamento.

### Padrões de leitura

- Poucas impressões + poucos cliques + gasto baixo → **possível** falta de entrega.
- Muitas impressões + poucos cliques / CTR baixo → possível problema de CTR, relevância, criativo ou oferta; não classificar automaticamente como falta de entrega.
- Cliques em volume relevante + zero vendas → possível problema de conversão.

**Não usar um número absoluto de impressões como prova isolada.** Interpretar impressões considerando:

- período analisado;
- nicho e volume de busca;
- tipo de segmentação;
- elegibilidade;
- configuração;
- estratégia de lance;
- capacidade de consumir orçamento;
- Parcela de Impressões e Posicionamento, quando disponíveis.

Uma campanha pode ter simultaneamente exposição limitada e CTR ruim. Só confirmar “ausência de entrega” quando o conjunto de evidências sustentar essa conclusão.

Se impressões, CTR ou gasto não estiverem disponíveis, manter a classificação em **AMOSTRA INSUFICIENTE** e declarar exatamente qual dado falta.

## AUSÊNCIA DE ENTREGA

Sinais, após confirmação pela classificação inicial:

- poucas impressões;
- poucos cliques;
- gasto muito baixo;
- amostra insuficiente;
- incapacidade de consumir o orçamento disponível.

Investigar:

- lance;
- estratégia de lance;
- competitividade;
- segmentação;
- elegibilidade;
- configuração;
- relevância;
- volume de busca.

Não condenar a campanha por não vender se ela não teve oportunidade real de teste.

## AUSÊNCIA DE CONVERSÃO

Sinais:

- recebeu cliques em volume relevante;
- gastou;
- não vendeu.

Investigar:

- página;
- preço;
- imagens;
- oferta;
- avaliações;
- relevância da busca/alvo;
- qualidade do tráfego;
- elegibilidade.

Não resolver problema de conversão apenas aumentando lance.

---

# 10. RÉGUA DE RADAR

Usar somente quando a análise da seção 9 indicar **falta de entrega suficientemente sustentada pelos dados + amostra insuficiente**.

Poucos cliques isoladamente NÃO acionam Radar. Um CTR alto com poucas impressões, ou poucas impressões em nicho de busca rara, também não confirma sozinho que aumentar lance é o remédio.

Antes, verificar impressões, CTR, gasto, período, nicho/volume de busca, elegibilidade, configuração, capacidade de consumir orçamento, estratégia de lance e, quando disponíveis, Parcela de Impressões/Posicionamento.

Se a evidência ainda não separar entrega de CTR/relevância, classificar como:

**CANDIDATO À INVESTIGAÇÃO DE ENTREGA / NÃO DECIDIR AINDA**

e não como Radar confirmado.

Antes de recomendar aumento de lance:

1. confirmar que a segmentação faz sentido;
2. verificar se a página está minimamente adequada;
3. verificar margem na Planilha Mestra;
4. conferir estratégia de lance atual da campanha;
5. verificar se o problema realmente parece ser entrega.

Se aprovado:

pode recomendar aumento gradual de lance conforme a referência vigente nos Parâmetros.

O aumento não é automático.

Objetivo:

**GERAR AMOSTRA, NÃO ESCALAR GASTO.**

Ao atingir aproximadamente o checkpoint vigente sem venda:

parar de escalar automaticamente e abrir diagnóstico de conversão.

---

# 11. CHECKPOINT DE CLIQUES

Usar o valor vigente definido pelo Playbook/Parâmetros.

No método atual:

aproximadamente **15 cliques sem venda** é checkpoint padrão de diagnóstico.

Ao chegar nesse patamar:

- revisar página;
- preço;
- imagens;
- oferta;
- avaliações;
- relevância;
- conversão;
- elegibilidade/configuração.

## Página problemática

Recomendar correção e nova oportunidade de teste.

## Página saudável + amostra suficiente sem venda

Avaliar redução ou pausa no nível adequado.

Não tratar o checkpoint como pausa automática universal.

---

# 12. PRODUTO INDICADO — ALVO ≠ CAMPANHA

Em PI, aplicar a régua formal vigente no nível do ALVO.

No método atual:

**15+ cliques vitalícios sem venda pode autorizar pausa do alvo/segmentação.**

Nunca transformar automaticamente um alvo ruim em pausa da campanha inteira.

Antes de recomendar pausa de uma campanha PI:

aplicar o contrapeso vitalício da campanha.

ASINs com sinais menores de cliques sem venda entram apenas em triagem/revisão conforme Parâmetros Vigentes.

---

# 13. CONTRAPESO VITALÍCIO

Antes de recomendar pausa de CAMPANHA com histórico de vendas:

1. olhar janela recente;
2. olhar 30 dias;
3. olhar vitalício;
4. verificar relevância das vendas históricas;
5. distinguir alvo ruim de campanha ruim.

Campanha com histórico saudável + Era fria:

preferir Vigia com contrato de saída quando fizer sentido.

Campanha historicamente ruim + Era ruim:

pausa pode ser recomendada conforme o Playbook.

---

# 14. RÉGUA DE ORÇAMENTO

Aplicar somente no ciclo de otimização e conforme valores vigentes.

Usar:

- janela de 30 dias;
- campanhas com venda no período;
- margem do SKU/família;
- orçamento atual;
- status atual da campanha quando disponível;
- capacidade real de consumir o orçamento ao longo do período.

Não aumentar orçamento por essa régua em campanha sem venda.

Antes de sugerir aumento:

verificar campanha a campanha se ela realmente consegue consumir o orçamento atual.

**Não concluir que nenhuma campanha está limitada por orçamento apenas comparando a soma dos orçamentos configurados da conta com o gasto médio agregado.** Relatórios podem conter campanhas atualmente inativas, pausadas ou com períodos diferentes de exposição, e uma campanha individual pode atingir o teto em determinados dias mesmo quando a conta inteira está muito abaixo da soma dos orçamentos.

Quando houver apenas visão agregada, usar linguagem cautelosa:

**“Não há evidência agregada de restrição generalizada por orçamento.”**

Se uma campanha gasta muito abaixo do próprio teto:

investigar entrega/lance/segmentação antes de aumentar orçamento.

A recomendação deve mostrar:

**orçamento atual → orçamento sugerido → motivo → evidência de que o orçamento é de fato a restrição**

---

# 15. LANCES

Antes de recomendar qualquer mudança de lance:

**confirmar a estratégia de lance atual da campanha.**

Não existe uma única estratégia na conta.

Campanhas de gerações diferentes podem usar:

- Lances dinâmicos — aumentar e reduzir;
- Lances fixos.

Se a estratégia não estiver disponível:

não presumir.

Marcar:

**“Estratégia de lance precisa ser confirmada antes da execução.”**

Toda recomendação deve mostrar:

**lance atual → lance sugerido → variação → motivo → confiança**

---

# 16. MANUAIS NOVAS

Tratar Manual como estrutura de alta intenção.

Termos entram preferencialmente com:

- venda comprovada na Amazon; ou
- evidência externa forte e justificada.

Na mesma estratégia:

**lance Exata > lance Frase**

Não promover automaticamente todo termo com clique.

O funil é:

Automática/Geral → termo prova valor → candidato a Manual.

---

# 17. TERMOS DE PESQUISA

Separar termos em:

## Vencedores

Termos com venda/conversão e potencial de promoção.

## Revisão

Termos com cliques sem venda, mas ainda sem evidência suficiente para negativar.

## Irrelevantes

Termos claramente incompatíveis com o catálogo/produto.

Podem ser candidatos a negativação por irrelevância.

## Não agir

Termos com amostra insuficiente sem outro problema.

A referência de poucos cliques vigente nos Parâmetros é **triagem**, não gatilho automático.

---


## Regra de precisão — irrelevância semântica

**Baixa intenção, generalidade ou baixa conversão NÃO são sinônimos de irrelevância.**

Antes de recomendar negativação por irrelevância, separar:

1. **IRRELEVANTE CONFIRMADO** — categoria/produto/atributo claramente incompatível com o SKU anunciado.
2. **AMBÍGUO / GENÉRICO** — termo amplo como material, ambiente, uso, dimensão ou palavra isolada que ainda pode ter relação comercial com o produto.
3. **RELEVANTE** — descreve produto, aplicação, material, medida, capacidade, acabamento ou concorrente compatível com a tese da campanha.

Termos como `inox`, `cozinha`, `escritório`, `basculante`, dimensões, capacidades e aplicações NÃO devem ser negativados apenas por serem genéricos. Verificar o SKU e o listing antes.

Marca concorrente também não é automaticamente “boa conquista”: classificar como **CONQUISTA POTENCIAL / REVISAR RELEVÂNCIA**, salvo evidência de que faz sentido para a estratégia.

Se uma tabela contiver itens ambíguos ou relevantes, NÃO intitulá-la “termos irrelevantes”. Usar “candidatos à revisão semântica” e separar os grupos.


# 18. NEGATIVAÇÕES

Nunca negativar apenas porque atingiu um número pequeno de cliques.

Antes de recomendar negativa:

avaliar:

- relevância;
- intenção;
- contexto;
- tamanho da amostra;
- risco de bloquear caudas longas úteis.

Termos claramente irrelevantes podem ser negativados pela própria irrelevância.

Ao recomendar negativa, informar:

- termo;
- campanha;
- tipo sugerido: exata negativa ou frase negativa;
- motivo;
- evidência.

---

# 19. PRODUTOS / SKU

Quando os relatórios permitirem, gerar uma visão por SKU.

Mostrar:

- SKU;
- vendas totais;
- vendas atribuídas a Ads;
- vendas não atribuídas a Ads / estimativa de orgânico;
- gasto Ads relacionado quando disponível;
- ACOS ou eficiência da publicidade quando aplicável;
- preço;
- margem relevante da Mestra;
- campanhas em que aparece;
- diagnóstico;
- decisão sugerida.

Se as fontes não permitirem atribuição confiável por SKU:

não inventar a quebra.

---

# 20. PÁGINA / LISTING

A Skill não deve fazer auditoria profunda de listing automaticamente para todos os SKUs.

Abrir fila de página quando houver evidência, por exemplo:

- volume relevante de cliques sem venda;
- tráfego sem conversão;
- preço/oferta incompatível;
- bloqueio/elegibilidade;
- baixa qualidade visual/conteúdo evidente.

Quando recomendar correção, indicar o motivo específico observado.

---

# 21. CAMPANHA GERAL AUTOMÁTICA

Tratar como exceção.

Não recomendar pausa da Geral como campanha comum.

Em problema:

atuar por:

- produto;
- segmentação;
- lance;
- negativações;
- elegibilidade;
- fase-produto.

Em emergência, seguir a regra específica do Playbook.

---

# 22. ZUMBIS / PORÃO

Na otimização completa:

usar o export com Estado para procurar campanhas ativas fora das listas de gestão.

Sinalizar:

- campanha;
- status;
- gasto;
- histórico;
- possível duplicidade;
- mérito ou ausência de mérito.

Não pausar automaticamente.

Recomendar ação e justificar.

---

# 23. VIGIAS

Toda recomendação de Vigia precisa conter:

- motivo;
- lance/orçamento proposto quando aplicável;
- prazo;
- data/ciclo de reavaliação;
- gatilho de saída.

Não usar “vigia” como sinônimo de “deixar lá”.

---

# 24. MERCADO LIVRE COMO SINAL EXTERNO

Quando houver dados MELI relevantes:

usar como sinal complementar para:

- demanda;
- vocabulário;
- product-market fit;
- oportunidades.

Não substituir performance Amazon por MELI.

Explicitar quando uma recomendação depende de evidência externa.

---

# 25. NÍVEL DE CONFIANÇA

Toda recomendação relevante deve receber:

## ALTA

Dados atuais, fontes compatíveis, regra clara e evidência suficiente.

## MÉDIA

Dados razoáveis, mas com alguma limitação de amostra ou contexto.

## BAIXA

Falta fonte, há conflito de dados, período insuficiente ou hipótese relevante ainda não validada.

Baixa confiança não significa “não fazer nada”; significa sinalizar a incerteza.

---

# 26. CATEGORIAS DE DECISÃO

Usar preferencialmente estas categorias na saída:

**MANTER**
Sem alteração recomendada.

**ESCALAR**
Performance e contexto comportam crescimento.

**RADAR / DAR MAIS CHANCE**
Falta de entrega suficientemente sustentada pelos dados + amostra insuficiente, após verificação de impressões, CTR, gasto, período, nicho/volume de busca, elegibilidade, configuração, estratégia de lance e capacidade de consumir orçamento.

**INVESTIGAR ENTREGA**
Amostra limitada e dados ainda insuficientes para separar falta de entrega de CTR/relevância. Solicitar/consultar impressões, CTR, período, volume de busca, elegibilidade, configuração, estratégia de lance e Parcela de Impressões/Posicionamento quando disponíveis. Não aumentar lance ainda.

**CORRIGIR CTR / CRIATIVO**
Exposição suficiente no contexto do nicho + poucos cliques / CTR baixo. Revisar principalmente imagem principal, título, preço, oferta e relevância antes de recomendar aumento de lance. Não confundir com problema de conversão pós-clique.

**VIGIA**
Manter sob condição e prazo explícitos.

**INVESTIGAR CONVERSÃO DO SKU**
SKU anunciado acumula cliques/gasto relevantes em múltiplas campanhas sem venda atribuída. Isso sustenta um problema de conversão associado ao SKU anunciado, mas NÃO prova que a página é a causa. Investigar tráfego, termos, segmentação, preço, oferta, página, avaliações, elegibilidade e margem antes de escolher o remédio.

**CORRIGIR PÁGINA**
Entrega existe, conversão é o principal problema aparente.

**REDUZIR**
Reduzir orçamento/lance/alvo conforme a régua.

**PAUSAR ALVO**
Segmentação/ASIN específico atingiu critério.

**PAUSAR CAMPANHA**
Somente após análise no nível da campanha e contrapeso quando aplicável.

**NEGATIVAR**
Termo irrelevante ou decisão validada após revisão.

**PROMOVER PARA MANUAL**
Termo vencedor ou oportunidade com evidência forte.

**NÃO DECIDIR AINDA**
Dados insuficientes ou incompatíveis.

---

# 27. FORMATO OBRIGATÓRIO DA ENTREGA

## A. Resumo executivo

Em linguagem direta:

- o que aconteceu;
- o que melhorou;
- o que piorou;
- maiores oportunidades;
- maiores riscos;
- quantas ações são sugeridas.

## B. Qualidade dos dados

Informar:

- relatórios recebidos;
- períodos;
- relatórios ausentes;
- divergências;
- limitações.

## C. Ads × vendas totais

Quando possível:

| Métrica | Resultado |
|---|---:|
| Vendas totais | |
| Vendas atribuídas a Ads | |
| Não atribuídas a Ads / estimativa de orgânico | |
| Participação Ads | |
| Participação não atribuída a Ads | |
| Gasto Ads | |
| ACOS Ads | |

Se não puder calcular, explicar por quê.

## D. Diagnóstico por campanha

Usar tabela semelhante:

| Campanha | Situação | Dados principais | Diagnóstico | Decisão sugerida | Confiança |
|---|---|---|---|---|---|

## E. Diagnóstico por SKU

Quando os dados permitirem:

| SKU | Total | Ads | Não atribuído a Ads | Margem | Diagnóstico | Decisão |
|---|---:|---:|---:|---:|---|---|

## F. Termos e alvos

Separar:

- vencedores;
- candidatos a promoção;
- triagem;
- irrelevantes;
- alvos de PI candidatos a pausa;
- nenhuma ação.

## G. Lista final de alterações sugeridas

Esta seção deve ser extremamente prática.

Exemplo:

1. Campanha X — lance R$1,00 → R$1,20 — RADAR — confiança média.
2. Campanha Y — orçamento R$40 → R$48 — ACOS entre Objetivo e Máximo, margem comporta — confiança alta.
3. PI Z — pausar somente ASIN B0XXXX — 17 cliques vitalícios, 0 venda — confiança alta.
4. Termo “xxxxx” — negativar exata — claramente irrelevante — confiança alta.
5. SKU ABC — revisar página antes de nova mexida — 16 cliques, 0 venda — confiança média.

## H. Ações que NÃO devem ser feitas agora

Informar campanhas/alvos que parecem ruins à primeira vista, mas que ainda não possuem evidência suficiente para ação.

## I. Dados que faltam

Informar exatamente o que seria necessário para elevar a confiança.

---

# 28. TRAVA DE EXECUÇÃO — OBRIGATÓRIA

Nesta versão da Skill:

**NÃO EXECUTAR ALTERAÇÕES AUTOMATICAMENTE.**

Mesmo que ferramentas ou conectores permitam escrita, não:

- alterar orçamento;
- alterar lance;
- pausar campanha;
- pausar alvo;
- negativar termo;
- criar campanha;
- editar anúncio;
- editar preço;
- alterar promoção;
- alterar listing.

O papel desta Skill é:

**ANALISAR E RECOMENDAR.**

Ao final, aguardar aprovação explícita do usuário.

---

# 29. REGRAS CONTRA ALUCINAÇÃO

Nunca inventar:

- SKU;
- campanha;
- orçamento;
- lance;
- preço;
- margem;
- tarifa;
- frete;
- venda;
- ACOS;
- status;
- termo;
- ASIN;
- estratégia de lance;
- resultado histórico.

Se faltar dado:

dizer que falta.

Se houver inferência:

rotular como inferência.

Se houver hipótese:

rotular como hipótese.

Se houver recomendação:

mostrar evidência usada.

---

# 30. REGRAS DE ATUALIDADE

Não usar memória como fonte definitiva para dado que muda.

Antes de recomendar ação sobre:

- orçamento;
- lance;
- status;
- campanha;
- preço;
- margem;
- promoção;
- estratégia de lance;

preferir a fonte mais atual disponível.

Se Parâmetros Vigentes estiverem mais antigos que os relatórios:

não sobrescrever os relatórios com o snapshot antigo.

---

# 31. COMPORTAMENTO QUANDO FALTAR O RELATÓRIO DE NEGÓCIOS

Se houver apenas relatórios de Ads:

fazer a análise completa de Ads que for possível.

Mas declarar:

**“A visão Ads está disponível. A separação entre vendas atribuídas a Ads e vendas não atribuídas a Ads não pode ser concluída com segurança sem vendas totais comparáveis do mesmo período.”**

Não travar toda a otimização por isso.

---

# 32. COMPORTAMENTO QUANDO FALTAR A PLANILHA MESTRA

Se uma ação depender de margem e a Mestra não estiver acessível:

não concluir que a margem comporta.

Pode dizer:

**“A performance de Ads sugere possibilidade de escala, mas a decisão financeira fica pendente de validação de margem na Planilha Mestra.”**

---

# 33. COMPORTAMENTO QUANDO HOUVER POUCA AMOSTRA

Não transformar ausência de evidência em evidência de fracasso.

Pouca amostra deve levar a:

- Radar;
- manutenção;
- coleta de dados;
- revisão posterior;

quando o contexto permitir.

---

# 34. RASTREABILIDADE

Em uma otimização Ox, ao final da análise sugerir:

- número do ciclo;
- data;
- campanhas que receberiam [Ox dd/mm] caso as alterações fossem aprovadas;
- nota-resumo proposta;
- data do próximo monitoramento;
- data aproximada da próxima otimização.

Não aplicar as mudanças nesta versão.

---

# 35. EXEMPLOS

## Exemplo — poucos cliques, diagnóstico ainda incompleto

Campanha:
Auto Produto X

Dados conhecidos:
4 cliques, gasto baixo, 0 vendas.

Leitura inicial:
**AMOSTRA INSUFICIENTE / POSSÍVEL PROBLEMA DE ENTREGA.**

Ainda não classificar como ausência de entrega somente pela quantidade de cliques.

Verificar:
- impressões;
- CTR;
- gasto versus orçamento;
- elegibilidade;
- configuração;
- capacidade de consumir orçamento.

Se houver poucas impressões + poucos cliques + gasto baixo:
tratar como **candidato à investigação de entrega**. Confirmar o contexto do período, nicho/volume de busca, elegibilidade, configuração, estratégia de lance e, quando disponíveis, Parcela de Impressões/Posicionamento. Só então considerar **RADAR / DAR MAIS CHANCE**.

Se houver exposição suficiente para aquele período/nicho + poucos cliques / CTR baixo:
classificar como possível problema de **CTR / RELEVÂNCIA / CRIATIVO / OFERTA** e recomendar **CORRIGIR CTR / CRIATIVO**, não aumento de lance como primeiro remédio.

Se esses dados não estiverem disponíveis:
usar **NÃO DECIDIR AINDA / AMOSTRA INSUFICIENTE** e declarar quais dados faltam.

Confiança:
Baixa enquanto impressões e CTR não forem conhecidos.

## Exemplo — PI com alvo ruim

Campanha:
PI Produto Y

Alvo:
ASIN concorrente Z

Dados vitalícios:
17 cliques, 0 vendas.

Leitura:
O alvo atingiu a régua formal de PI.

Decisão sugerida:
**PAUSAR ALVO**, não a campanha inteira.

Confiança:
Alta, desde que os dados vitalícios estejam corretos.

## Exemplo — vendas Ads x total

SKU:
ABC

Vendas totais:
10 unidades.

Vendas atribuídas a Ads:
4 unidades.

Se período e unidade forem compatíveis:

Não atribuídas a Ads / estimativa de orgânico:
6 unidades.

Mostrar:
Ads = 40%
Não atribuídas a Ads = 60%

Não chamar os 60% de orgânico exato se a fonte não fornecer essa métrica diretamente.

---

# 36. CRITÉRIO DE SUCESSO

Uma boa execução desta Skill não é a que produz mais alterações.

É a que:

- usa as fontes corretas;
- evita mistura de períodos;
- não confunde Ads com total;
- não inventa orgânico;
- separa entrega de conversão;
- não usa poucos cliques isoladamente para diagnosticar falta de entrega;
- diferencia falta de entrega de CTR/relevância usando contexto, não apenas número absoluto de impressões;
- não conclui limitação de orçamento a partir apenas do agregado da conta;
- não presume a direção do viés de atribuição sem evidência;
- respeita ALVO ≠ CAMPANHA;
- protege campanhas com histórico quando apropriado;
- dá chance a campanhas sem amostra;
- identifica desperdício real;
- cruza decisão financeira com a Mestra;
- mostra ações concretas e justificadas;
- deixa claro o nível de confiança;
- preserva revisão humana antes da execução.


---

# 38. REFINAMENTOS DE PRECISÃO — TESTE REAL 2

## 38.1 Reconciliação entre relatórios

Pequenas diferenças entre relatórios podem ser classificadas como materialmente irrelevantes para a decisão, mas a causa NÃO deve ser inventada.

Se a causa não estiver explicitamente disponível, usar:

**“Diferença imaterial; causa não determinável pelos arquivos atuais.”**

## 38.2 Ads × total por dia

Não inferir que um dia específico foi Ads ou não-Ads apenas porque um valor agregado de Ads coincide com o valor diário do Painel de Vendas.

Sem granularidade diária adequada no relatório de Ads, a análise deve permanecer no agregado do período.

## 38.3 Produtos Anunciados

Diferenciar:

- SKU anunciado sem venda atribuída;
- SKU anunciado com gasto > 0 e sem venda atribuída;
- SKU anunciado com vendas atribuídas.

Não usar “recebeu investimento” para linha/SKU com gasto zero.

Quando o relatório identificar apenas produto anunciado, usar “vendas atribuídas ao anúncio do SKU”, não “vendas do SKU”.

## 38.4 Conversão do SKU

Quando um mesmo SKU anunciado acumular cliques e gasto relevantes em várias campanhas sem venda atribuída, classificar inicialmente como:

**INVESTIGAR CONVERSÃO DO SKU**

Esse padrão NÃO prova, sozinho, problema de página.

Antes de `CORRIGIR PÁGINA`, investigar:

- termos e relevância do tráfego;
- segmentação;
- preço;
- oferta;
- imagens;
- título/conteúdo;
- avaliações;
- elegibilidade;
- margem na Planilha Mestra.

## 38.5 Produto anunciado ≠ produto comprado

Não afirmar halo nem tratar a venda atribuída como venda do mesmo SKU se o relatório não trouxer o produto efetivamente comprado.

## 38.6 Vitalício em Produto Indicado

A ausência de dado vitalício bloqueia especificamente a aplicação da régua formal:

**15+ cliques vitalícios + 0 vendas → possível pausa do ALVO**

Ela NÃO impede toda e qualquer decisão sobre PI.

Outras decisões podem ser tomadas com evidência suficiente, por exemplo:

- irrelevância clara;
- problema de elegibilidade;
- configuração quebrada;
- manutenção;
- correções operacionais;
- outras regras documentadas do Playbook.

## 38.7 Regra de linguagem

Ao apresentar diagnósticos, preferir:

**FATO → INTERPRETAÇÃO → HIPÓTESE → POSSÍVEL DECISÃO → CONFIANÇA**

Não transformar coincidência, padrão ou ausência de campo em causa confirmada.


## Regra de precisão — ASIN no campo “Termo de pesquisa”

Quando o campo `Termo de pesquisa` contiver um ASIN:

- NÃO tratar como frase digitada pelo comprador;
- separar de consultas textuais;
- tratar como entrada de produto/ASIN para análise de placement/segmentação;
- antes de chamar o tráfego de relevante ou irrelevante, avaliar a compatibilidade do ASIN/produto com o SKU anunciado;
- se a ação for exclusão, considerar o mecanismo de negativação/exclusão de produto apropriado, e não presumir que uma negativa de palavra-chave resolverá o caso.

**Regra crítica:** se uma parcela material dos cliques/gasto de um SKU vier de ASINs ainda não avaliados, NÃO encerrar o diagnóstico dizendo “tráfego ruim descartado” ou “tráfego relevante confirmado” para o SKU inteiro.

Usar:

**TRÁFEGO TEXTUAL: avaliado**
**TRÁFEGO POR ASIN/PRODUTO: pendente de validação**

Até avaliar os ASINs, `INVESTIGAR CONVERSÃO DO SKU` pode continuar válido como hipótese prioritária, mas `CORRIGIR SEGMENTAÇÃO` NÃO deve ser descartado definitivamente.



## Regra de precisão — termo vencedor e promoção para manual

Uma venda atribuída com 1–2 cliques é evidência real de conversão, mas ainda é amostra pequena.

Ao sugerir promoção/auditoria de manual:

- diferenciar **resultado real** de **expectativa de repetição**;
- não usar “alto retorno esperado” apenas porque houve uma venda;
- verificar se a manual já contém o termo;
- verificar estado/elegibilidade/estratégia/lance antes de atribuir ausência de captura a lance insuficiente;
- se a manual já existe, a primeira decisão é **AUDITAR ESTRUTURA MANUAL**, não criar estrutura duplicada.



---

# 39. REFINAMENTOS DE PRECISÃO — TESTE REAL 3

## 39.1 Impressões no Relatório de Termos

O Relatório de Termos de Pesquisa possui universo diferente do relatório de Campanhas para impressões: ele representa entradas que geraram clique. Portanto, diferença grande no total de impressões pode ser esperada.

Não usar a soma de impressões de Termos para medir exposição total da conta.

## 39.2 ASIN não é termo textual

ASIN no campo de termo deve ser analisado como entrada de produto/placement, separadamente das buscas textuais.

Não atribuir intenção textual a um ASIN.

## 39.3 Diagnóstico de tráfego do SKU

Se parte relevante do tráfego vier de ASINs não avaliados, não declarar o tráfego total do SKU como “relevante confirmado” nem descartar segmentação como causa.

Separar a conclusão por origem:
- buscas textuais;
- ASIN/produto;
- outras origens.

## 39.4 Negativação semântica

Não chamar termo de irrelevante apenas por ser:
- genérico;
- de baixa intenção;
- material;
- ambiente;
- dimensão;
- capacidade;
- aplicação;
- marca concorrente.

Confirmar incompatibilidade real com o SKU/listing.

## 39.5 Categorias obrigatórias para candidatos de negativa

Usar:
- IRRELEVANTE CONFIRMADO;
- AMBÍGUO / REVISAR;
- RELEVANTE / NÃO NEGATIVAR.

Não misturar essas categorias sob um único título de “irrelevantes”.

## 39.6 Manuais

Termo vencedor com 1–2 cliques pode justificar auditoria/promessa de teste, mas não prova repetibilidade.

Se já existir manual relacionada:
**AUDITAR MANUAL → confirmar keyword → estado → elegibilidade → estratégia/lance → só então recomendar ajuste.**

## 39.7 Fechamento de diagnóstico

Nunca declarar “diagnóstico fechado” enquanto existir uma origem material de tráfego ainda não avaliada.

Preferir:
**“Hipótese principal fortalecida; hipótese concorrente X permanece aberta por falta de Y.”**


---

# 40. REFINAMENTOS DE PRECISÃO — TESTE REAL 4

## 40.1 Top-of-search Impression Share (TOS IS)

Interpretar `Parcela de impressões no topo da pesquisa` conforme a definição da Amazon:

**impressões no topo recebidas pela campanha ÷ total de impressões no topo em que a campanha estava elegível para veicular.**

Portanto:

- TOS IS NÃO é a porcentagem das impressões da própria campanha que ocorreu no topo;
- TOS IS NÃO é participação total de mercado;
- TOS IS NÃO mede volume total de buscas do nicho;
- TOS IS alto NÃO prova demanda pequena;
- TOS IS baixo NÃO prova lance insuficiente;
- TOS IS pode ser usado como sinal de competitividade/visibilidade no topo dentro do universo em que a campanha esteve elegível.

### Proibição de inferência de denominador

Não reconstruir o “pool de topo” usando frações como:

- 62,5% = 5/8;
- 18,18% = 2/11;
- 58,33% = 7/12.

O numerador real não está disponível no arquivo e a porcentagem pode estar arredondada. Várias combinações de numerador/denominador produzem a mesma porcentagem.

Usar:

**“TOS IS alto/baixo dentro das oportunidades elegíveis”**

e NÃO:

**“existiam aproximadamente X impressões de topo no mercado”**

sem dados explícitos do denominador.

## 40.2 TOS IS alto com poucas impressões

Quando uma campanha tiver TOS IS alto e poucas impressões totais:

Conclusões permitidas:

- a campanha capturou uma parcela relevante das oportunidades de topo em que esteve elegível;
- aumentar agressivamente o ajuste de topo pode ter retorno marginal limitado, especialmente sem cliques/vendas.

Conclusões NÃO permitidas apenas por esses dados:

- “a demanda é pequena”;
- “não existe mais exposição disponível”;
- “falta de entrega está descartada”;
- “a campanha aparece bastante no mercado”.

Investigar separadamente:

- volume de busca;
- amplitude e quantidade de keywords/targets;
- elegibilidade;
- relevância;
- status;
- estratégia de lance;
- CTR;
- Placement Report;
- sinais externos de demanda quando necessário.

## 40.3 Search Term Impression Share (SIS) é métrica de conta

No `Search Term Impression Share report`, tratar:

- `Parcela de impressões de termo de pesquisa`;
- `Classificação de impressão de termo de pesquisa`

como métricas **account-wide do termo**, comparadas aos demais anunciantes.

NÃO atribuir a parcela/rank a uma campanha específica apenas porque a linha também contém `Nome da campanha`.

Quando o mesmo termo aparecer em várias campanhas, é esperado que a mesma parcela/rank de conta se repita nas linhas.

Exemplo de leitura correta:

**“A conta Winnet teve SIS X% e rank Y no termo; a campanha Z contribuiu com N impressões/cliques registrados na linha.”**

Leitura incorreta:

**“A campanha Z teve SIS X% no termo.”**

## 40.4 SIS não é volume de busca

SIS mede a participação da conta nas **impressões de Sponsored Products** daquele termo frente aos outros anunciantes.

Mesmo SIS = 100% significa apenas que, no período observado, a conta recebeu todas as impressões de Sponsored Products contabilizadas para aquele termo dentro da definição do relatório.

NÃO transformar isso automaticamente em:

- “100% da demanda”;
- “não existem mais compradores”;
- “não há mais impressões futuras”;
- “o termo está limitado exclusivamente por demanda”.

Usar linguagem temporal:

**“Sem headroom de share observado nesse termo dentro desta janela.”**

Se o número absoluto de impressões observadas for pequeno, pode-se registrar:

**“pool observado de impressões patrocinadas pequeno nesta janela”**

mas não equiparar isso ao volume total de buscas/shoppers.

## 40.5 Linhas do SIS × métricas de campanha

Se o relatório SIS trouxer o mesmo termo em várias campanhas:

- não usar a impressão de uma única linha como numerador da SIS account-wide;
- não estimar o total de impressões concorrentes a partir de uma linha isolada;
- não somar/repetir a SIS entre campanhas.

Para leitura de desempenho de campanha, usar as métricas da linha/campanha.
Para leitura competitiva do termo, usar SIS/rank como métrica de conta.

## 40.6 Reavaliação de campanhas pequenas

Para campanhas como Extintor e Cinzeiros:

TOS IS alto + zero clique deve enfraquecer a hipótese de que **competitividade no topo** seja o único gargalo, mas NÃO encerra o diagnóstico de entrega.

Classificar preferencialmente como:

**INVESTIGAR DEMANDA / COBERTURA / CTR**

até verificar:

- keywords cadastradas;
- correspondência;
- volume de busca;
- elegibilidade;
- status;
- Placement Report;
- página/oferta;
- estratégia e lances.

Não recomendar Radar apenas por baixa entrega; não descartar Radar apenas por TOS IS alto sem investigar o restante.

## 40.7 PI e campanhas orientadas a produto

Quando os cliques observados de uma PI vierem majoritariamente de ASINs/páginas de produto, TOS IS de pesquisa tem valor diagnóstico limitado para explicar esses cliques.

Não comparar diretamente:

- CTR de página de produto;
- CTR de busca;

como se fossem contextos equivalentes.

## 40.8 Placement Report correto

Diferenciar:

**arquivo com TOS IS por campanha**
de
**Sponsored Products Placement Report**.

O Placement Report apropriado deve trazer o campo de placement e permitir desempenho por:

- Top of search;
- Rest of search;
- Product pages.

Usar esse relatório para comparar impressões, cliques, gasto e vendas por placement antes de validar ou alterar ajustes de posicionamento.

## 40.9 Regra de fechamento

Não declarar:

**“demanda confirmadamente pequena”**
ou
**“não existem mais impressões para comprar”**

com base apenas em TOS IS ou SIS.

Preferir:

**FATO:** share observado.
**INTERPRETAÇÃO:** competitividade/visibilidade dentro do universo medido.
**HIPÓTESE:** demanda, cobertura, relevância, lance etc.
**DADO NECESSÁRIO:** qual fonte separa as hipóteses.


---

# 41. REFINAMENTOS DE PRECISÃO — TESTE REAL 5 (MESTRA × ADS)

## 41.1 Margem financeira ≠ competitividade de preço

A margem da Planilha Mestra responde:

**“Quanto este SKU suporta financeiramente antes do Ads?”**

Ela NÃO responde:

**“O preço está competitivo para o cliente?”**

Portanto:

- margem alta NÃO descarta preço como possível barreira de conversão;
- margem baixa NÃO prova que o preço está alto;
- para avaliar preço como causa de conversão, exigir evidência de mercado/listing, como concorrência comparável, histórico de preço, Buy Box/oferta, cupom, frete percebido ou teste controlado.

Separar sempre:

- **RISCO FINANCEIRO / UNIT ECONOMICS**
- **COMPETITIVIDADE DE PREÇO / CONVERSÃO**

Nunca usar um para provar o outro.

## 41.2 Histórico da Mestra ≠ vitalício

`Registro_Vendas` e `Livro_Vendas` representam o histórico disponível na Planilha Mestra, dentro da cobertura registrada.

Não chamar esse histórico de **vitalício** salvo se a fonte declarar explicitamente que cobre toda a vida da campanha/alvo.

Usar:

**“há conversão histórica registrada na Mestra”**

e NÃO:

**“há conversão vitalícia”**

A régua formal de PI de 15+ cliques vitalícios + zero vendas continua exigindo fonte explicitamente vitalícia.

## 41.3 Margem pré-Ads e break-even ACOS

A margem do Simulador/Registro deve ser tratada como margem **antes do custo de Ads**, salvo se a planilha declarar o contrário.

Quando receita e base forem compatíveis, a margem pré-Ads pode ser usada como aproximação do **break-even ACOS**:

**break-even ACOS aproximado ≈ margem pré-Ads**

Mas apenas se:

- a receita do ACOS e a receita da margem estiverem na mesma base;
- o gasto Ads estiver corretamente atribuído;
- não houver custos adicionais fora da Mestra;
- a tarifa/frete usados forem confiáveis.

Exemplo conceitual:

- margem pré-Ads 18%;
- ACOS 48%.

Não dizer “o ACOS consome quase toda a margem”.

Dizer:

**“o ACOS supera amplamente a margem pré-Ads; se estiver na mesma base, a venda ficaria negativa após Ads.”**

## 41.4 Capacidade unitária ≠ rentabilidade do período

Não dizer que um SKU “absorve” o gasto Ads do período apenas porque o lucro por venda é maior que o gasto acumulado.

Se o período analisado teve zero vendas atribuídas:

- a margem unitária pode mostrar que o SKU possui **capacidade econômica potencial**;
- mas NÃO prova que o gasto do período foi coberto ou rentável.

Separar:

**UNIT ECONOMICS DO SKU**
de
**P&L / RENTABILIDADE DO PERÍODO ADS**

Vendas históricas fora da janela não devem ser usadas para compensar o gasto da janela atual.

## 41.5 `MARGEM SUPORTA ESCALA` não significa `ESCALAR`

`MARGEM SUPORTA ESCALA` é uma classificação exclusivamente financeira.

Significa:

**“há folga unitária para considerar investimento adicional, se o Ads justificar.”**

Não significa:

- aumentar lance;
- aumentar orçamento;
- campanha saudável;
- demanda suficiente;
- conversão comprovada.

Para `ESCALAR — CANDIDATO`, exigir também evidência atual suficiente de:

- conversão;
- amostra;
- relevância;
- entrega/headroom;
- estratégia de lance;
- condição de orçamento;
- margem.

## 41.6 Histórico fora da janela

Conversões anteriores ou posteriores ao período de Ads são contexto histórico, não parte do resultado daquela janela.

Elas podem:

- impedir conclusões como “este SKU nunca converte”;
- reduzir confiança em diagnóstico estrutural de não conversão.

Elas NÃO podem:

- reduzir o ACOS da janela;
- cobrir o gasto da janela;
- ser somadas às vendas atribuídas do período.

Usar linguagem:

**“o zero de vendas é da janela, não prova incapacidade histórica de conversão.”**

## 41.7 Margem simulada × margem registrada

Não concluir que o Simulador “subestima sistematicamente” a margem real com base em poucas vendas registradas.

Diferenças podem vir de:

- região;
- frete cobrado;
- frete real;
- quantidade;
- desconto/promo;
- tarifa estimada ou real;
- divisão de frete em pedido multi-SKU;
- dados provisórios.

Só comparar Simulador × Registro diretamente quando as condições forem equivalentes ou quando a diferença for apresentada explicitamente como observação limitada à amostra.

Preferir:

**“nesta venda registrada, a margem foi superior/inferior ao cenário simulado comparado.”**

Evitar:

**“a Mestra é conservadora e provavelmente subestima a folga de Ads do catálogo.”**

sem validação ampla.

## 41.8 Tarifa estimada e margem auditada

Se a própria Mestra indicar que a tarifa Amazon é estimada ou que região/frete ainda precisa ser preenchido:

- não chamar a margem de totalmente auditada;
- usar **“margem registrada na Mestra, sujeita às premissas da linha”**;
- sinalizar quando a tarifa real do extrato ainda não foi sobrescrita.

## 41.9 Halo / pedido multi-SKU

Quando uma fonte interna confiável ligar um clique/anúncio a um pedido com outros SKUs, isso pode confirmar **atribuição cross-SKU / halo** no pedido.

Porém:

- não usar o pedido multi-SKU para explicar automaticamente a semântica de métricas como `Compras`, `Pedidos` ou `Purchases`;
- não afirmar que “3 compras em 2 cliques foi explicado pelo pedido multi-SKU” sem confirmar a definição da métrica.

Usar:

**“o pedido multi-SKU é consistente com a anomalia observada, mas a mecânica exata da métrica exige confirmação.”**

## 41.10 Preço como hipótese de conversão

Quando houver zero venda com tráfego relevante:

- margem alta pode tornar um ajuste de preço financeiramente possível;
- mas NÃO enfraquece, sozinha, a hipótese de preço competitivo inadequado.

Para retirar `PREÇO / OFERTA` da lista de hipóteses, exigir evidência comercial específica.

## 41.11 Linguagem final obrigatória

Ao cruzar Mestra × Ads, apresentar separadamente:

**SAÚDE FINANCEIRA DO SKU**
- margem pré-Ads;
- frete;
- tarifa;
- break-even aproximado quando seguro.

**SAÚDE DO ADS NA JANELA**
- cliques;
- gasto;
- vendas atribuídas;
- ACOS;
- amostra.

**HISTÓRICO FORA DA JANELA**
- apenas como contrapeso/contexto.

**DECISÃO**
- nunca misturar as três camadas para fabricar rentabilidade que o período não teve.


---

# 42. PRECISÃO DAS FONTES INTERNAS — REGISTRO_VENDAS E LIVRO_VENDAS

## 42.1 Registro_Vendas

Na operação Winnet, `Registro_Vendas` contém **vendas reais**.

Os preços e valores registrados nessa aba devem ser tratados como **dados oficiais da venda realizada**, salvo se a própria linha indicar explicitamente que um campo específico está pendente ou estimado.

Consequências:

- não rebaixar automaticamente esses valores a “provisórios”;
- não substituir preços/valores do Registro por memória ou estimativa;
- usar o Registro como fonte válida de margem realizada e dados financeiros históricos quando o campo correspondente estiver preenchido;
- comentários operacionais sobre região, divisão de pedido ou preenchimento futuro não invalidam automaticamente os valores monetários que já estejam corretos.

Ainda assim, `Registro_Vendas` representa o histórico registrado na planilha e NÃO deve ser chamado de “vitalício” sem confirmação explícita de cobertura total.

## 42.2 Livro_Vendas

`Livro_Vendas` é um histórico oficial de vendas que será atualizado **mensalmente**.

Entre atualizações, ele pode ficar defasado em aproximadamente **1–2 meses**.

Portanto:

- tratar o Livro como fonte histórica confiável para o período que efetivamente cobre;
- NÃO usar ausência de registro no Livro para concluir ausência de venda em período posterior à sua última atualização;
- sempre verificar a última data coberta antes de comparar com relatórios Ads;
- se o período Ads ultrapassar a cobertura do Livro, declarar a lacuna temporal;
- não chamar o Livro de fonte atual do mês se ele ainda não tiver sido atualizado.

## 42.3 Hierarquia temporal

Para fatos de venda:

1. `Registro_Vendas` — venda real registrada e valores oficiais da transação;
2. `Livro_Vendas` — histórico oficial, limitado pela última atualização mensal;
3. relatórios Ads — atribuição publicitária da janela;
4. Painel de Vendas — total do período, respeitando granularidade e escopo.

Não usar uma fonte desatualizada para invalidar uma fonte mais recente.

## 42.4 Ausência de registro ≠ ausência de venda

Se `Livro_Vendas` estiver defasado:

**ausência de uma venda no Livro não é evidência de que a venda não aconteceu.**

Usar:

**“O Livro_Vendas não cobre integralmente este período; não é possível confirmar por ele.”**

## 42.5 Uso em cruzamentos Ads × financeiro

Ao cruzar Ads com histórico:

- vendas do `Registro_Vendas` podem ser usadas como evidência histórica real de conversão;
- vendas do `Livro_Vendas` podem confirmar pedidos, composição multi-SKU e origem quando dentro da cobertura registrada;
- nenhuma dessas fontes deve ser somada às vendas Ads da janela como se fossem métricas adicionais;
- usar o histórico como contexto/contrapeso, não para alterar o ACOS da janela analisada.


---

# 43. REFINAMENTOS FINAIS — TESTE REAL 5

## 43.1 Break-even ACOS não vira teto operacional automaticamente

O **break-even ACOS** é uma fronteira econômica aproximada, não uma meta de campanha.

Exemplo:
- margem pré-Ads SP = 18,41%;
- break-even aproximado = 18,41%.

Isso NÃO autoriza concluir automaticamente:

**“o teto operacional deste SKU é 9%”**
ou
**“o teto operacional deste SKU é 18,41%”.**

Para transformar break-even em meta/teto operacional por SKU é necessária uma decisão de política, incluindo:
- margem de segurança desejada;
- volatilidade de frete/tarifa;
- cenário de referência escolhido;
- objetivo de crescimento;
- tolerância a aquisição;
- histórico do SKU;
- aprovação humana.

A Skill pode recomendar:

**“o ACOS máximo geral de 18% deixa pouca ou nenhuma folga neste SKU, especialmente no cenário de estresse.”**

Mas deve usar:

**`REVISAR TETO DE ACOS DO SKU`**

em vez de criar unilateralmente um novo teto operacional.

## 43.2 Resultado Ads atribuído ≠ rentabilidade total da janela

Se um SKU teve gasto Ads e zero vendas atribuídas na janela:

é correto dizer:

**“resultado Ads atribuído da janela foi negativo / sem receita atribuída.”**

Não dizer automaticamente:

**“a rentabilidade efetiva da janela foi negativa”**

se não houver reconciliação completa de:
- vendas orgânicas;
- halo/cross-SKU;
- vendas não atribuídas;
- outros canais/fontes;
- custos efetivos do período.

Separar:
- **resultado Ads atribuído**;
- **rentabilidade total do SKU/período**.

## 43.3 Registro_Vendas é fonte oficial dos valores realizados

Reforço operacional Winnet:

- `Registro_Vendas` contém vendas reais;
- preços e valores monetários registrados são oficiais;
- observações como “região/frete a preencher” ou “divisão estimada” não tornam automaticamente os demais valores monetários da linha provisórios;
- somente o campo explicitamente marcado como estimado/pendente deve receber essa ressalva.

## 43.4 Livro_Vendas e atualidade

`Livro_Vendas` é histórico real, atualizado mensalmente.

Antes de usar ausência de registro como evidência:
- verificar a última data coberta;
- se estiver 1–2 meses defasado, declarar lacuna;
- nunca usar essa ausência para invalidar vendas reais mais recentes do `Registro_Vendas` ou do Painel.

## 43.5 Linguagem de decisão para SKUs sem venda atribuída na janela

Para SKUs com boa margem, mas zero venda atribuída na janela, preferir:

**SAÚDE FINANCEIRA:** margem suporta considerar investimento.
**ADS NA JANELA:** gasto sem receita atribuída.
**HISTÓRICO:** há/não há conversão histórica registrada.
**DECISÃO:** investigar antes de escalar.

Não usar a margem histórica ou unitária para “compensar” o gasto da janela.


---

# 44. REFINAMENTOS DE PRECISÃO — TESTE REAL 6

## 44.1 Eficiência de Ads ≠ lucratividade

ACOS, ROAS, receita atribuída e participação nas vendas Ads medem desempenho publicitário.

Eles NÃO autorizam, sozinhos, chamar uma campanha de:

- “mais lucrativa”;
- “mais rentável”;
- “maior lucro”.

Sem unit economics compatíveis com os produtos efetivamente comprados, usar linguagem como:

- **maior receita atribuída**;
- **melhor eficiência de Ads**;
- **menor ACOS**;
- **maior contribuição para vendas atribuídas**.

“Lucro” só deve ser usado quando a camada financeira estiver de fato conciliada.

## 44.2 Halo / cross-SKU não invalida a atribuição Ads

Se a Amazon atribui uma venda a uma campanha, alvo ou anúncio e uma fonte interna mostra que o pedido contém outros SKUs:

- manter a venda atribuída para leitura de desempenho Ads da campanha/alvo, salvo regra oficial interna em contrário;
- NÃO retirar automaticamente a receita do ACOS/ROAS da campanha;
- NÃO chamar essa atribuição de “contaminação” da régua de orçamento;
- diferenciar **desempenho publicitário da estrutura** de **rentabilidade do SKU anunciado**.

Para análise de produto:

- `produto anunciado` ≠ `produto comprado`;
- a margem do SKU anunciado NÃO deve ser aplicada à venda halo;
- quando os SKUs comprados forem conhecidos, a rentabilidade do pedido deve ser analisada pelos produtos efetivamente comprados.

Uma venda halo pode ser boa para a campanha mesmo que não seja uma venda do SKU anunciado.

## 44.3 Prioridade de investigação ≠ maior ganho esperado

Não escrever:

- “maior ganho de eficiência com menor risco”;
- “melhor oportunidade da conta”;
- “ação de maior retorno esperado”;

sem evidência suficiente para quantificar ou comparar ganho e risco.

Quando o caso merece atenção, usar:

**PRIORIDADE DE INVESTIGAÇÃO**

e explicar o motivo observável, por exemplo:

- gasto relevante;
- ausência de venda atribuída;
- volume de cliques;
- impacto financeiro potencial;
- conflito de dados;
- risco de interpretação incorreta.

## 44.4 Prontidão para O4 — separar bloqueadores de complementos

Ao listar o que falta para uma O4, classificar em:

### BLOQUEADOR PARA A AÇÃO ESPECÍFICA
Exemplos:
- dado vitalício por alvo → necessário para aplicar a régua formal de pausa PI;
- coluna Estado → necessária para auditoria de zumbis/status;
- estratégia de lance confirmada → necessária antes de alterar lances quando a decisão depende dela;
- Placement Report → necessário antes de validar/alterar ajustes de posicionamento por performance.

### DADO IMPORTANTE, MAS NÃO BLOQUEADOR GERAL
Exemplos:
- Livro_Vendas atualizado;
- vendas totais por SKU;
- volume de busca externo;
- histórico adicional.

A ausência desses dados pode limitar determinadas análises, mas NÃO deve impedir automaticamente toda a O4.

## 44.5 Livro_Vendas desatualizado não bloqueia a O4 inteira

Como `Livro_Vendas` é atualizado mensalmente e pode ficar 1–2 meses defasado:

- verificar sua última data;
- usar apenas o período coberto;
- não exigir atualização do Livro como condição universal para fazer O4;
- usar `Registro_Vendas`, relatórios Ads e demais fontes atuais quando suficientes para a decisão;
- pedir atualização do Livro apenas quando a decisão específica depender da composição histórica de pedidos/halo.

## 44.6 Regra temporal após uma otimização

Se uma otimização foi realizada em uma data posterior ao fim dos relatórios disponíveis:

- os relatórios antigos são **baseline pré-otimização**;
- NÃO avaliar a eficácia das alterações feitas depois da janela com esses arquivos;
- NÃO recomendar reverter/escalar estruturas novas com base em dados anteriores à criação/alteração;
- para a próxima otimização, exigir janela que cubra período suficiente após a última intervenção.

Exemplo operacional:

Se O3 ocorreu em 11/08 e os relatórios terminam em 09/08, esses relatórios NÃO medem a O3.

Estruturas criadas ou alteradas na O3 devem ser avaliadas somente com dados posteriores à O3.

## 44.7 Halo e régua de orçamento

Para uma campanha, vendas halo atribuídas pela Amazon continuam fazendo parte da receita atribuída usada no ACOS/ROAS da estrutura, salvo decisão metodológica explícita da Winnet em sentido contrário.

Por isso:

- halo pode melhorar o desempenho publicitário real da campanha;
- não remover halo do cálculo apenas porque o SKU comprado é diferente;
- o cuidado é na interpretação financeira por SKU, não na existência da atribuição.

## 44.8 Linguagem recomendada na priorização

Preferir:

**CASO:** substitutes da Geral  
**MOTIVO PARA INVESTIGAR:** gasto/cliques sem venda atribuída dentro de estrutura que gera receita em outros alvos.  
**AÇÃO:** investigar alvo/ASINs antes de decidir.  
**CONFIANÇA:** ...

Evitar transformar o diagnóstico em promessa de economia ou ganho sem teste.
