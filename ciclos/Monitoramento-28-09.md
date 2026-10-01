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


## Adendo 30/09 — Prime Day: os 5 fora do evento e o "10.10"

**Fato:** a lista de recomendações da Amazon (22/09 e 28/09) não abriu o evento para PXM, PG2460, P3060, P4080 e P3050. A próxima rotação é 05/10, dia em que o evento começa — na prática, estão fora da Melhor Oferta do Prime Day. **Não existe "10.10" na Amazon Brasil**: no arquivo de agendamento de ofertas exportado em 22/09, os únicos eventos listados são **Mega Ofertas Prime Day (05–11/10)** e **Black Friday e Cyber Monday (a partir de 19/11)**; o 10/10 cai dentro do Prime Day. O 10.10 do Mercado Livre é sinal externo, não gatilho de ação na Amazon (CLAUDE.md §2).

**Plano B possível — desconto no preço 05–11/10 nos 5 SKUs** (opção B registrada em 22/09 e então descartada pelo LEO à espera da lista de 28/09). Não tem selo do evento nem entra na página de ofertas, mas o preço riscado aparece na busca durante a semana de maior tráfego do trimestre, e a regra de atribuição agora é conhecida (preço com desconto). Não conflita com P3070/PXP (que estão em Melhor Oferta) e mantém a semana de preço limpo até 04/10.

| SKU | 10% → oferta | Margem SP Interior | Com promo de quantidade empilhada (3+ / 5+) | Evidência de resposta a desconto |
|---|---:|---:|---|---|
| **PXM** | 183,19 | 15,0% | **11,7% / 9,5%** | converte com qualquer desconto: 3 un a −15% (9.9), 5 un a −5% (21–27/09) |
| **PG2460** | 223,88 | 16,7% | 13,5% / 11,5% | converteu com oferta no 9.9 (−10%); 0 a −10% em 21–27/09 |
| P3060 | 460,28 | 22,6% | 19,7% / 17,8% | 0 a −10% em 21–27/09; maior folga de margem |
| P4080 | 963,15 | 19,3% | 16,3% / 14,3% | 0 a −10% em 21–27/09; **vendeu a preço cheio em 30/09** |
| P3050 | 420,90 | 17,8% | 14,7% / 12,6% | 0 a −10% em 21–27/09 |

**Recomendação do Code (decisão do LEO):** desconto no preço 05/10 00:00 – 11/10 23:59 em **PXM e PG2460 a 10%** (os dois com evidência de resposta a desconto) e **P3060 a 10%** (folga de 22,6% absorve até o empilhamento). **P4080 e P3050 ficam a preço cheio**: não responderam a −10% na semana passada, o P4080 acabou de vender sem desconto, e o empilhamento com 3+ os deixa abaixo do piso. Confiança **MÉDIA**. ⚠️ Risco conhecido: a promoção de quantidade empilha com o desconto no preço (medido em 24/09) — no PXM um pedido de 3+ fica em 11,7%; é o mesmo risco já aceito na semana de 21–27/09, quando o pedido de 3 PXM saiu a 15,6% realizados (frete real abaixo da tabela). Criar hoje com início agendado em 05/10 preserva a semana de preço limpo.

**Alternativa zero:** não fazer nada nos 5 e ler o Prime Day só com P3070 e PXP. Custo: perder a semana de tráfego alto exatamente nos SKUs de margem e tráfego adequados que a Amazon deixou de fora.


**Decisão do LEO (30/09): cria o desconto de 10% nos 3 — PXM, PG2460 e P3060 — para 05–11/10.** Linhas EC-017/018/019 propostas em `dados/PROPOSTA_linhas_Registro_EC-017_a_019.csv` (colar em A83; as fórmulas de Q/R já apontam para 83–85). Print da criação pendente. Dianna ainda sem decisão sobre a marcação. Contexto e Parâmetros do Project: trocar após a criação das promoções.


**Achado de 30/09 (print do LEO):** a tela de criação do **desconto no preço** tem o campo **"Evento"**, e nele aparece **"Prime Big Deal Days"** — com datas travadas em 05/10 00:00 – 11/10 23:59, **público "Clientes Prime"**, "Nenhuma tarifa para esse evento" e tipo de desconto "Preço fixo". Ou seja: **qualquer SKU pode entrar no evento por este caminho**, sem depender da lista de recomendações da Melhor Oferta. Diferenças a registrar antes de comparar com a Melhor Oferta: (1) é um **desconto no preço vinculado ao evento**, não uma Melhor Oferta — a exibição (selo, página de ofertas) pode ser diferente e **só se mede depois**; (2) público restrito a Prime (o desconto de 21–27/09 era "Todos os clientes"); (3) "preço fixo" = informar o preço final (183,19 / 223,88 / 460,28), não o percentual. A recomendação dos 3 SKUs não muda; a decisão de estender a P4080 ou P3050 (que a Amazon também não listou) volta a ser possível e é do LEO. Registro: EC-017/018/019 lançadas (75 entradas) — conferir se a criação real usou o campo Evento e ajustar a coluna "Estado / valor aprovado" se sim.


**Criação conferida (print de 30/09, evento Prime Big Deal Days, público Prime, preço fixo):**

| SKU | Preço lançado | Desconto real | Visualização | Margem | Situação |
|---|---:|---:|---|---:|---|
| P3060 | 460,27 | 10,0% | riscado 511,42 · "10% off" · "Preço exclusivo do Prime" | 22,6% | ✅ conforme EC-019 |
| PXM | 183,18 | 10,0% | riscado 203,54 · "10% off" · "Preço exclusivo do Prime" | 15,0% | ✅ conforme EC-017 (R$ 0,09 acima do piso) |
| **PG2460** | **236,31** | **5,0%** | **"Sem preço de referência"** — sem riscado, sem selo | 19,8% | ⚠️ **divergente de EC-018 (10% → 223,88)** e sem preço de referência |

Preços ficaram R$ 0,01 abaixo do calculado (460,27 / 183,18) — arredondamento da tela para exibir "10% off"; sem efeito de margem.

**PG2460 sem preço de referência:** o mesmo sintoma do Q2460-B em 21–27/09. Causa provável: o SKU esteve a R$ 223,88 duas vezes em 30 dias (Melhor Oferta no 9.9 e desconto no preço em 21–27/09), e a Amazon deixou de reconhecer R$ 248,75 como preço vigente. Consequência: **qualquer desconto no PG2460 fica invisível na busca** (sem riscado, sem "Preço exclusivo do Prime") — a evidência do 9.9 (converteu com selo de oferta) não se transfere. Opções para o LEO: (a) corrigir para **R$ 223,88** (10%, o aprovado) e aceitar que só aparece como preço menor para Prime, custo só nas vendas que ocorrerem; (b) **excluir o PG2460** da promoção e deixá-lo a preço cheio, recuperando o preço de referência para a Black Friday. Recomendação do Code: **(b)**, confiança MÉDIA — sem exibição, o desconto não testa nada e ainda adia a recuperação da referência. Se ficar, é (a), nunca os 5% atuais.


## Adendo 30/09 — Prime Day largo: desconto no preço vinculado ao evento, catálogo inteiro

**Decisões do LEO:** PG2460 excluído da promoção · P4080 e P3050 fora · descrição interna `PRIMEDAY-DESCONTO-10` · **quer uma promoção mais larga**, já que o desconto vinculado ao evento aceita qualquer SKU.

**Lista completa em `dados/PROPOSTA_PrimeDay_desconto_evento_catalogo.xlsx` / `.csv`** (113 SKUs, preço fixo a 10%, margem SP Interior a 10% e com a promo de quantidade empilhada, sessões de 17 dias, recomendação):

| Grupo | SKUs | Critério |
|---|---:|---|
| JÁ NO EVENTO (Melhor Oferta) | 2 | P3070, PXP — não criar desconto (não empilha) |
| JÁ CRIADO | 2 | PXM, P3060 (EC-017, EC-019) |
| **A — entrar** | 3 | margem ≥ 15% a 10% **e** ≥ 10 sessões/17d: **P4080, EGC, P3050** — os dois primeiros que o LEO tirou são exatamente os melhores candidatos pelo critério; EGC no piso (15,6%) |
| **B — entrar** | 6 | margem ok, 5–9 sessões: L2460-CP, L4080-A, Q4070-A, L3070-B, L2470-B, Q4070-B |
| **C — opcional** | 49 | margem ≥ 15% a 10%, sem tráfego recente (inclui os cinzeiros L2470-CZ 22,8% e L2460-CZ 18,1%, e os pedais ALC). Custo só se vender; o selo pode gerar a 1ª visita; risco é só de referência de preço, que se recupera antes da Black Friday |
| FORA | 51 | abaixo do piso a 10% (todas as lixeiras pequenas: L1618/L1623/L2025/L2030/L24xx-B, Q2460-B…), PG2460 (sem referência), SP-01/SP-T (política), EMB (liquidação à parte) |

**Regras ao criar:** (1) usar o **preço fixo da coluna** (a tela arredonda R$ 0,01 para exibir "10% off" — sem efeito); (2) **excluir na hora qualquer SKU que a tela marque "Sem preço de referência"** — o desconto fica invisível (caso PG2460 e Q2460-B) e ainda adia a recuperação da referência; (3) os 5 SKUs marcados ⚠️ estão entre 15,0 e 15,9% — um pedido de 3+ empilha a promo de quantidade e cai a ~12%; risco já aceito no PXM, vale decidir se aceita nos outros; (4) público é só Prime.

**Registro:** com 58 SKUs, uma linha por SKU (padrão EC-007…016) fica pesado. Proposta: **uma linha por grupo** — EC-020 (grupo A+B, lista dos SKUs na observação) e EC-021 (grupo C) — ou uma única EC-020 para o lote inteiro. Decisão do LEO.


**Decisão do LEO (30/09): entram A + B + C, e P4080 e P3050 voltam.** Total no desconto do evento: **59 SKUs** (3 A + 6 B + 50 C) + PXM e P3060 já criados = **61**, mais P3070 e PXP em Melhor Oferta = **63 SKUs no Prime Day**.

**Linha SP (pergunta do LEO):** SP-PP fora por margem (11,8% a 10%). **SP-FF entra** (grupo C, 17,5%, sem histórico de política). **SP-T pode entrar** (grupo C, 15,7% — no piso; é anunciado normalmente na Manual Bituqueiras, sem suspensão) — decisão do LEO. **SP-01: recomendação FORA** — o anúncio está suspenso por política (caso 21652133321, contestação negada); a promoção passa por revisão da Amazon e expõe exatamente o SKU que não deve ser exposto (mesma lógica da exclusão da migração). Margem não é o problema (17,0%). Confiança MÉDIA.


**Upload conferido (arquivo "Produtos-FIXED" devolvido pela Amazon em 30/09, arquivado em `relatorios/amazon/monitoramento-28-09/upload_ofertas_produtos-FIXED_30-09.xlsx`):** as **10 linhas falharam**, nenhuma entrou. O arquivo devolvido **não é o modelo do desconto no preço**: a aba de instruções chama-se "Modelo de upload de promoção" (limite 3.000 produtos), as colunas são ASIN / SKU / Preço com desconto / Unidades comprometidas / Demanda esperada / Erros / Avisos — o modelo do desconto no preço (o que o LEO preencheu antes) tem SKU / Preço / Unidades / Preço máximo / Preço mínimo e limite de 500. O upload foi feito no fluxo de **Ofertas (Ofertas especiais / Promoções)**, não em **Desconto no preço**. Confiança ALTA pelo formato; confirmar com print da tela onde o arquivo foi enviado.

| SKU | Preço enviado | Unidades | Erro |
|---|---:|---:|---|
| P3060, L2460-CP, L3070-B, P3050, P4080, PXM, EGC, L2470-B, Q4070-A | 10% (460,27 · 302,11 · 489,46 · 420,90 · 963,15 · 183,18 · 607,15 · 358,51 · 947,85) | estoque inteiro (420 · 221 · 737 · 441 · 707 · 417 · 399 · 197 · 663) | "Ofertas especiais de produto em códigos SKU com envio pelo vendedor precisam oferecer frete grátis" |
| SP-01 | 427,77 | 752 | o mesmo **+** "O ASIN não está qualificado por estar em uma categoria restrita ou por não ser considerado seguro para promover" |

Leituras: (1) a exigência de **frete grátis** é regra das **Ofertas especiais** para envio pelo vendedor — o desconto no preço vinculado ao evento aceitou P3060 e PXM "Enviado por: Vendedor" sem essa exigência no mesmo dia (print da criação); (2) **SP-01 é inelegível pela própria Amazon** (categoria restrita) — fecha a dúvida da linha SP por decisão da plataforma, não só por política interna; SP-T e SP-FF não foram testados; (3) o arquivo tinha só 10 SKUs — faltam L4080-A e Q4070-B (grupo B) e os 50 do grupo C aprovados pelo LEO; (4) unidades = estoque inteiro, coerente com a resposta de que unidades comprometidas não bloqueiam a venda a preço cheio para não-Prime (a Amazon começa a desligar o desconto aos 90% das unidades comprometidas). Preços do LEO ficaram R$ 0,01 acima da proposta do Code (arredondamento da tela) — sem efeito.

**Caminho recomendado (decisão do LEO):** refazer o upload em **Anúncios → Promoções → Desconto no preço → PRIMEDAY-DESCONTO-10 (editar) → Etapa 2 → Fazer upload do arquivo**, com o **modelo do desconto no preço** (`dados/PROPOSTA_PrimeDay_modelo_upload_59_SKUs.xlsx`, 61 SKUs, preencher unidades). Atenção: o upload **substitui** a lista existente do desconto, por isso PXM e P3060 estão dentro do arquivo. Não trocar a política de frete para atender à regra das Ofertas: frete grátis muda preço líquido de todo o catálogo e não foi analisado. Se o mesmo erro de frete aparecer no fluxo de desconto no preço, parar e trazer o print — aí é regra nova de plataforma e entra nos documentos só com print (MEMORIA 28/09).


**Frete grátis (pergunta do LEO, 30/09): "só é possível com frete grátis, não trabalhamos com isso, o que faço?"** Simulação com a Mestra v4.3.4 (Simulador, cenário SP Interior; frete cobrado por classe: Pequenos 16,90 · Médios 39,90 · Grandes 120,00; frete real 30 / 49 / 120). Frete grátis = Winnet absorve o frete cobrado; o lucro por unidade cai exatamente esse valor.

| SKU | Classe | Margem a 10% (frete cobrado) | Margem a 10% **+ frete grátis** | Margem a preço cheio + frete grátis |
|---|---|---:|---:|---:|
| P3060 | Médios | 22,6% | **13,9%** | 20,2% |
| P3070 | Médios | 20,3% | 13,1% | 19,5% |
| L3070-B | Médios | 18,3% | 10,1% | 16,8% |
| EGC | Médios | 15,6% | 9,0% | 15,9% |
| P3050 | Médios | 17,8% | 8,3% | 15,2% |
| P4080 | Grandes | 19,3% | 6,8% | 13,9% |
| PXM | Pequenos | 15,0% | 5,8% | 13,1% |
| L4080-A | Grandes | 21,8% | 5,4% | 12,5% |
| L2470-B | Médios | 15,5% | 4,4% | 11,7% |
| L2460-CP | Médios | 16,6% | 3,4% | 10,7% |
| Q4070-B | Grandes | 15,2% | 3,3% | 10,6% |
| Q4070-A | Grandes | 15,6% | 2,9% | 10,3% |
| PXP | Pequenos | 13,4% | 2,2% | 9,8% |

**Conclusão:** com 10% de desconto **e** frete grátis, **nenhum SKU fica no piso de 15%** (melhor caso P3060, 13,9%); nos Grandes a margem vai a 3–7%. Mesmo sem desconto, frete grátis só deixa 5 SKUs no piso. No cenário RS Capital (frete cobrado 24,90 / 59,90 / 233,00) é pior. **Recomendação: NÃO ativar frete grátis para o Prime Day.** Confiança ALTA (aritmética direta sobre a Mestra). Frete grátis como estratégia é decisão à parte, para depois do evento: exigiria embutir o frete no preço de tabela, o que zera a referência de preço e invalida qualquer desconto por semanas — e a Mestra já mostra que o frete cobrado hoje está abaixo do real em Pequenos e Médios.

**Antes de aceitar a premissa "só com frete grátis":** o desconto no preço PRIMEDAY-DESCONTO-10 já aceitou **P3060 e PXM "Enviado por: Vendedor", status Ativo, sem frete grátis** (print de 30/09). A exigência apareceu no arquivo devolvido pelo fluxo de **Ofertas**. Teste decisivo: abrir o PRIMEDAY-DESCONTO-10, "Adicionar produtos" pela tela (não por upload), incluir P4080 a R$ 963,15. Se aceitar → o caminho é esse, sem frete grátis, e os 59 entram pela tela ou pelo modelo correto de upload. Se recusar com a mesma mensagem → print, e o Prime Day roda com o que já está dentro: P3070 e PXP (Melhor Oferta) + PXM e P3060 (desconto). Checar também no painel de Ofertas se P3070/PXP mostram algum aviso de frete — foram aceitos como Melhor Oferta sem frete grátis em 22/09.


**Confirmado por print (30/09, `relatorios/amazon/monitoramento-28-09/print_desconto_evento_P4080_invalido_frete-gratis_30-09.png`): a exigência de frete grátis vale no próprio desconto no preço vinculado ao evento.** Etapa 3 do PRIMEDAY-DESCONTO-10: "Produtos participantes 10 · Avisos e erros 10"; P4080 a R$ 963,15 (707 un) com a tag **"Inválido — O SKU não oferece frete grátis"**. A leitura anterior do Code (regra só das Ofertas) estava **errada**: o print de criação dos 3 SKUs não exibia a tag, mas a aba de erros agora marca os 10 participantes, o que inclui PXM e P3060. Regra registrada em MEMORIA.md com print (norma de 28/09). Consequência: o desconto **vinculado ao evento** é inviável sem frete grátis, e frete grátis + 10% deixa todo o catálogo abaixo do piso (tabela acima).

**Saída recomendada (decisão do LEO): desconto no preço COMUM, sem o campo Evento** — o mesmo mecanismo de 21–27/09, que rodou em 10 SKUs com envio pelo vendedor e frete cobrado, sem exigir frete grátis (PXM vendeu 5 un a −5%; L1618-T 2 un). Parâmetros: início 05/10 00:00 · término 11/10 23:59 · público "Todos os clientes" · preço fixo da coluna da proposta · mesma lista A+B+C (59 SKUs) + PXM e P3060 (se o evento os invalidou também) · sem P3070 e PXP (Melhor Oferta não empilha). O que se perde: "Preço exclusivo do Prime" e qualquer vitrine do evento. O que fica: preço riscado "10% off" na busca e na página na semana de maior tráfego, para todos os clientes, com atribuição já conhecida (preço com desconto). Confiança MÉDIA — o mecanismo comum está provado; a exibição durante a semana do evento não. Antes de criar: (1) na Etapa 3 do PRIMEDAY-DESCONTO-10 abrir a aba "Avisos e erros" e confirmar se PXM e P3060 também estão "Inválido"; se sim, **descartar** o desconto do evento inteiro para não deixar duas promoções no mesmo SKU; (2) conferir no painel de Ofertas se P3070 e PXP (Melhor Oferta, aceitas em 22/09) estão sem aviso de frete — se a mesma regra as invalidar, o Prime Day fica sem oferta do evento. Não ativar frete grátis para o evento (aritmética acima). SP-01 continua fora (inelegível pela Amazon).


**Desconto comum, 2ª rodada (30/09, arquivo do LEO `relatorios/amazon/monitoramento-28-09/upload_desconto-comum_13-skus_5pct_30-09.xlsx`):** dos 61 SKUs, **só 13 têm preço de referência** — os outros 48 a tela marcou "Sem preço de referência" (informação do LEO; print/lista pendente). Ficam: L2460-CP, EGC, Q4070-A, L2470-B, L3070-B, P4080, P3050, P3060, PXM, L2450--CZ, L2460-AML, Q3060-A, L3085-B. O modelo veio pré-preenchido com o **preço máximo com desconto = 5% abaixo do preço de tabela** (mínimo do desconto comum); a coluna confirma que a **referência da Amazon é o preço de tabela da Mestra** nos 13 (ex.: EGC 640,88 = 674,62 × 0,95). L2460-CP estava com preço 0 (erro "preço mínimo"). Preços a 10% (piso de 2 casas, garante "10% off") entregues em `dados/PROPOSTA_PrimeDay_desconto_comum_13_SKUs_10pct.xlsx` e na conversa. Leitura: a promoção larga encolheu por regra de plataforma — sem histórico de venda recente a preço cheio, o SKU não tem referência e o desconto ficaria invisível; os 48 fora são, em geral, os sem tráfego (grupo C). Prime Day fica com **13 no desconto comum + P3070/PXP em Melhor Oferta = 15 SKUs**. Registro: uma linha por lote (EC-020) passa a ser o formato natural; PG2460/EC-018 e o evento descartado (EC-017/019) precisam de veredito "descartado 30/09 — frete grátis exigido".


**Arquivo final conferido (30/09, `relatorios/amazon/monitoramento-28-09/upload_desconto-comum_13-skus_10pct_final_30-09.xlsx`):** 13 SKUs, **13 a exatamente 10,00% sobre o preço de tabela da Mestra**, sem erros nem avisos, unidades = estoque (L2460-CP 221 · EGC 399 · Q4070-A 663 · L2470-B 197 · L3070-B 737 · P4080 707 · P3050 441 · P3060 420 · PXM 417 · L2450--CZ 888 · L2460-AML 869 · Q3060-A 217 · L3085-B 899). Pendente: print da Etapa 3 / confirmação da ativação com datas 05/10 00:00 – 11/10 23:59 e público "Todos os clientes"; lista dos 48 sem referência; situação de P3070/PXP no painel de Ofertas.


**Estado final do Prime Day (30/09, 5 prints em `relatorios/amazon/monitoramento-28-09/print_desconto-comum_*`):** desconto comum **PRECOPRIMEALTERNATIVO** criado — painel "Em breve", 5–11 de out., Brasil, público **Todos os clientes**, **12 ASINs**. L2450--CZ removido pelo LEO ("ASIN restrito"). Etapa 3 conferida nos prints: os 12 a 10% com preço riscado e "10% off", "Ativo", "Enviado por: Vendedor", unidades = estoque. PRIMEDAY-DESCONTO-10 (evento) **descartado**. P3070 e PXP (Melhor Oferta) sem aviso de frete no painel de Ofertas. **Prime Day fecha com 14 SKUs: 12 no desconto comum + 2 em Melhor Oferta.** Registro: proposta da linha **EC-020** (lote) em `dados/PROPOSTA_linha_Registro_EC-020.csv` (colar em A86; Q/R já têm fórmula) e vereditos de EC-017/018/019 em `dados/PROPOSTA_vereditos_EC-017_a_019_descartadas.csv`. Recomendação do Code: **não excluir** as três linhas — foram criadas de fato no console e descartadas; o Registro é histórico operacional (regra 6 da aba Listas) e a linha explica a regra do frete grátis. O caso de 28/09 (EC-017/018 retiradas) foi diferente: nunca chegaram a existir.


**Registro atualizado pelo LEO (30/09, 76 entradas):** EC-020 na linha 86 (EXECUTADA - EM MATURAÇÃO, reavaliar 13/10, Q/R com fórmula); EC-017/018/019 → EXECUTADA - AVALIADA, veredito DESCARTADA 30/09. Nada mais alterado (diff contra a versão anterior: só linhas 83–86); validações intactas (4). Ressalva: as células J86, K86 e V86 entraram truncadas em 300 caracteres (perderam unidades, fim do motivo e fim das observações) — versão curta das três em `dados/PROPOSTA_EC-020_celulas_J_K_V_curtas.txt`. Totais da linha 6: 76 · 76 · 70 · 0 · 19 · 51.

**Os 48 "Sem preço de referência" = os 48 que nunca venderam.** Cruzamento com `Registro_Vendas`: os 12 que entraram têm 1–9 vendas registradas (última entre 09/07 e 30/09); os 48 que caíram têm zero. Correspondência exata → a referência de preço nasce da 1ª venda a preço de tabela. Lista com ASIN, classe, grupo e sessões em `dados/SKUs_sem_preco_de_referencia_30-09.csv` (+ L2450--CZ, que tinha referência e saiu por ASIN restrito). Regra registrada em MEMORIA.md. Consequência para a Black Friday: a lista elegível é o conjunto com venda registrada e margem no piso, hoje ~14 SKUs, não o catálogo.


## Adendo 01/10 — Mestra: 3 vendas novas (linhas 76–78)

Diff célula a célula contra a versão de 30/09: só as linhas 76–78 e os totais (108); validações 7 (intactas); frete cobrado bate com `Ref_Frete` nas três regiões.

| Data | SKU | Qtd | Região | Receita | Desconto | Lucro | Margem | Leitura |
|---|---|---:|---|---:|---:|---:|---:|---|
| 30/09 | **P3070** | 1 | SC Capital | 616,18 | — | 160,37 | 26,0% | preço cheio 5 dias antes da Melhor Oferta a 15% (05/10); 4ª venda registrada |
| 01/10 | **P3060** | 2 | SC Interior | 1.022,84 | — | 230,02 | 22,5% | **2 un a preço cheio** no SKU que não converteu a −10% em 21–27/09; entra no desconto comum em 05/10; frete real 128,40 contra 69,90 cobrado |
| 01/10 | **PXM** | 3 | ES Capital | 580,09 | 30,53 (promo qtd 5%) | 108,28 | 18,7% | 3º pedido de 3 un; promo de quantidade sozinha (sem desconto no preço); 20 un registradas no ano |

**Semana de preço limpo (28/09 → 01/10, 4 dias): 9 un · R$ 3.566,93 · lucro R$ 906,23 · margem 25,4%** — L2030-B, L1623-T, P4080, P3070, P3060 ×2, PXM ×3. Mesmo padrão do P4080: P3060 não respondeu ao desconto de 10% e vendeu a preço cheio na semana seguinte. Origem (Ads × orgânico) só no export de 05/10 — **não atribuir ao desconto nem à sua ausência** (coincidência temporal, CLAUDE.md §7). Totais da Mestra: receita R$ 31.278,35 · lucro R$ 7.893,72 · margem 25,24%.

Para a O7: P3060 e P3070 entram no bloco do evento com venda recente a preço cheio na série — o corte pré-evento/evento fica mais importante, não menos.

**Registro corrigido pelo LEO (01/10):** J86, K86 e V86 recolados com a versão curta (275/299/296 caracteres, sem corte). Diff contra a versão anterior: só essas três células e a coluna R (recálculo de TODAY()). Validações 4. Registro fechado em 76 entradas.
