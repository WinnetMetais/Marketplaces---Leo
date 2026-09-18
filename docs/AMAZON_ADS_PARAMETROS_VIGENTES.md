# AMAZON ADS — PARÂMETROS VIGENTES

Snapshot: **25/08/2026 (pós-O4)**, com atualizações de medição de **26/08/2026**, operacionais de **28/08/2026** e **01/09/2026**, e os **achados da O5 (08–09/09/2026)** incorporados abaixo.

✅ **O5 EXECUTADA em 09/09/2026** — 8 das 9 ações no console, conferidas uma a uma contra export e prints (ver `ciclos/O5-08-09_auditoria-code.md` §12). Os valores abaixo são **pós-execução**. A antiga advertência de "não executada" fica superada.

<!-- superado -->
⚠️ ~~A O5 foi concluída como análise em 08/09/2026, mas NÃO foi executada.~~ As 17 linhas O5-001 a O5-017 estão em `APROVADA - AGUARDANDO EXECUÇÃO`. **Os valores deste documento continuam sendo os PRÉ-execução.** O snapshot pós-execução proposto está em `ciclos/O5-08-09_pacote-fechamento-v2.md` §3 e só entra aqui quando o LEO executar e confirmar. Recomendar não é autorizar; executar não é registrar.

DOCUMENTO VIVO.

Este documento contém valores, configurações, ciclos, situações de campanhas e parâmetros operacionais que podem mudar com o tempo.

Deve ser atualizado sempre que houver alteração relevante e revisado a cada otimização Ox.

Em conflito com informação mais recente e confirmada da Amazon, Planilha Mestra ou conversa atual, prevalece a fonte mais recente e confiável.

Não transformar informações deste documento em regras permanentes do Playbook.

---

## 1. Réguas de ACOS vigentes

Sem alteração na O4.

ACOS Objetivo: 9%

ACOS Máximo: 18%

ACOS Emergência: 36%

Uso:

- abaixo do Objetivo → régua de crescimento de orçamento;
- entre Objetivo e Máximo → crescimento controlado;
- acima do Máximo → redução e revisão;
- acima da Emergência → protocolo emergencial no nível adequado.

Consultar o Playbook para saber COMO aplicar cada faixa.

---

## 2. Metas e referências financeiras atuais

Margem-alvo de referência por venda:

15% a 20%

Imposto utilizado como referência:

aproximadamente 10% sobre faturamento.

Tarifa Amazon observada:

aproximadamente 11,7% a 14,8% sobre produto + frete.

### NOVO — Teto mensal de Ads

**R$ 1.000/mês.** Definido por Dianna; registrado em 25/08/2026.

Gasto na janela 30d da O4: R$ 352,88 — aproximadamente **35% do teto**.

Projeção pós-O4 (radares, EGC e Geral +20%): acompanhar nos monitoramentos. Folga ampla no momento.

IMPORTANTE:

Esses valores são apenas parâmetros gerais atuais.

Para qualquer decisão específica por SKU, consultar obrigatoriamente a PLANILHA MESTRA vigente.

---

## 3. Lances atuais — estruturas novas

### Extintor
Exata: R$ 2,60 · Topo de Pesquisa **+75% (reaplicado em 25/08 — vigente)** · fixo

### Lixeiras banheiro — 6B
Exata: R$ 1,50 · Frase: R$ 1,20 · Topo +25%
**PILOTO: lances dinâmicos (aumento e redução)** — O4-014

### Cinzeiros — 6C
Exata: R$ 1,60 · Frase: R$ 1,30 · Topo +50% · fixo (grupo de controle)

### Bituqueiras
Exata: R$ 1,20 · Frase: R$ 1,00 · Topo +50% · fixo (grupo de controle)

### L3070-B + L4080-B
Exata: R$ 1,20 · Frase: R$ 1,00 · Topo +25% · **dinâmicos (aumento e redução)** desde 09/09 (O5-009; era fixo). Passa a integrar o grupo do piloto de lance junto com a 6B.

### Automática EGC
Lance atual: **R$ 0,84** (O4-012; era R$ 0,70) · fixo (grupo de controle)

### Geral Automática DBA-o59/09  *(renomeada em 09/09; era DBA-o311/08)*

⚠️ **O lance padrão do grupo (R$ 0,48) é INERTE** — as 4 segmentações têm lance próprio e nunca acompanharam esse campo. Confirmado por evidência: o export da O4 (25/08) e o console (08/09) trazem os mesmos 0,45/0,45/0,54/0,54. A O4-015 não teve efeito operacional.

**Lances vigentes — por segmentação** (conferidos no console em 09/09, pós-execução):

| Segmentação | Console (PT-BR) | Lance | Mudou na O5? |
|---|---|---:|---|
| `close-match` | Correspondência aproximada | **R$ 0,54** | ✅ era 0,45 (O5-002, +20%) |
| `loose-match` | Correspondência vaga | R$ 0,54 | não |
| `substitutes` | Substitutos | **R$ 0,45** | ✅ era 0,54 (O5-001, −17%) |
| `complements` | Complementos | R$ 0,45 | não |

Orçamento **R$ 90/dia** mantido (O5-003) — a campanha consome ~12% dele.

⚠️ **Nomes em PT-BR invertem a intuição:** *Correspondência vaga* = `loose-match`; *Correspondência aproximada* = `close-match`. Conferir sempre por cliques/custo, nunca pelo nome — a troca já causou um erro de execução na O5 (ver `docs/MEMORIA.md`).

IMPORTANTE:

Antes de recomendar qualquer alteração, conferir a configuração real da campanha no Amazon Ads.

Esses valores são snapshot, não regra permanente.

---

## 4. Radares vigentes — com contrato de saída na O5

**Os radares da O4 foram encerrados na O5 (09/09).** Três não geraram amostra e caíram no contrato de saída; o quarto virou vigia.

| Estrutura | Desfecho na O5 |
|---|---|
| PI L2470-CZ | **PAUSADA** (O5-004) — Era 4 cliques / 0 venda; vitalício 18 cliques / 0 em 32 alvos |
| PI PG3070 | **PAUSADA** (O5-005) — Era 1 clique; vitalício 8 cliques / 0 em 83 alvos |
| Auto PXM-o425/08 | **PAUSADA** (O5-006) — Era 2 cliques / 0; redundante com Extintor, PI PXM-o3 e auto PXP-o3 |
| Auto EGC | **VIGIA por 1 Era** (O5-007) — lance 0,84 mantido. Radar cumpriu a entrega (361 → 2.391 impressões); o problema migrou para CTR (0,13%) |

**Vigias e gatilhos vigentes após a O5:**

| Estrutura | Situação | Gatilho na O6 (22/09) |
|---|---|---|
| Auto EGC | VIGIA, lance 0,84 | 0 vendas **E** CTR < 0,3% → pausar |
| Auto SP-PP-o59/09 | VIGIA — só `close-match` e `complements` ativas | 0 cliques relevantes → pausar campanha |
| PI P3070-o228/07 | ✅ **GATILHO DESARMADO em 15/09** | ~~sem venda pós-Relâmpago **E** ≥15 cliques na Era → lances −20% nos asin-expanded~~ — **venda de 15/09 (R$ 616,18) ATRIBUÍDA à própria PI P3070**, posterior ao Relâmpago (07–13/09). A primeira condição da conjunção caiu, logo **não há redução de lance**. Confiança ALTA. Ver pendência abaixo para o que a O6 ainda precisa decidir |
| PI PXM-o311/08 | **CORRIGIR CTR** (era "investigar entrega" — ver C7) | entrega 2.500 impressões vitalícias, CTR 0,28%; custo R$ 5,50. Ler junto com a EGC |

**Contrato comum:** na O5 (~08/09), sem amostra relevante ou com cliques acumulados sem venda → **pausa sem prorrogação**.

### ⚠️ PI P3070 — o que a O6 precisa resolver (15/09)

A venda de 15/09, **R$ 616,18, atribuída à PI P3070**, é a **primeira conversão da campanha desde 21/06** — quase três meses. Antes dela: 98 cliques vitalícios com 1 compra, e 30 cliques / R$ 34,41 / zero venda na Era O4→O5.

**O gatilho caiu, mas isso NÃO promove a campanha a ESCALAR.** Uma venda não reabilita uma estrutura, e o ticket alto infla qualquer leitura de ACOS. O que a O6 precisa, do export da Era completa:

1. **Qual ALVO converteu — EM ABERTO.** A régua de PI opera no nível do **alvo**, não da campanha. Os 4 em triagem na O5 eram `B09YDLC69D` (12 cliques), `B0CYWMQ93Y` (7), `B0BHMZBZW9` (5), `B0778TD2LY` (5). Se a conversão veio de um deles, muda a triagem **daquele alvo** — e só dele.

   ⚠️ **NÃO CONFUNDIR AS DUAS DIMENSÕES DA PI** (confusão real ocorrida em 15/09): `B0H63FKGPJ` é o ASIN **do próprio P3070** — é o **produto anunciado**, não o alvo. Ler essa coluna confirma qual SKU vendeu, não onde o anúncio apareceu. O **alvo** é o ASIN de terceiro que hospedou o anúncio, e só aparece no **relatório de Segmentação / vitalício por alvo** filtrado na campanha. Mesma família de erro do C2 da O5 (linha por SKU vs. por termo).
2. **Gasto e cliques da PI na Era inteira (09–21/09).** ⚠️ **Não calcular ACOS com a janela parcial de 07–14/09** (R$ 13,98 / 13 cliques): é janela diferente e produz número falso. Esperar o export.
3. **Margem como referência:** a venda teve lucro de R$ 159,18 sobre R$ 616,18 — margem 25,8%, logo **ACOS de break-even ≈ 25,8%**.

**Leitura de método:** a campanha converteu **enquanto congelada**. É evidência a favor do contrapeso vitalício — estrutura com histórico de venda não se pausa por uma Era ruim.

**NOTA DE CALIBRAÇÃO — ERA COM FERIADO (28/08/2026).** A Era O4→O5 (25/08–08/09) contém o feriado prolongado de **05 a 07/09** (Independência, 07/09 em segunda-feira). Em catálogo predominantemente **B2B**, esses dias suprimem tráfego de compra corporativa.

**Convenção de contagem da Era (fixada em 28/08/2026):** a Era conta **do dia seguinte à otimização anterior até o dia anterior à otimização atual**. É o período efetivamente contido nos relatórios usados no julgamento — o dia da otimização anterior já foi contado na Era anterior, e o dia da otimização atual ainda não tem dado quando os relatórios são extraídos. Aplicar em todos os ciclos seguintes para que as Eras sejam comparáveis entre si.

**Era O4→O5: 26/08 a 07/09 = 13 dias corridos · 8 dias úteis · 5 não úteis** (29–30/08, 05–07/09) = **38% do período**.

O bloco de 05 a 07/09 são 3 dias seguidos sem compra corporativa.

*Correção de 28/08:* a versão anterior desta nota registrava 15 corridos / 10 úteis / 33%, contando 25/08 e 08/09 nas pontas. Os radares tiveram **8 dias úteis** de amostra, não 10.

Julgar os contratos de saída dos 4 radares pela **Era efetiva em dias úteis**, não pela Era corrida.

**Isto NÃO afrouxa o contrato:** amostra insuficiente continua autorizando pausa. Apenas impede que estrutura seja condenada por **artefato de calendário**.

Nota para a O5 sobre PG3070: os alvos são `asin-expanded` — avaliar migração para exatos se houver amostra.

---

## 5. Piloto de estratégia de lance (O4-014)

**6B → dinâmicos (aumento e redução).**

Grupo de controle mantido em lances fixos: Cinzeiros, L3070-B, Extintor, EGC, Bituqueiras.

Tese: capturar leilões que o funil já provou converter — termos da 6B vendem via Geral a CPC de R$ 0,65–0,80, abaixo do lance de R$ 1,50. A barreira não é força de lance, é vitória de leilão.

**Veredito: O5.** Se a 6B destravar entrega/captura e o controle não, avaliar migração das demais.

---

## 6. Referências operacionais vigentes

### ✅ REGRA CONFIRMADA — atribuição de oferta (14/09/2026)

**Oferta Relâmpago e Melhor Oferta são atribuídas pelo Ads ao PREÇO DA OFERTA**, já com o desconto. Confirmado em **5 pedidos, 3 SKUs e 4 campanhas**, todos batendo ao centavo entre o painel de ofertas, o Business Report e o export de Ads: PG2460 R$ 223,88 · PXP R$ 302,20 e R$ 151,10 · PXM R$ 519,03.

⚠️ **Não confundir com a promoção de quantidade**, cujo desconto é aplicado no checkout e **é atribuída a preço de tabela** (medido em 31/08). São dois mecanismos, com dois comportamentos, ambos medidos.

⚠️ **TERCEIRO MECANISMO EM CURSO — desconto no preço (21/09–20/10, EC-007 a EC-016): regra de atribuição AINDA NÃO MEDIDA.** Não presumir nem a regra da oferta nem a da promoção de quantidade. **A primeira venda com desconto no preço em SKU anunciado deve ser conferida pedido a pedido** (painel × Business Report × export de Ads) para fixar a regra. Até lá, a bijeção da Mestra com o Ads nesses 10 SKUs fica **provisória**.

**Consequência prática no `Registro_Vendas`:** em venda com oferta, lançar o **preço de tabela** na coluna de preço e o **desconto da oferta** na coluna própria — a receita líquida é o que o Ads e o Business Report vão registrar. Esse é o padrão que fez a bijeção fechar ao centavo em 14/09, depois de duas correções (PG2460 e PXM).


### Conversão e tráfego medidos — NOVO (26/08/2026)

**REFERÊNCIA DERIVADA, não régua oficial.** Os números abaixo são **média da conta inteira**, misturando tráfego orgânico e Ads em 74 ASINs. **Não representam a conversão de nenhum SKU específico** e não substituem régua do Playbook.

**Taxa de conversão média da conta: ~1,72%** (pedidos/sessão — 18 pedidos / 1.044 sessões).
Fonte: Business Report por ASIN, janelas 28/07–10/08 (526 sessões) e 11/08–24/08 (518 sessões); exportados em 25/08/2026.

**Régua de amostra derivada: ~58 sessões para esperar 1 venda** em um ASIN, na média da conta.

Tráfego: 37,3 sessões/dia (28/07–24/08) · 46,1 sessões/dia (19–25/08).
Buy Box: **99,21% ponderada por sessão** (71 de 74 ASINs em 100%) — não é gargalo desta conta.
Fonte de ambos: Business Report por data e por ASIN, janela 19–25/08; exportados em 26/08/2026.

Atualizar a cada ciclo.

### Mapeamento SKU ↔ ASIN
O **Relatório de Produtos Anunciados** traz SKU e ASIN na mesma linha. Usar essa fonte — **nunca inferir o mapeamento por título ou dimensão**.

### Radar
Referência inicial de aumento de lance: aproximadamente +20% por ciclo quando justificado. Não é aumento automático.

### Checkpoint padrão
Aproximadamente 15 cliques sem venda: abrir diagnóstico de conversão.

**NOTA DE CALIBRAÇÃO (26/08/2026):** com conversão média de ~1,72%, 15 cliques esperam 0,26 vendas — zero venda ocorre em ~77% dos casos mesmo com página saudável (só vira sinal estatístico perto de ~170 cliques). O checkpoint permanece como gatilho de **DIAGNÓSTICO** (revisar página/preço/oferta é barato), não como prova de problema. Zero venda em amostra pequena não condena página nem SKU; **decisões de pausa nesse volume são de portfólio/contrato, não veredito estatístico**.

Referência: 34 cliques (P3050) → 56% de chance de zero venda · 50 cliques (L1618-T) → 42%.

### Produto Indicado
15+ cliques vitalícios sem venda: gatilho formal vigente para possível pausa do ALVO.

### Triagem de termos
Aproximadamente 3+ cliques sem venda: sinal de revisão. **NÃO** é negativação automática.

### Triagem de ASIN em PI
Aproximadamente 5+ cliques sem venda: sinal de revisão. **NÃO** é exclusão automática.

---

## 7. Promoções vigentes

### Compra de 3 ou mais unidades
Desconto: 5% · Critério: produtos com margem ≥19% · ~101 SKUs

### Compra de 5 ou mais unidades
Desconto: 8% · Somente Pequenos/Médios com margem ≥19% · **83 SKUs**

**SP-T (Space Torre) adicionado em 28/08/2026:** Médios, margem **21,67%** em SP Interior — cumpria os dois critérios e estava fora por **lacuna de configuração**. Execução confirmada no console por Wintech. Contagem passou de 82 para 83.

Produtos Grandes: fora da promoção de 8% enquanto a questão de frete por unidade não estiver resolvida.

Orçamento configurado: R$ 1.000 por promoção. Promoções não acumuláveis.

Término atualmente configurado: janeiro/2027.

Todos esses dados devem ser revisados quando houver alteração das promoções.

### ⚠️ DESCONTO NO PREÇO — 10 SKUs, 21/09 a 20/10/2026 (EC-007 a EC-016)

Executado pelo LEO em 18/09. **Mecanismo novo** (preço riscado na busca e na página), distinto de oferta e de promoção de quantidade. **Não empilha com oferta no mesmo ASIN.**

| SKU | Desc. | Tabela → promo | Piso | Margem final |
|---|---:|---|---:|---:|
| L1618-T | 5% | 116,00 → 110,20 | 109,58 | 15,3% |
| L2025-T | 5% | 132,90 → 126,26 | 123,25 | 16,5% |
| L2030 | 5% | 119,22 → 113,26 | 111,16 | 16,1% |
| PXP | 5% | 167,89 → 159,50 | 155,00 | 16,8% |
| PXM | 5% | 203,54 → 193,36 | 183,09 | 18,4% |
| Q2460-B | 5% | 360,97 → 342,92 | 335,51 | 16,3% — ⚠️ **sem preço de referência**: roda sem preço riscado |
| PG2460 | 10% | 248,75 → 223,88 | 217,76 | 16,7% |
| P3050 | 10% | 467,67 → 420,90 | 401,99 | 17,8% |
| P3060 | 10% | 511,42 → 460,28 | 404,24 | 22,6% |
| P4080 | 10% | 1.070,17 → 963,15 | 895,93 | 19,3% |

Critério de seleção: **tráfego (Business Report 07–13/09) × margem ≥ 15%**. Detalhe em `ciclos/EC-18-09_ofertas.md` §E7.

**⚠️ Duração de 30 dias, não 7.** O plano era 21–27/09; o LEO configurou até **20/10**. Consequências:

1. **Corte de série na Era O6→O7.** A Era inteira (~23/09–05/10) roda com esses 10 SKUs em desconto. **Conversão e ACOS deles não são comparáveis com as Eras anteriores** — marcar no fechamento da O7, como se faz com a migração de ASIN. A O6 (22/09) lê a Era 09–21/09, que é limpa (só 21/09 tem desconto).
2. **Conflito com o Prime Day (05–11/10).** Oferta não empilha com desconto no preço no mesmo ASIN — para colocar qualquer um desses 10 em Melhor Oferta no Prime Day, o desconto precisa ser **encerrado antes**. E há um segundo efeito: duas semanas a 5–10% rebaixam o preço de referência que a Amazon usa para validar o preço de uma oferta; a oferta do Prime Day teria de ir **abaixo** do promocional atual. **Decidir na O6 se os 10 ficam até 20/10 ou se o desconto encerra antes do Prime Day.**
3. **Regra de atribuição do Ads desconhecida** — ver §6.

**Leituras:** primeira em **28/09** (7 dias) contra a linha de base de sessões em `ciclos/EC-18-09_ofertas.md`; leitura final na O7.

### Auditoria de conformidade — 28/08/2026

As duas listas foram cruzadas contra o **Simulador da Planilha Mestra v4.3.2** (cenário SP Interior). Resultado: **conformidade total, zero violações**.

- **Promo 3+:** 101 SKUs, todos com margem ≥19%. Os 12 SKUs do catálogo abaixo de 19% estão corretamente excluídos, **sem exceção e sem sobra** — o maior excluído (L2430-A, 18,72%) fica abaixo do menor incluído.
- **Promo 5+:** 83 SKUs, todos Pequenos/Médios com margem ≥19%. Os 18 SKUs classe Grandes do catálogo estão todos fora.
- Todos os SKUs das duas listas existem no Simulador com **grafia exata**, inclusive `L2450--CZ`. Zero SKU órfão.

**Não reabrir esta verificação na O5.**

*Observação registrada, sem ação:* o critério de ≥19% é medido em **SP Interior**. No cenário **RS Capital** vários SKUs promocionados caem abaixo do piso de 15% da meta. É característica conhecida da estrutura, não defeito de configuração.

---

## 8. Ciclo operacional atual

O3 concluída: 11/08/2026

**O4 concluída: 25/08/2026**

Monitoramento previsto: **31/08/2026**.

**O monitoramento de 07/09 foi ELIMINADO (decisão de 28/08).** Motivo: 07/09 é feriado, confirmado como **dia não operante no calendário de envio da conta**, e a O5 do dia seguinte lê a Era inteira. Leitura em 07/09 seria trabalho duplicado com 24h de intervalo. A O5 de 08/09 absorve a leitura do período. Intervalo de 8 dias entre leituras contra os 7 do ritual — o Playbook trata a **cadência semanal como conveniência operacional, não regra**.

**EXCEÇÃO DOCUMENTADA (28/08):** o fechamento do `Livro_Vendas` de Agosto/2026 move de **07/09 para 08/09** por causa do feriado da Independência. É **exceção documentada, não mudança de protocolo** — o fechamento segue sendo na primeira segunda do mês.

**Ordem no dia 08/09: `Livro_Vendas` primeiro, O5 depois.**

**O5 concluída como análise: 08/09/2026** — 17 linhas aprovadas item a item pelo LEO, **execução pendente**. Diagnóstico, auditoria e pacote em `ciclos/O5-08-09_*`.

**Monitoramento de 14/09** — semanal + leitura do 9.9 + **conferência de estado obrigatória das 9 execuções da O5 contra o Registro de Alterações**. Precedente que torna isso obrigatório: a auto L1618-o115/07 foi registrada como pausada em 25/08 e encontrada **ativa** em 31/08 (EC-002).

**O monitoramento de 21/09 foi ELIMINADO (decisão do LEO, 09/09).** Motivo: a janela de 7 dias (15–21/09) está inteiramente contida na Era que a O6 lê no dia seguinte (09–21/09) — mesmo dado, 24h de intervalo, sem decisão possível no meio. **Não é o mesmo caso de 07/09:** aquele era feriado sem dado a ler; este tem dado, mas ele é relido com mais contexto na O6. **A eliminação é condicionada à conferência de estado no monitoramento de 14/09** — se ela não acontecer, o monitoramento de 21/09 volta.

**O6: 22/09/2026** (terça) · Era O5→O6: **09–21/09 = 13 corridos, 9 úteis, sem feriado** · O7 estimada ~06/10 · fechamento do `Livro_Vendas` de setembro em **05/10** (1ª segunda, sem exceção prevista).

Datas futuras devem ser atualizadas quando o ciclo efetivamente ocorrer.

---

## 9. Inventário de estratégias de lance — PENDÊNCIA RESOLVIDA ✅

**Contagem pós-O5 (export de 09/09, inclui pausadas): 75 dinâmicas aumento/redução · 4 fixas · 1 somente redução.** A L3070-B saiu de fixa para dinâmica (O5-009). Fixas restantes: Cinzeiros, Bituqueiras, Extintor, auto EGC — o grupo de controle do piloto.

Resolvida na O4 com o export do Gerenciador de 25/08.

- **Estruturas da fase da assessoria** (gerações o1/o2/o3, ativas ou pausadas): lances dinâmicos — aumento e redução. Exceção única: auto L1618-T-o130/06 (somente redução; pausada).
- **Estruturas novas:** fixos — exceto a 6B, dinâmica desde O4-014.
- **Geral DBA-o311/08:** dinâmicos — aumento e redução.

Contagem no export de 25/08 (pré-O4-014): **73 dinâmicas aumento/redução · 6 fixas · 1 somente redução**.
Pós-O4: **74 · 5 · 1**.

Nunca presumir estratégia antes de verificar a campanha.

---

## 10. Estado da conta — 25/08/2026 (pós-execuções O4)

⚠️ **CORREÇÃO (O5, 08/09):** o export do Gerenciador traz **16 campanhas ativas**, não 15. Os 16 nomes coincidem com o mapa vivo — era erro de contagem, não campanha esquecida. A O5 propõe pausar 4, o que levaria a **12** após a execução.

**Campanhas ativas: 12** (pós-execução da O5, conferido no export de 09/09: 12 ATIVADO / 68 PAUSADO).

Eram 16 antes da O5 — o snapshot de 25/08 dizia 15, que era erro de contagem. A O5 pausou 4: PI L2470-CZ, PI PG3070, auto PXM-o425 e auto SP-01.

**As 12 ativas:** Geral DBA-o59/09 · 6B Lixeiras banheiro · Extintor · Cinzeiros · Bituqueiras · L3070-B · PI P3070-o228/07 · PI PXM-o311/08 · PI L2030-B-o311/08 · auto PXP-o311/08 · auto SP-PP-o59/09 · auto EGC.

**Renomeações da O5 (convenção de ciclo):** `geral DBA-o311/08` → **`DBA-o59/09`** · `SP-PP-o425/08` → **`SP-PP-o59/09`**.

Eram 21 no export da manhã. A O4 pausou 5 (PI P3050, auto L1618-o115, auto PG3070-o115, PI P3060-o115, PI PXP-o103); PI SP-01 está pausada desde 17/08.

| Campanha / grupo | Situação |
|---|---|
| Geral DBA-o311/08 | orçamento R$ 90 mantido · lance padrão R$ 0,48 |
| Manuais novas | 6B [piloto dinâmico], Cinzeiros, Extintor, L3070-B, Bituqueiras Space, EGC |
| Estruturas O3 | PI PXM-o311/08, auto PXP-o311/08, PI L2030-B-o311/08 — primeira leitura real na O5 |
| Radares | PI L2470-CZ, PI PG3070, auto PXM-o228/07 |
| PI P3070-o228/07 | **CONGELADA** — sem mexida de lance até o diagnóstico de conversão do SKU |
| Auto SP-PP-o116/07 | ativa · segmentação `substitutes` pausada · negativas aplicadas |
| Auto SP-01-o116/07 | ativa — reativada entre 17 e 25/08 |
| PI SP-01-o228/07 | **PAUSADA POR INELEGIBILIDADE** — não é falha de desempenho; contestação negada em 2ª análise em 25/08; caso encerrado por decisão Wintech para proteger aprovações vigentes. Casos: 21577340991 (precedente) · 21652133321 (vencido sem resposta) · caso final 25/08 |

---

## 11. Mapa vivo das campanhas — classificação O4

| Classe | Campanhas |
|---|---|
| **Vendedora** | Geral DBA |
| **Aposta** | 6B, Cinzeiros, Extintor, L3070-B, Bituqueiras, PI PXM-o3, auto PXP-o3, PI L2030-B-o3 |
| **Radar** | PI L2470-CZ, PI PG3070, auto PXM-o2, EGC |
| **Congelada p/ diagnóstico** | PI P3070 |
| **Pausada condicional** (retorno pós-página) | PI P3050, PI P3060 |
| **Pausada por inelegibilidade** | PI SP-01 |
| **Coberta pela Geral** | demais SKUs |

O mapa deve ser atualizado a cada otimização. Não usar classificação antiga se houver informação mais recente.

---

## 12. Pendências operacionais atuais

> **Fechadas na O5 (08–09/09):** os **lances por segmentação da Geral** — resolvido pelo export da O4, que traz 0,45/0,45/0,54/0,54 em 25/08, idênticos aos de 08/09; como a O4-015 mexeu no **lance padrão** (0,40→0,48) e as segmentações nunca leram nenhum desses valores, **a O4-015 é inerte por evidência, não por inferência**. E o **halo Q2430-A**, fechado em 08/09.

> **Abertas com origem na O5:**
> - **Frete real × `Ref_Frete`** — segue aberta. 9 novas observações Qtd=1 na Era (razão real/tabela **46,3% a 99,8%, mediana 62,9%**) reforçam o achado. Recálculo de margem é decisão de Mestra (LEO/Dianna), não de Ads.
> - **Atribuição de oferta ao preço da oferta** — inferência de **1 pedido** (PG2460, 07/09, R$ 223,88). Não virar regra antes da leitura de 14/09. A atribuição a **preço de tabela** (31/08) vale para a **promoção de quantidade**, que é outro mecanismo.
> - **SP-T e SP-01 anunciados na Manual Bituqueiras** — o §12 do `CLAUDE.md` diz que as duas seguem pausadas até a resolução do caso 21652133321, mas ambas são anunciadas ali (SP-T 12 impressões, SP-01 14, entre 20/08 e 04/09), e o caso foi **encerrado com contestação negada**, não resolvido. Custo desprezível (R$ 0,91 em 30 dias); **contradição de documentação em aberto, decisão do LEO**.


1. **Confirmar execução de O4-014 e O4-015 — ✅ RESOLVIDA em 26/08.** Execução confirmada no console por Wintech; Registro de Alterações preenchido com as 19 entradas da O4 em status **EXECUTADA - EM MATURAÇÃO**.
2. **Fila de conversão — DECIDIDA EM DOIS NÍVEIS (26/08).** Margens saudáveis, cliques sem venda — mas nenhum SKU atingiu volume onde zero venda seja anômalo (conversão média ~1,72%). A fila passa a ter duas ordens distintas, porque são duas atividades diferentes:

   **Nível 1 — revisão barata** (10 min/SKU: página, preço, oferta). Ordena por **valor diagnóstico**, não por retorno. Ordem mantida: **L1618-T → P3070 → P3050 → Q2460-B → P3060 → L2030-B → P4080**. O L1618-T segue em primeiro por ser o maior tráfego da conta (37 sessões/semana, CTR 2%) — se existe problema sistêmico de página, aparece nele primeiro. Sem presunção de defeito.

   **Nível 2 — investimento profundo** (reescrever listing, novas fotos, mudança de preço). Ordena por **lucro × tráfego**:

   | # | SKU | Sessões/sem | Lucro/un | Lucro esperado/sem |
   |---:|---|---:|---:|---:|
   | 1 | P3060 | 19 | R$ 143,36 | R$ 46,85 |
   | 2 | P3070 | 16 | R$ 160,07 | R$ 44,05 |
   | 3 | P4080 | 7 | R$ 268,22 | R$ 32,29 |
   | 4 | Q2460-B | 22 | R$ 69,89 | R$ 26,45 |
   | 5 | P3050 | 8 | R$ 110,94 | R$ 15,27 |
   | 6 | L1618-T | 37 | R$ 21,36 | R$ 13,59 |
   | 7 | L2030-B | 6 | R$ 29,58 | R$ 3,05 |

   ⚠️ **ATUALIZAÇÃO (O5, 09/09): a decisão foi ADIADA para a O6 (22/09)**, por decisão do LEO. ⚠️ **O gate mudou em 14/09: não é mais o GS1, é a ISENÇÃO DE GTIN** (ver pendência 7). A fila profunda e a proposta de concentração continuam sendo **uma decisão só**. Insumo da O5 para o piloto: **P3060 + P3050** (+P4080 opcional) — tráfego mensurável e zero venda, portanto nada de histórico a destruir. Fora do piloto: L2025-T e L1618-T (vendem orgânico) e P3070 (PI ativa e acabou de converter). Ver `docs/PROPOSTA_CONCENTRACAO_O5.md`.

   **Reordenação da fila Nível 2 fica para depois do 9.9** — 4 dos 7 SKUs estiveram em oferta. O **L1618-T sai da fila de diagnóstico** (2 vendas orgânicas na Era), mas ⚠️ **uma delas foi devolvida em 09/09** com o comentário *"a lixeira é muito grande para usar onde eu gostaria"* — sinal de percepção de escala na página, no SKU que era o nº 1 da fila Nível 1. Reavaliar em 14/09.

3. **Lances por segmentação da Geral — ✅ RESOLVIDA em 08–09/09 (O5).** Coletados: `close-match` 0,45 · `complements` 0,45 · `loose-match` 0,54 · `substitutes` 0,54 — idênticos ao export da O4 de 25/08. Como a O4-015 alterou o **lance padrão** de 0,40 para 0,48 e as segmentações **nunca leram nenhum desses dois valores**, a O4-015 é **inerte por evidência**. Os lances vigentes após a O5 estão no §3. Ver `ciclos/O5-08-09.md`.
4. **Halo Q2430-A — ✅ RESOLVIDA em 08/09**, no fechamento do `Livro_Vendas` de agosto: confirmado Q2430-A → Q3060-A, pedido de R$ 1.741,56 = 3 un da Aro Quadrada 50L (B0H51P391G), atribuído à Geral DBA. *Registro do raciocínio original, mantido:* CONFIRMADO POR INFERÊNCIA FORTE (26/08). A venda de 20/08 foi **3 un × R$ 580,52 = R$ 1.741,56**; o SKU anunciado Q2430-A custa R$ 231,21 e R$ 1.741,56 ÷ 231,21 não fecha em número inteiro. Consistência numérica exata com 3 un da Aro Quadrada 50L (B0H51P391G). **Validação final no pedido durante o fechamento do Livro_Vendas em 08/09** — sai de graça, o Livro será aberto de qualquer forma. Produto anunciado ≠ produto comprado.
5. **Frete por unidade — PARCIALMENTE RESOLVIDO (28/08), por medição.**

   **✅ RESOLVIDO — o frete cobrado NÃO escala com a quantidade.** Cruzamento dos 10 pedidos multi-unidade do `Registro_Vendas` contra a `Ref_Frete`: a tabela tem apenas **Região × Classe**, sem dimensão de quantidade — é **valor por remessa**. **9 dos 10 foram cobrados exatamente a tarifa de 1 unidade** da tabela. Única exceção: PXM 3un/Ceará Capital, cobrado R$ 159,96 contra R$ 70 de tabela.

   **Reforço — Pedido Franca (701-0789914-6289838, 22/07):** pedido multi-SKU de **4 unidades** (L2025-B 1un + L1623-B 1un + L2030 2un), São Paulo Interior, **cobrado R$ 16,90 — exatamente a tarifa de 1 unidade** de Pequenos/SP Interior. Frete lançado só na primeira linha, conforme a convenção do `Registro_Vendas`; as linhas seguintes aparecem zeradas e **não são observações de frete**.

   **✅ RESOLVIDO — o frete real cresce com a quantidade, logo o subsídio AMPLIA.** **Q4070-A, 4un, SP Capital: cobrado R$ 106, real R$ 300 — 2,8× a tabela, subsídio de −R$ 194 num único pedido.** P3060 2un: 1,5×. L2430-B 2un: 1,2×. PXP 3un: 1,3×. PXM 3un: 1,2×.

   **Isto valida a exclusão dos Grandes da promoção de 8%.** Verificado nas 53 regiões da `Ref_Frete`: em **Grandes, cobrança = custo real em 100% das linhas** — não há subsídio de projeto. Todo o risco da classe vem da **quantidade**, e o Q4070-A o mede.

   **⚠️ CORREÇÃO REGISTRADA:** a redação de 28/08 afirmava que o subsídio **diluía** em pedido multi-unidade. Era inferência não verificada e estava **invertida**. Retirada.

   **🔶 ABERTO — a `Ref_Frete` superestima o frete real, e não só em Pequenos.** Escopo da medição: linhas de `Qtd=1` com frete real > 0 e região presente na `Ref_Frete` — as linhas zeradas de pedido multi-SKU ficam de fora por não serem observação de frete.

   | Classe | Obs. | Abaixo da tabela | Mediana real/tabela |
   |---|---:|---:|---:|
   | Pequenos | 16 | 14 | **49%** |
   | Médios | 12 | **12 de 12** | **63%** |
   | Grandes | 1 | 1 | 67% |
   | **Todas** | **29** | **27** | **~55%** |

   *(Contagem: 42 linhas preenchidas − 11 multi-unidade = 31 de `Qtd=1`; menos 2 zeradas de multi-SKU (L21, L30) = **29 observações**.)*

   **Consequência:** se **Pequenos e Médios** estão pessimistas no Simulador, as margens de **praticamente todo o catálogo** estão subestimadas. O critério de **≥19% das promoções** e os **rankings de lucro** precisam ser reavaliados sobre **frete real, não sobre tabela**. Verificar na O5, com o Livro de agosto fechado. **Nenhuma decisão deve ser tomada com base nisto antes da verificação.**

   **🔶 ABERTO — o subsídio de projeto não é exclusivo dos Grandes; é o oposto.** A `Ref_Frete` embute cobrança abaixo do custo real em **14 regiões de Pequenos e 14 de Médios** (Sul, Sudeste, ES, MG, RJ e SP), e em **zero** de Grandes. Exemplos: Pequenos/RS Capital cobra R$ 24,90 contra custo real R$ 46,50 (−R$ 21,60); Médios/ES Capital cobra R$ 59,90 contra R$ 93,00 (−R$ 33,10). **Pequenos e Médios carregam subsídio estrutural na tabela antes de qualquer efeito de quantidade; Grandes carregam apenas o efeito de quantidade.**

   **NOTA DE MÉTODO:** comparar SKUs diferentes na mesma quantidade **não responde** à pergunta de escala — confunde quantidade com peso unitário. A resposta veio da `Ref_Frete` cruzada com o frete cobrado real, não de mais amostra de vendas. E **linhas zeradas de pedido multi-SKU não são observações** — nem de divergência de cobrança, nem de frete real.

   Resolver antes de ampliar a promoção de 8%.

6. **Acompanhar gasto contra o teto mensal de R$ 1.000.**

7. **MIGRAÇÃO DE ASIN — recriação do catálogo sob a marca WINNET METAIS (pendência nova, 01/09/2026). Escopo decidido na O6 (22/09)** — adiado na O5 por decisão do LEO; gate: **isenção de GTIN** (decisão do LEO, 14/09 — substitui o GS1). Fundido com a proposta de concentração — são a mesma decisão. Insumo: P3060 + P3050 (+P4080).

   **Origem:** Brand Registry aprovado, mas o atributo de marca "Genérico" dos ASINs atuais **não pode ser alterado** (caso 21821042531). A+, Avaliações, Brand Analytics e Sponsored Brands só operam sobre ASINs novos criados sob a marca.

   **Estratégia: faseada, não parcial.** Piloto de 2–3 SKUs na O6 (22/09) → resto do núcleo após 1 Era de leitura → cauda com ficha clonada. Destino provável é migrar tudo; o piloto existe para **medir a perda de orgânico** antes de comprometer o catálogo.

   **Sequência obrigatória por SKU:** ASIN novo publicado e ativo → oferta antiga **encerrada (encerrar, não excluir)** → produto trocado no grupo de anúncios.

   **Riscos operacionais:** anúncio duplicado é violação · grupo de anúncios com produto sem oferta ativa **para de entregar**.

   **O que sobrevive:** campanha, orçamento, estratégia de lance, palavras-chave, negativas acumuladas, alvos de PI, ajustes de posicionamento e histórico de campanha. **O que zera:** histórico de conversão e ranking orgânico do ASIN.

   **Exclusões:** **SP-01 e SP-T ficam fora da migração** — recriar dispara nova análise de política e há histórico de fumo; não expor aprovação vigente.

   **Item novo para a O5:** avaliar criar **variações pai/filho** na recriação (L1618/-A/-B/-T e famílias similares hoje competem como páginas isoladas). É a única janela sem custo extra para fazer isso.

   **Pré-requisito em andamento — CAMINHO TROCADO EM 14/09 (decisão do LEO):** **isenção de GTIN** na Amazon, solicitada dentro do fluxo de cadastro de anúncio novo e ⚠️ **RECUSADA em 14/09**. ~~EANs próprios via GS1 Brasil (decisão Wintech + Dianna, 01/09). Isenção de GTIN descartada.~~ **Motivo declarado: imagens fora dos requisitos.** ⚠️ **Causa raiz: três grafias diferentes** — produto que embarca `Winnet Home & Pro` · amostra fotografada `WIN NET METAIS` · Brand Registry `WINNET METAIS` *(confirmado na tela em 14/09, sem espaço — portanto a amostra gravada também está errada)*. As fotos eram de uma **amostra, não da unidade que embarca**. Refazer fotos não resolve: o bloqueio é **físico**. **O corte de 19/09 NÃO será cumprido e o escopo da migração entra na O6 (22/09) como `NÃO DECIDIR AINDA`** — o dia fica para os vereditos. O cronograma da migração passa a depender da **produção** (gravação da marca no inox, que a amostra prova ser viável), não da Amazon.

   **O que a troca de caminho NÃO resolve** — registrado para não se perder, não para reabrir a decisão:
   - **Nota fiscal:** a isenção não gera GTIN, então o campo `cEAN` do XML continua sem código. Pendência aberta com a contabilidade/ERP.
   - **Adesivo:** sem GTIN não há código de barras para imprimir. A reimpressão com a grafia `WINNET METAIS` continua necessária; o código de barras, não.
   - **Outros canais:** a isenção vale só na Amazon. Mercado Livre e qualquer outro canal seguem sem identificador próprio.
   - ⚠️ **Risco acoplado ao INPI 944049613 (em oposição):** a isenção é concedida **por marca**. Se a marca for negada e a Amazon revogar o Brand Registry, a isenção cai junto e os ASINs novos ficam sem identificador e sem marca. O EAN próprio sobreviveria a esse cenário; a isenção não. **Decisão tomada com esse risco conhecido.**

   **NOTA DE MÉTODO — marco de corte de série:** a migração é um **corte na série histórica por ASIN**. Fica registrado que **Era pré-migração e Era pós-migração NÃO são comparáveis** por SKU migrado — reinício de amostra explícito, a marcar no fechamento do ciclo que executar cada fase. O SKU interno não muda: `Registro_Vendas`, `Livro_Vendas` e margens permanecem íntegros; o corte é só de ASIN.
8. **Dispersão de catálogo — NOVO (26/08).** *(numeração corrigida: havia dois itens 7)* 323 sessões/semana distribuídas em 74 ASINs; mediana de 2 por ASIN; **zero ASINs** atingiram as ~58 sessões necessárias. Proposta de concentração em 9 SKUs — **decisão unificada com o Nível 2 da pendência 2, adiada para a O6 (22/09)**, com gate na **isenção de GTIN** (era GS1 até 14/09).

   **Bloqueador de estoque RESOLVIDO em 26/08:** a operação anuncia disponibilidade respaldada por **reposição imediata de fábrica**, não por estoque próprio, e **pode expedir direto da fábrica** — sem perna de transferência. Capacidade não é restrição e o prazo de manuseio prometido é cumprido. **A O5 fica dependendo apenas do monitoramento de 31/08.**

---

# REGRA DE MANUTENÇÃO DESTE DOCUMENTO

Ao final de cada otimização Ox:

1. atualizar data do snapshot;
2. atualizar ciclo atual;
3. atualizar campanhas ativas/suspensas/pausadas;
4. atualizar papéis das campanhas;
5. atualizar lances modificados;
6. atualizar posicionamentos;
7. atualizar orçamentos relevantes;
8. atualizar vigias e respectivos prazos;
9. remover estados antigos que não representam mais a conta;
10. preservar histórico importante no registro do ciclo, e não acumulá-lo indefinidamente neste documento.

Este documento deve representar O ESTADO ATUAL DA OPERAÇÃO.

O Playbook representa O MÉTODO.

A Planilha Mestra representa OS DADOS FINANCEIROS E OPERACIONAIS POR SKU.
