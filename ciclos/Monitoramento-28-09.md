# Monitoramento semanal — 28/09/2026 (MODO A)

**Janela:** semana pós-O6. Export do Gerenciador **22–28/09** (7 dias; confirmado pelo LEO); Business Report **22–27/09** (6 dias, puxado 28/09 — regra D+2 respeitada; confirmado pelo LEO); painel do desconto no preço **21–27/09** (Terminado). ⚠️ As três janelas não coincidem: o BR não cobre 21/09 nem 28/09; o export inclui 22/09 (dia da O6, fora da Era O6→O7 que começa em 23/09).
**Pauta fixada pela O6 para hoje:** (1) leitura dos 7 dias do desconto no preço (EC-007…016); (2) gatilho O6-006 do Q2460-B; (3) reconferência da lista do Prime Day para PXM, PG2460, P3060, P4080, P3050.
**Arquivos:** `relatorios/amazon/monitoramento-28-09/`.

## B. Qualidade dos dados

| Fonte | Janela | Observação |
|---|---|---|
| Export do Gerenciador (80 campanhas) | 22–28/09 (LEO) | 10 ATIVADO / 70 PAUSADO. **Impressões = 0 em todas as linhas** (não populadas, como nos exports anteriores) — CTR/entrega só com print do console. Vendas via Custo × ROAS |
| Business Report por ASIN | 22–27/09 (LEO), 6 dias | 50 ASINs · 202 sessões · 254 pv · 8 un · 5 itens · R$ 1.861,82. Buy Box 100% em todos (PXM 88,9%) |
| Painel da promoção `TESTEDESCONTONOPRECO` | 21–27/09 | 10 ASINs · 7 un · R$ 1.187,20 · 166 visualizações · conversão 4,2%. **Fecha ao centavo com o BR** para os 10 SKUs (220,40 + 966,80) |
| Ausentes | — | print do console com impressões · lista de ofertas do Prime Day de hoje · Mestra com as vendas da semana |

**Bijeção BR × Ads (a preço com desconto):** o painel da promoção (21–27/09) e o BR (22–27/09) fecham nos mesmos 7 un — logo **não houve venda com desconto em 21/09**. BR R$ 1.861,82 − Ads R$ 690,28 = **R$ 1.171,54 = 2 PXM (386,72) + 1 L1618-T (110,20) + 1 EGC (674,62)** — fecha ao centavo.

## Ads — semana (export, vendas via ROAS)

| Campanha | Cliques | Custo | Compras | Vendas | ACOS |
|---|---:|---:|---:|---:|---:|
| Geral DBA-o59/09 | 89 | 47,44 | 2 | **690,28** | **6,9%** |
| PI P3070-o228/07 | 13 | 14,38 | 0 | 0 | — |
| 6B Lixeiras banheiro | 2 | 1,59 | 0 | 0 | — |
| Bituqueiras | 1 | 1,09 | 0 | 0 | — |
| Auto PXP-o311/08 | 1 | 0,75 | 0 | 0 | — |
| Extintor | 1 | 0,72 | 0 | 0 | — |
| PI PXM · PI L2030-B · Cinzeiros · L3070-B | 0 | 0 | 0 | 0 | — |
| **Total** | **107** | **65,97** | **2** | **690,28** | **9,6%** |

Zumbis: nenhuma pausada com custo. SP-PP e EGC seguem pausadas (O6-001/002).

**Composição das 2 compras da Geral (inferência aritmética, única combinação possível):** R$ 690,28 = **3 × PXM a 193,36 + 1 × L1618-T a 110,20** — ambos a **preço com desconto**. → **Regra de atribuição do desconto no preço: o Ads valoriza ao preço com desconto** (igual à Melhor Oferta; diferente da promoção de quantidade, valorizada a preço de tabela). **✅ CONFIRMADA em 28/09 pelo print do pedido de 24/09 (3 PXM, ES Capital): produtos R$ 580,08 = 3 × 193,36 (preço com desconto), promoção de quantidade −R$ 29,00 por cima, total de produtos pago R$ 551,08.** O Ads e o BR registram R$ 580,08 — **preço com desconto, antes da promoção de quantidade**. Regra fixada.

## Leitura dos 7 dias do desconto no preço (21–27/09)

| SKU | Desc. | Baseline sessões/sem (EC-18-09, BR 07–13/09) | Sessões 22–27/09 (BR, **6 dias**) | Un. vendidas | Leitura |
|---|---:|---:|---:|---:|---|
| L2025-T | 5% | 52 | 26 | **0** | tráfego caiu à metade; não converteu |
| L1618-T | 5% | 26 | 27 | **2** (R$ 220,40) | converteu — 1ª venda com desconto no preço |
| PXP | 5% | 23 | 7 | 0 | tráfego caiu; segue para o Prime Day a 10% |
| Q2460-B | 5% (sem preço riscado) | 14 | 9 | **0** | **gatilho O6-006 disparou** |
| P4080 | 10% | 13 | 13 | 0 | — |
| P3060 | 10% | 13 | 12 | 0 | — |
| PG2460 | 10% | 12 | 5 | 0 | — |
| PXM | 5% | 6 | 7 | **5** (R$ 966,80, 2 pedidos) | **converte com qualquer desconto** (9.9: 3 un a −15%; agora 5 un a −5%) |
| P3050 | 10% | — | 5 | 0 | — |
| L2030 | 5% | — | 3 | 0 | — |
| **Total** | | | | **7 un · R$ 1.187,20** | 2 de 10 SKUs converteram |

⚠️ Baseline é a semana do 9.9 (com ofertas no ar, 7 dias) e o BR desta semana tem 6 dias — mesmo ajustando ×7/6, L2025-T (≈30), PXP (≈8) e PG2460 (≈6) ficam bem abaixo; comparação de tráfego é **indicativa**, não conclusiva. O que é conclusivo: **o desconto não gera tráfego** (esperado) e **converteu em 2 SKUs** (PXM, L1618-T).

**Decisão pedida pela EC-18-09 para hoje — prorrogar até 04/10 ou encerrar:** recomendação **ENCERRAR (já terminou em 27/09; não recriar)**. Motivo: a semana 28/09–04/10 de preço limpo protege o preço de referência de P3070/PXP no Prime Day e dos 5 SKUs que podem entrar na lista de hoje; PXM já provou que converte com oferta e L1618-T com 2 un/sem não justifica. Confiança MÉDIA.

## Mestra recebida (28/09) — conferência das linhas 68–72

| Linha | Venda | Mestra | BR / pedido | Status |
|---|---|---|---|---|
| 68 | 22/09 PXM 2 un CE Capital | desc. 20,36 · receita 386,72 | 2 × 193,36 = 386,72 | ✅ |
| 69 | 23/09 EGC 1 un SC Interior | 674,62 (preço cheio) | 674,62 | ✅ |
| 70 | 24/09 L1618-T 1 un ES Interior | corrigida: desc. 5,80 · receita 110,20 | BR: 2 un a 110,20 | ✅ (corrigida 28/09) |
| 71 | 24/09 PXM 3 un ES Capital | corrigida: desc. 59,54 · receita 551,08 · margem 15,6% | print: 580,08 − 29,00 = 551,08 | ✅ (corrigida 28/09) |
| 72 | 26/09 L1618-T 1 un RS Capital | corrigida: desc. 5,80 · receita 110,20 · frete real pendente | 110,20 | ✅ (corrigida 28/09) |
| 62 | 13/09 L1618-B 2 un (R$ 259,80) | marcada **DEVOLUÇÃO** (pedido 702-4604095-6119462) | — | 3ª devolução de setembro |

Unidades batem (PXM 5 · L1618-T 2 · EGC 1 = 8 = BR). Valores: BR R$ 1.861,82 − Mestra corrigida R$ 1.832,82 = **R$ 29,00 = a promoção de quantidade** — mesma regra já registrada (BR a preço antes da promo de quantidade). Validações intactas (7, iguais à versão anterior). Totais após correção: receita R$ 27.711,42 · lucro R$ 6.953,01 · margem 25,09%. **Mestra corrigida recebida e arquivada em 28/09; bijeção BR × Mestra = R$ 29,00 (promo de quantidade), fechada.**

## Vigias com prazo hoje

| Vigia | Condição | Dado | Resultado |
|---|---|---|---|
| O6-006 — Q2460-B na Geral | 0 venda na semana de desconto → pausar o anúncio do SKU dentro da Geral | 9 sessões · 12 pv · 0 un (BR); 12 visualizações · 0 (painel) | **DISPAROU → PAUSAR o anúncio do Q2460-B na Geral** (nível produto). Ressalva já registrada: rodou sem preço riscado — o teste discriminante preço × página ficou enfraquecido; a pausa vale pela régua, não fecha a hipótese de preço |
| O6-004 — PI P3070 | 0 venda **E** ≥15 cli na Era → −20% | 13 cli · R$ 14,38 · 0 na semana (Era desde 23/09) | ainda não (13 < 15); ler na O7 |
| O6-011/012/014/015/016 — Prime Day | reconferir lista em 28/09 | lista de 28/09 (5 recomendações, Melhor Oferta): P3070 ✓ · PXP ✓ · **L2025-T (novo)** · **L1618-T (novo)** · Q4070-A (fora). **PXM, PG2460, P3060, P4080, P3050 seguem não elegíveis** | as 5 linhas ficam AGUARDANDO até 05/10 (dia do início); na prática, fora do evento. **Decisão nova para o LEO:** inscrever L1618-T e/ou L2025-T a 5% |

## Prime Day — lista de 28/09 e os dois candidatos novos

| SKU | Melhor Oferta a 5% ~~(mínimo)~~ | Margem SP Interior | Evidência de conversão | Leitura |
|---|---|---:|---|---|
| **L1618-T** (B0H3QQLFFY) | 116,00 → **110,20** | **15,3%** (no piso) | **2 un a −5% nesta semana** (desconto no preço), 27 sessões; 9.9 com oferta: 0 | candidato — a única lixeira que converteu com desconto |
| **L2025-T** (B0H6C5CTSC) | 132,90 → **126,26** | **16,5%** | 0 un a −5% nesta semana (26 sessões); 9.9 com oferta: 0; vende orgânico e por promo de quantidade | maior tráfego do catálogo; o selo do evento é o que ainda não foi testado |

**Empilhamento com a promoção de quantidade:** a Melhor Oferta do 9.9 **não** empilhou (PXM 13/09, 3 un a −15%: desconto 91,59 = só a oferta; sem os 5% de 3+). O desconto no preço **empilhou** (PXM 24/09). Logo, para as ofertas do Prime Day, o risco de furar o piso por 3+ unidades **não se materializou** na única observação disponível (n = 1). Se empilhasse: L1618-T 3+ → 12,1% · L2025-T 3+ → 13,3%.

**Decisão do LEO (28/09): os dois entram a 5%** (EC-017, EC-018). Recomendação original do Code: inscrever **L1618-T a 5%** (confiança MÉDIA — converteu a −5%, margem no piso) e **L2025-T a 5%** (confiança BAIXA-MÉDIA — não converteu com nenhum mecanismo, mas é o maior tráfego e 16,5% comporta; é o teste do selo). Nenhuma acima de 5%: L2025-T a 10% cai a 13,1% e L1618-T a 10% a 11,9%.

⚠️ **CORREÇÃO (28/09, fim do dia): o mínimo do evento é 10%, não 5%** — a "correção" de 22/09 estava errada (o canônico tinha razão). A tabela acima e a recomendação foram feitas sobre 5%. **A 10%:** L1618-T → R$ 104,40, **11,9%** · L2025-T → R$ 119,61, **13,1%** — os dois abaixo do piso de 15%. **Recomendação revisada do Code: nenhum dos dois entra.** L1618-T já converte a −5% fora do evento (desconto no preço) e a −10% perderia mais R$ 5,80 por unidade num SKU que já está no piso; L2025-T não converteu com nenhum mecanismo e ficaria a 13,1%. Se o LEO mantiver a inscrição, registrar como exceções documentadas (como o PXP) e reescrever EC-017/EC-018 a 10%. **Decisão final do LEO (28/09): os dois ficam FORA.** Não foram inscritos; EC-017/EC-018 retiradas do Registro. **Prime Day fecha com 2 SKUs: P3070 15% · PXP 10%.**

## Achados fora da pauta

- **EGC vendeu 1 unidade a preço cheio (R$ 674,62) com a campanha pausada e sem desconto** — não atribuída a Ads. É a primeira venda do EGC registrada nos relatórios. n = 1; não reabre a campanha, mas enfraquece a leitura "página não converte" e deve constar na fila de página.
- **Tráfego total caiu:** 202 sessões em 6 dias (≈236/sem) vs ~310/sem na janela 10–20/09 (487 ÷ 11 × 7), −24%. Sem impressões no export, não separo entrega de sazonalidade.
- **Setembro até 28/09:** R$ 287,66 (até 21/09) + R$ 65,97 (22–28/09) = **R$ 353,63 = 35,4% do teto de R$ 1.000**. Ritmo da semana R$ 9,42/dia.
- Geral com ACOS 6,9% na semana — abaixo do Objetivo; 1ª semana com loose-match a 0,45. Leitura de 1 semana; veredito da O6-005 na O7.

## H. O que NÃO fazer agora
1. Não escalar a Geral pelo ACOS de 6,9% — 2 compras, 1 semana.
2. Não reativar a EGC por 1 venda orgânica.
3. Não mexer na PI P3070 — gatilho O6-004 é da O7 e ainda não disparou.
4. Não recriar o desconto no preço antes do Prime Day (preço de referência).
5. ~~Não fechar a regra de atribuição~~ — fechada pelo print do pedido.

## I. Dados que faltam
~~Print do console~~ recebido: **19.379 impressões · 107 cli · R$ 690,28** (22–28/09) — linha 14 proposta em `dados/PROPOSTA_linha_Controle_Semanal_28-09.csv` · lista do Prime Day de hoje · Mestra corrigida (linhas 70–72) · decisões do LEO (Q2460-B; não recriar o desconto).


## Decisões do LEO (28/09, fim do dia)

1. **Desconto no preço: não recriar** antes do Prime Day. ✅
2. ~~L1618-T e L2025-T entram no Prime Day a 5%~~ → **FICAM FORA** (decisão final, 28/09): mínimo do evento é 10% e a 10% os dois furam o piso. EC-017/EC-018 removidas do Registro (72 entradas). Prime Day: P3070 e PXP.
3. **Q2460-B: anúncio pausado dentro da Geral — ✅ print conferido** ("Pausado", 916 impr / 15 cli em 22–28/09). ✅ Linha O6-006 fechada no Registro (veredito "gatilho disparou em 28/09, anúncio pausado", reavaliar 13/10). ~~Falta atualizar a linha O6-006~~ (Executado? SIM · Status EXECUTADA - EM MATURAÇÃO · Veredito "gatilho disparou em 28/09 — anúncio pausado" · Reavaliar 13/10).
4. Registro com os vereditos EC-007…016 lançado e conferido (72 entradas). Linhas O6-011/012/014/015/016 seguem AGUARDANDO — anotar "não elegível também em 28/09" e reavaliar 05/10.
5. Contexto e Parâmetros: versões finais de 28/09 trocadas no Project pelo LEO (Contexto retrocado após a inclusão do mapa SKU ↔ ASIN).

**Monitoramento de 28/09 ENCERRADO.** Pendências residuais do Registro (não bloqueiam): linhas O6-011/012/014/015/016 ainda com "reconferir 28/09" — anotar "não elegível também em 28/09" e reavaliar 05/10; linhas 209–210 do template perderam as fórmulas de Q/R (recolocar quando for usar).

**Vigias até o próximo monitoramento (05/10, Livro primeiro):** PI P3070 (13 cli / 0 na Era; gatilho O7 em 15) · Geral pós-loose 0,45 (ACOS 6,9% na 1ª semana) · Q2460-B pausado na Geral · EGC 1ª venda (orgânica) · Prime Day com 4 SKUs a partir de 05/10.


## Prime Day — a lista que deveria ter entrado (mínimo de 10%, piso 15%)

Critério da O6: **tráfego × margem ≥ 15% no preço da oferta** (Simulador SP Interior). Sessões = BR 10–20/09 + 22–27/09 (17 dias). Elegibilidade = listas de recomendação da Amazon de 22/09 e 28/09.

| # | SKU | Tabela | Oferta | Margem | Sessões 17d | Elegível? | Situação |
|---|---|---:|---:|---:|---:|---|---|
| 1 | **P3070** | 616,18 | 15% → 523,75 | 16,9% | 86 | 22 e 28/09 | ✅ inscrito |
| 2 | **P4080** | 1.070,17 | 15% → 909,64 (ou 10% → 963,15, 19,3%) | 15,9% | 39 | não | fora por elegibilidade |
| 3 | **P3060** | 511,42 | 15% → 434,71 | 19,4% | 30 | não | fora por elegibilidade |
| 4 | **PG2460** | 248,75 | 10% → 223,88 | 16,7% | 20 | não | fora por elegibilidade |
| 5 | **P3050** | 467,67 | 10% → 420,90 | 17,8% | 18 | não | fora por elegibilidade |
| 6 | **PXM** | 203,54 | 10% → 183,19 | 15,0% | 17 | não | fora por elegibilidade — o SKU que mais converte com desconto (9.9: 3 un; 21–27/09: 5 un) |
| 7 | EGC (opcional) | 674,62 | 10% → 607,16 | 15,6% | 36 | não | fora por elegibilidade; a O6 já o excluía (oferta do 9.9 zerou); 1ª venda em 23/09 foi orgânica, a preço cheio |
| — | **PXP** | 167,89 | 10% → 151,10 | **13,4%** | 36 | 22 e 28/09 | ✅ inscrito como **exceção ao piso** (decisão do LEO) |

**Ficam fora pelo piso** (a 10% caem abaixo de 15%): L2025-T 13,1% · L1618-T 11,9% · Q2460-B 13,0% · L1618-B 13,7% · L2030 12,8% · L2030-T 13,0% · L1623-T 11,4% · L2450-AML 12,0% · SP-PP 11,8% · P2025 14,2%. **Ficam fora por tráfego** (margem ok, sessões irrelevantes): Q4070-A 15,6% / 8 sess (também fora por decisão do LEO) · L2470-B 15,5% / 6 · Q3060-A 22,4% / 2 · SP-01 17,0% / 0.

**Resultado:** a lista ideal tinha **6 SKUs** (+ EGC opcional); a Amazon só abriu o evento para 2 deles (P3070 e PXP, este como exceção). **5 SKUs de margem e tráfego adequados ficaram fora por elegibilidade, não por decisão** — P4080, P3060, PG2460, P3050 e PXM. Para o próximo evento (Black Friday, 19/11+), o gargalo é a lista de recomendação da Amazon, que muda semanalmente: conferir toda segunda a partir de 4 semanas antes.

✅ **Lacuna fechada em 28/09:** o Relatório de Todas as Ofertas (`relatorios/amazon/monitoramento-28-09/relatorio_todas_as_ofertas_28-09.txt`) virou `dados/MAPA_SKU_ASIN.csv` — **113 SKUs ↔ 113 ASINs, bijeção exata com o Simulador da Mestra** (nenhum SKU só de um lado); os 22 pares que os documentos já usavam conferem; todos os 56 ASINs do Business Report têm SKU. Regra: o mapa é a fonte para cruzar BR × Mestra; atualizar quando entrar ou sair anúncio.

**Releitura com o catálogo inteiro (margem ≥ 15% a 10% **e** ≥ 5 sessões em 17 dias):** a lista de 6 (+ EGC) **não muda**. Entram na varredura, mas com tráfego marginal, mais 6 SKUs: L2460-CP (16,6%, 9 sess) · L4080-A (21,8%, 8) · Q4070-A (15,6%, 8 — fora por decisão do LEO) · L3070-B (18,3%, 7) · L2470-B (15,5%, 6) · Q4070-B (15,2%, 6). Com 6–9 sessões em 17 dias, nenhum justificaria oferta pelo critério tráfego × margem. Com tráfego mas abaixo do piso a 10%, além dos já listados: L2030-B 12,8% (10 sess) · L2025-B 11,2% (7) · Q3060-B 12,6% (6) · L2430-B 11,8% (5). **Conclusão mantida: 6 SKUs deveriam ter entrado; a Amazon abriu para 2.**


## Adendo 30/09 — Mestra atualizada (3 vendas 28–30/09)

| Data | SKU | Un. | Região | Receita | Margem | Observação |
|---|---|---:|---|---:|---:|---|
| 28/09 | L2030-B | 1 | RS Interior | 153,72 | 28,6% | 2ª venda registrada (1ª em 25/07) |
| 28/09 | **L1623-T** | 1 | SP Capital | 123,93 | 26,9% | **1ª venda registrada** — estava em INVESTIGAR CONVERSÃO DO SKU (18 cli / 0 em 30d na O6) |
| 30/09 | **P4080** | 1 | MG Capital | 1.070,17 | 30,9% | **1ª venda registrada**; classe Grandes (lançado como PG4080 e corrigido pelo LEO em 30/09). Não converteu a −10% em 21–27/09 (13 sessões) e vendeu a preço cheio 3 dias depois — n = 1 |

Todas a preço de tabela (desconto no preço encerrou 27/09). Origem Ads × não atribuída só com o export de 29/09–05/10. Para a O7: L1623-T sai de "zero conversão crônica" para "converteu 1 em ~25 sessões/mês" — n = 1, não fecha a fila de página, mas muda a leitura.
