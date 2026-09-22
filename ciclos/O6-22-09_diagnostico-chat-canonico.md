# O6 — 22/09/2026 · Diagnóstico do chat canônico (para auditoria do Claude Code)

**Modo:** B — otimização quinzenal (O6). **Era O5→O6: 10–21/09** (12 corridos, 9 úteis, sem feriado; convenção: dia seguinte à execução de 09/09 até a véspera da O6). Réguas principais em **30d = 22/08–20/09**. Vitalício = exports de alvos de 22/09.
**Papel:** analisar e recomendar. Nada aqui foi executado; recomendar não é autorizar. Toda alteração da lista G depende de aprovação item a item do LEO.
**Skill:** `amazon-ads-winnet` v1.6.3 · Playbook v1 · Parâmetros Vigentes (snapshot pós-O5) · Mestra v4.3.4 (cópia do Project).

Convenção de proveniência neste documento: `[ERA]` = `10-21_09.csv` (export do Gerenciador 10–21/09) · `[C30]` = Campanhas 30d · `[S30]` = Segmentação 30d · `[T30]` = Termos de Pesquisa 30d · `[PA30]` = Produtos Anunciados 30d · `[POS30]` = Posicionamento 30d · `[VIT]` = exports de alvos `Sponsored_Products_Target_Sep_22_2026*.csv` · `[BR]` = `BusinessReport-22-09-26.csv` · `[MESTRA]` = Planilha_Mestra v4.3.4 · `[REG]` = Registro de Alterações · `[CTRL]` = Controle Semanal · `[PROMPT]` = estado declarado pelo LEO no prompt de abertura da O6.

---

## A. Resumo executivo

**O que aconteceu.** A Era 10–21/09 foi a primeira Era limpa pós-O5 (só 21/09 tem desconto no preço). Ads gastou **R$ 179,20** em 206 cliques e atribuiu **R$ 1.666,46 em 4 compras** — **ACOS 10,75%** `[ERA]`, entre o Objetivo (9%) e o Máximo (18%). O Business Report da janela 10–20/09 traz **R$ 2.573,86 em 8 pedidos / 13 unidades** `[BR]`; Ads responde por **64,7%** da receita e o não atribuído por 35,3% (R$ 907,40). TACOS **6,96%**.

**O que melhorou.** (1) A Geral saiu de ACOS 30d 22,1% para **14,2% na Era** (2 compras, R$ 531,25) e consome 7% do próprio orçamento — orçamento não é restrição. (2) A PI P3070 converteu (R$ 616,18) e fechou a Era em ACOS 11,5%. (3) As 4 pausas da O5 estão firmes (68 pausadas, custo zero) e não há zumbi: 12 ativas = as 12 do mapa vivo `[ERA]`.

**O que piorou / ficou claro.** (1) **A PI P3070 dobrou a entrega** (≈34 mil impressões derivadas de CTR 0,15% na Era; 42.073 em 30d = 27% das impressões da conta) e levou **39,7% do gasto da Era** — 52 cliques, dos quais **≥50 em alvos de terceiros sem venda**; a única venda veio do **próprio ASIN do P3070** (`asin-expanded="B0H63FKGPJ"`, termo "lixeira inox 60l"), não de nenhum dos 4 alvos em triagem. (2) Na Geral, a segmentação **`loose-match`** (lance 0,54, não mexida na O5) consome **56,6% do gasto de 30d com ACOS 60,9%** (R$ 161,97 / R$ 265,80, 2 compras em 237 cliques) `[S30]` — a `substitutes` que a O5 reduziu caiu para 33,6% do gasto e ACOS 36,2%. (3) **Dois gatilhos de vigia dispararam**: SP-PP (0 cliques na Era) e EGC (0 vendas, CTR 0,17%). (4) **Q2460-B: 69 cliques / R$ 45,78 / 0 vendas em 30d via Geral** `[PA30]`, 27 sessões / 0 unidades `[BR]` — está sob desconto no preço até 27/09, leitura em 28/09. (5) A venda que sustentava a O5-013 (L2030-T, R$ 143,13, 01/09) **foi devolvida** (aprovada 17/09 `[PROMPT]`) — a promoção para manual perde a evidência.

**Maiores oportunidades.** Prime Day (lista abaixo, com margem por SKU no Simulador SP Interior); rebalancear a `loose-match` da Geral; pausar o alvo `B09YDLC69D` (16 cliques vitalícios, 0 venda); fila de página para L1623-T (18 cliques / 0) e, após 28/09, Q2460-B.

**Maiores riscos.** Julgar a PI P3070 por uma venda (não promover a ESCALAR); mexer nos 10 SKUs em desconto antes da leitura de 28/09; cruzar a régua de segmentação da Geral sem o export por segmentação da Era (30d mistura 19 dias pré-O5 e 11 pós).

**Ações sugeridas:** 13 linhas na lista G (3 pausas/alvo, 1 lance condicionado, 3 vigias com gatilho, 1 cancelamento, 1 lista de Prime Day, 4 registros/manutenções). Em H: 7 coisas que **não** se fazem agora.

---

## B. Qualidade dos dados

| Fonte | Janela | Observação |
|---|---|---|
| `10-21_09.csv` — export do Gerenciador `[ERA]` | 10–21/09 (nome do arquivo; conforme pedido (e)) | 80 linhas: 12 ATIVADO / 68 PAUSADO. **Coluna Impressões = 0 em todas as linhas** (não populada) e **Vendas em branco** — vendas obtidas por ROAS × Custo, conferidas ao centavo (PXM 489,650943 × 1,06 = 519,03; P3070 8,666385 × 71,10 = 616,18; Geral 7,035492 × 75,51 = 531,25 = 398,35 + 132,90). Impressões da Era só por derivação cliques ÷ CTR (CTR com 4 casas → faixa, não ponto); **campanha com 0 clique não tem impressão derivável** (regra da O5-016). 21/09 pode maturar. |
| Campanhas / Posicionamento / Produtos Anunciados / Segmentação / Termos — recorrentes 30d | **22/08–20/09** (30 dias; o "Intervalo de datas" por linha é o primeiro/último dia com atividade da linha, **não** granularidade diária) | Os 5 fecham no mesmo total: **R$ 485,35 custo · R$ 3.052,61 vendas · 603 cliques · 12 compras** — sem divergência entre visões. Não somar entre si. 19 dos 30 dias são **pré-O5**; não isolam a Era. |
| Exports de alvos (3 arquivos) `[VIT]` | sem data no arquivo; **consistente com vitalício**: em todos os alvos, cliques/impressões ≥ 30d; PI L2030-B saiu de 16 cliques (O5) para 21 (= +5 da Era); PI P3070 traz venda antiga de R$ 616,18 em `B0G9B9RCMF` fora dos 30d | **LEO confirmou (13:00): janela "Vitalício".** Régua formal de PI aplicável. Identificação por lance/ASIN: arquivo base = PI P3070 (97 alvos), `_1` = PI L2030-B (91), `_2` = PI PXM (58). |
| Business Report `[BR]` | **janela não consta no arquivo**; assumida **10–20/09** (pedido (e); coerente: não contém PXP 08/09 nem PG2460 07/09, contém L2025-T de 20/09) | 56 ASINs · 487 sessões · 591 pageviews · 8 itens de pedido · 13 unidades · R$ 2.573,86. Buy Box ≥96,9% em todos. |
| Mestra v4.3.4 `[MESTRA]` (cópia do Project) | `Registro_Vendas` **até 15/09** | ⚠️ **Divergência com o estado declarado:** o prompt diz Registro até 20/09, com +2 vendas L2025-T (19 e 20/09) e L2030-T de 01/09 marcado DEVOLUÇÃO (17/09). Na cópia recebida: última linha 15/09; L2030-T 01/09 está `VÁLIDO`; única DEVOLUÇÃO é L1618-T 02/09. **Usei o estado do prompt** para as duas vendas e a devolução, sem ver as linhas. Bijeção BR × Mestra: R$ 2.573,86 − R$ 2.042,26 (6 linhas visíveis 12–15/09) = **R$ 531,60 = 4 un de L2025-T**. **LEO confirmou (13:00): 19/09 = 1 un, 20/09 = 3 un → 4 un. Bijeção fecha ao centavo: 8 pedidos, 13 unidades, R$ 2.573,86.** |
| Registro de Alterações `[REG]` | 52 entradas (52 aprovadas · 51 executadas · 1 bloqueada · 26 em maturação · 25 avaliadas) | Batem com o prompt. |
| Controle Semanal `[CTRL]` | linha 13 = 14–21/09 (43.599 impr · 146 cli · R$ 130,55 · R$ 749,08 · 2 vendas) | Só registro. Sobrepõe 14/09 com a linha 12. |
| `Sponsored_Products_Target_Sep_22_2026_3.csv` — segmentação da Geral filtrada na Era `[SEG-ERA]` (recebido 12:54) | 10–21/09 (confere: 122 cli · R$ 75,51 · 2 compras · R$ 531,25 = idêntico ao `[ERA]`; 17.913 impressões, dentro da faixa derivada) | close 0,54: 4.878 impr · 30 cli · R$ 20,71 (27,4%) · 1 compra R$ 398,35 · ACOS 5,2% · loose 0,54: 9.862 impr · 70 cli · **R$ 45,57 (60,3%)** · 1 compra R$ 132,90 · **ACOS 34,3%** · substitutes 0,45: 3.171 impr · 22 cli · R$ 9,23 (12,2%) · 0 · complements: 2 impr. **Destrava O5-001/002 e o item G5.** |
| **Ausentes** | — | (a) **Placement Report** por placement; (b) impressões da Era no export de campanhas; (c) janela do BR declarada; (d) Registro_Vendas 16–20/09; (e) vitalício da auto PXP-o311/08 (sem export de alvos para automáticas) — uso o número da O5-017 (28 cli / 4 compras) como histórico. |

**Escopo das contagens:** 12 ativas `[ERA]` = Geral · 6B · Extintor · Cinzeiros · Bituqueiras · L3070-B · PI P3070 · PI PXM · PI L2030-B · auto PXP · auto SP-PP · auto EGC. Vendas Ads da Era: 4 compras = Geral 2 (L2470-B R$ 398,35 comprado via anúncio do L2460-B — produto anunciado ≠ comprado; L2025-T R$ 132,90) + PI PXM 1 (R$ 519,03, 3 un) + PI P3070 1 (R$ 616,18). Não atribuídas: L1618-B 2 un (R$ 259,80) + L1618-T 1 un (R$ 116,00) + L2025-T 4 un (R$ 531,60) = R$ 907,40.

---

## C. Ads × vendas totais (10–20/09 para vendas; custo Ads 10–21/09)

| Métrica | Resultado | Fonte |
|---|---:|---|
| Vendas totais | **R$ 2.573,86** (8 pedidos, 13 un, 487 sessões) | `[BR]` |
| Vendas atribuídas a Ads | **R$ 1.666,46** (4 compras, 6 un) | `[ERA]` ROAS × custo; 0 compras em 21/09 |
| Não atribuídas a Ads / estimativa de orgânico | **R$ 907,40** (4 pedidos, 7 un) | diferença |
| Participação Ads | **64,7%** | |
| Participação não atribuída | **35,3%** | |
| Gasto Ads | **R$ 179,20** (inclui 21/09, não separável) | `[ERA]` |
| ACOS Ads | **10,75%** | |
| TACOS | **6,96%** (levemente superestimado pelo custo de 21/09) | |
| Conversão da conta | 8 pedidos / 487 sessões = **1,64%** | `[BR]` |

Leitura: na Era da O5, Ads era 38%; no 9.9, 86%; agora 64,7% com **4 pedidos** — a participação oscila com o ticket (P3070 e PXM são 68% da receita atribuída). Não é tendência. Setembro até 21/09: **R$ 287,66 = 28,8% do teto de R$ 1.000** `[PROMPT]`; ritmo da Era R$ 14,93/dia (a PI P3070 puxa) → projeção do mês ≈ R$ 420 (~42%), folga ampla.

---

## D. Diagnóstico por campanha

Colunas: Era `[ERA]` = cliques · custo · compras · vendas · ACOS; 30d `[C30]`. Impressões da Era entre parênteses = derivadas de cliques ÷ CTR (faixa aproximada).

| Campanha | Papel | Era 10–21/09 | 30d 22/08–20/09 | Diagnóstico | Decisão | Confiança |
|---|---|---|---|---|---|---|
| Geral DBA-o59/09 (dinâmica ↑↓, R$ 90/dia) | Vendedora | 122 cli · R$ 75,51 · 2 compras · R$ 531,25 · **ACOS 14,2%** · (~17,5–18,4 mil impr) · consumo 7% do orçamento | 64.880 impr · 432 cli · R$ 286,13 · 7 compras · R$ 1.296,96 · ACOS 22,1% | Entre Objetivo e Máximo na Era. 30d por segmentação `[S30]`: **loose 0,54 → R$ 161,97 (56,6%), 2 compras, ACOS 60,9%** · substitutes 0,45 → R$ 96,11 (33,6%), 2 compras, ACOS 36,2% · close 0,54 → R$ 28,05 (9,8%), 3 compras, ACOS 3,7% (inclui a venda devolvida do L2030-T) · complements 0. **Era por segmentação `[SEG-ERA]`: loose 70 cli / R$ 45,57 (60,3% do gasto) / 1 compra / ACOS 34,3% · close 30 cli / R$ 20,71 / 1 compra R$ 398,35 / ACOS 5,2% · substitutes 22 cli / R$ 9,23 (12,2%) / 0 · complements 0.** O5-001/002 funcionaram: substitutes caiu de 39% para 12% do gasto e close subiu de volume (30 cli em 12 dias vs 24 em 30 dias na O5) com ACOS 5,2%. O funil ainda está invertido, agora pela loose — acima do Máximo na Era e da Emergência em 30d. | MANTER orçamento · **REDUZIR loose-match 0,54 → 0,45 (−17%)** — condição da Era atendida | Orçamento ALTA · lance ALTA |
| PI P3070-o228/07 (dinâmica ↑↓, R$ 20/dia) | Congelada → VIGIA | 52 cli · R$ 71,10 · 1 compra · R$ 616,18 · **ACOS 11,5%** · CTR 0,15% (~33,5–35,9 mil impr) · CPC 1,37 · 39,7% do gasto da Era | 42.073 impr · 82 cli · R$ 103,23 · 1 compra · ACOS 16,8% · CTR 0,19% | Vitalício `[VIT]`: 97 alvos, 154 cli, R$ 183,50, 2 compras, R$ 1.232,36 (ACOS 14,9%); **149 cliques em alvos sem compra**. **Alvo que converteu: `asin-expanded="B0H63FKGPJ"` (o próprio ASIN do P3070)**, termo "lixeira inox 60l", 2 cliques `[T30]` — nenhum dos 4 em triagem. Régua formal: **`B09YDLC69D` 16 cli vit / 0 compra** → atinge 15+. Triagem (5+ vit / 0): `B0CYWMQ93Y` 11 (asin exato) · `B0BHMZBZW9` 7 (+13 cliques como termo-ASIN na Geral `[T30]` = 20 na conta) · `B0BSNVT11K` 5 · `B0F4T8FCDD` 5 · `B0778TD2LY` 5. Entrega dobrou sem conversão em terceiros; ACOS ok só pelo ticket. | **PAUSAR ALVO `B09YDLC69D`** · MANTER lances · **VIGIA re-armada** (gatilho O7: 0 venda E ≥15 cli na Era → −20% nos asin-expanded) · não ESCALAR | Alvo ALTA (se export = vitalício) · vigia MÉDIA |
| Auto SP-PP-o59/09 (R$ 10/dia; só close e complements ativas) | VIGIA | **0 cliques · R$ 0** · TOS IS 0 | 29.085 impr · 14 cli · R$ 16,30 · 0 vendas (todos os 14 cliques em termos "parede", antes de 09/09 `[T30]`) · close 96 impr / 0 cli · complements 212 impr / 0 cli `[S30]` | Gatilho O5-010 ("0 cliques relevantes → pausar campanha") **disparou**. Vitalício 26 cli / 0 venda (O5-010). Cobertura mantida pela Geral (SP-PP: 2.370 impr, 4 cli, R$ 2,76 em 30d `[PA30]`) e pela Manual Bituqueiras. | **PAUSAR CAMPANHA** | ALTA |
| Auto EGC (fixo, R$ 0,84, R$ 5/dia) | VIGIA | 10 cli · R$ 7,58 · 0 vendas · **CTR 0,17%** (~5,7–6,1 mil impr) | 8.534 impr · 11 cli · CTR 0,129% · R$ 8,36 · 0 vendas · 4.695 impr no termo "guarda chuva" com 2 cli `[T30]` | Gatilho O5-007 ("0 vendas E CTR < 0,3% → pausar") **disparou nas duas condições**. Teste de conversão (Melhor Oferta −10% no 9.9) também zerou. BR: 24 sessões / 0 un. Sem venda conhecida nos relatórios; EGC segue na Geral (72 impr / 1 cli). | **PAUSAR CAMPANHA** | ALTA |
| Auto PXP-o311/08 (R$ 40/dia) | Aposta | 7 cli · R$ 5,51 · 0 vendas · CTR 1,05% | 2.113 impr · 15 cli · R$ 12,71 · 1 compra R$ 151,10 (PXP 08/09, pré-Era, Melhor Oferta) · ACOS 8,4% | Era fria, vitalício saudável (O5-017: 28 cli / 4 compras). A dúvida da O5-017 fecha: **+R$ 151,10 e +R$ 302,20 são vendas reais de 08/09** (`Registro_Vendas` 08/09 PXP 1 un Paraná e 2 un SC `[MESTRA]`), não maturação. | MANTER | ALTA |
| PI PXM-o311/08 (R$ 40/dia, 58 alvos a 1,10) | Aposta / CORRIGIR CTR | 2 cli · R$ 1,06 · 1 compra · R$ 519,03 (PXM 3 un, 13/09, Melhor Oferta −15%) · TOS IS 17,13% | 798 impr · 2 cli · CTR 0,25% | Vitalício `[VIT]`: 9 cli, R$ 6,56, 2 compras, R$ 722,57. Converteu pelo alvo `B0H4S7ZKXS` (= ASIN do PXP, alvo de família) no termo "suporte para extintor de incêndio chao". CTR segue baixo (fila de página/criativo), custo irrisório. | MANTER (CORRIGIR CTR permanece como fila de página) | ALTA |
| PI L2030-B-o311/08 (R$ 40/dia, 91 alvos a 0,78) | Aposta | 5 cli · R$ 3,29 · 0 vendas · CTR 4,0% | 474 impr · 6 cli · R$ 4,06 · 0 vendas | Vitalício `[VIT]`: 21 cli, R$ 15,18, 3 compras, R$ 497,34 (tudo em `B0DZV82N4P`). Nenhum alvo ≥5 cli. Contrapeso vitalício protege. | MANTER | ALTA |
| 6B Lixeiras banheiro (dinâmica ↑↓ — piloto, R$ 5/dia, topo +25%) | Aposta / piloto | 7 cli · R$ 13,59 · 0 vendas · **CPC 1,94** · TOS IS 60,3% · consumo 23% do orçamento | 2.036 impr · 21 cli · R$ 36,49 · 1 compra R$ 265,80 (31/08, pré-Era) · ACOS 13,7% | Piloto: Era O5 11 cli / 1 venda / CPC 1,60 → Era O6 7 cli / 0 venda / CPC 1,94. **Exata "lixeira inox para pia de cozinha" (1,50): 778 impr, 13 cli, R$ 22,97, 0 venda em 30d** `[S30]` = 63% do gasto da campanha; grupo anuncia L2025-T/L2025-B/L1623-B/L2430-B/L2030-B (7–15 L) para um termo de intenção "pia" — hipótese de desencontro de tamanho (o L1618-T 3 L "para pia" não está no grupo). Perna L2025-B do termo "lixeira banheiro 7 litros": 3 cli / R$ 5,34 / 0 (sem clique novo desde a O5). | MANTER (piloto +1 Era) · VIGIA da exata "pia de cozinha": ≥15 cli sem venda → reduzir −20% ou pausar keyword na O7 · O5-014 fechada sem ação | MÉDIA |
| Manual L3070-B (dinâmica ↑↓ desde 09/09 — O5-009) | Aposta / piloto | **0 cli · R$ 0** · TOS IS 38,1% (teve impressões; quantidade não derivável) | 268 impr · 2 cli · R$ 1,98 · 0 vendas | O5-009: dinâmico **não destravou clique** na Era (0 vs 0 na Era anterior com fixo). Sem amostra. | MANTER (+1 Era) · veredito do piloto INCONCLUSIVO | MÉDIA |
| Extintor (fixo, exata 2,60, topo +75%) | Controle | 0 cli · R$ 0 · TOS IS >95% | 201 impr · 6 cli · R$ 5,35 · 1 compra R$ 203,54 (26/08) · ACOS 2,6% | Rank/share brutos; entrega limitada pelo volume dos termos exatos (métrica bruta, sem inferir teto). | MANTER | ALTA |
| Cinzeiros (fixo) | Controle | 1 cli · R$ 1,56 · TOS IS 18,18% | 171 impr · 1 cli | Sem amostra; custo desprezível. | MANTER | ALTA |
| Bituqueiras Space (fixo) | Controle | 0 cli · R$ 0 · TOS IS 85,71% | 34 impr · 2 cli · R$ 0,91 | Sem amostra. Contradição SP-T/SP-01 anunciados aqui segue em aberto (decisão do LEO, custo desprezível). | MANTER | ALTA |
| 68 pausadas | — | custo R$ 0 em todas `[ERA]` | — | Zumbis: nenhum. As 4 pausas da O5 conferidas (PAUSADO). | — | ALTA |

**Piloto de estratégia de lance (O4-014 / O5-009) — veredito da O6: INCONCLUSIVO.** Dinâmicas: 6B 7 cli / 0 venda, L3070-B 0 cli. Controles fixos: Extintor 0, Cinzeiros 1, Bituqueiras 0, EGC 10 (automática, caso à parte). Nenhuma evidência de que o dinâmico compra leilão que o fixo perde; a única venda do piloto (31/08) segue sendo n = 1. Não migrar os controles.

---

## E. Diagnóstico por SKU

Colunas: BR 10–20/09 (sessões · un · R$) `[BR]` · Ads Era (atribuído, por campanha + Registro) · Ads 30d (cliques · gasto · vendas atribuídas ao anúncio do SKU) `[PA30]` — **janelas diferentes, lado a lado, não somadas** · Margem SP Interior tabela `[MESTRA]` Simulador.

| SKU (ASIN) | BR 10–20/09 | Ads Era atribuído | Não atribuído (BR − Ads) | Ads 30d | Margem SP | Diagnóstico | Decisão |
|---|---|---|---|---|---:|---|---|
| L2025-T (B0H6C5CTSC) | 74 sess · 5 un · R$ 664,50 | R$ 132,90 (1 un, Geral) | R$ 531,60 (4 un) | 78 cli · R$ 69,27 · 5 compras R$ 797,40 | 19,5% | Motor de tráfego e de venda; converte por Geral (loose/substitutes/close) e orgânico. Sob desconto 5% até 27/09. | MANTER · ler 28/09 |
| P3070 (B0H63FKGPJ) | 66 sess · 1 un · R$ 616,18 | R$ 616,18 (PI, alvo próprio) | R$ 0 | 99 cli · R$ 114,05 · 1 compra | 26,0% (break-even ≈ 25,8% realizado) | Maior gasto Ads da conta; converte 1 em ~66 sessões. Ver D. | PAUSAR ALVO `B09YDLC69D` · VIGIA |
| L1618-T (B0H3QQLFFY) | 55 sess · 1 un · R$ 116,00 | 0 | R$ 116,00 | 46 cli · R$ 27,85 · 0 atribuída | 18,4% | Vende orgânico (05, 14/09; 02/09 devolvida) e nunca atribui a Ads em 46 cliques. Sob desconto 5%. | NÃO DECIDIR AINDA · ler 28/09 |
| PXP (B0H4S7ZKXS) | 29 sess · 0 | 0 | 0 | 18 cli · R$ 15,85 · 1 compra R$ 151,10 | 19,8% | Converteu 3 un no 9.9 (oferta). Sob desconto 5%. | MANTER · Prime Day |
| Q2460-B (B0H7YNMBBK) | 27 sess · 0 | 0 | 0 | **69 cli · R$ 45,78 · 0** (só Geral) | 19,4% | Maior desperdício aparente: 16% do gasto da Geral em 30d sem venda; zero conversão crônica. Desconto 5% **sem preço riscado** até 27/09 enfraquece o teste. | INVESTIGAR CONVERSÃO DO SKU · **VIGIA gatilho 28/09**: 0 venda → pausar o anúncio do Q2460-B na Geral |
| P4080 (B0H63W8G49) | 26 sess · 0 | 0 | 0 | 9 cli · R$ 7,08 · 0 | 25,1% | Tráfego sem conversão; ticket R$ 1.070. Sob desconto 10%. | ler 28/09 · Prime Day |
| EGC (B0H4WLDNYD) | 24 sess · 0 | 0 | 0 | 12 cli · R$ 8,64 · 0 | 21,8% | Tráfego relevante, zero conversão com Ads e com oferta. | PAUSAR auto EGC (D) · fila de página |
| P3060 (B0H4NLBG1Y) | 18 sess · 0 | 0 | 0 | 23 cli · R$ 16,22 · 0 | 28,0% | Acima do checkpoint sem venda; sob desconto 10%. | ler 28/09 · Prime Day |
| PG2460 (B0H5MDZQDG) | 15 sess · 0 | 0 | 0 | 11 cli · R$ 6,13 · 1 compra R$ 223,88 (07/09) | 22,6% | Converteu com oferta. Sob desconto 10%. | MANTER · Prime Day |
| P3050 (B0H6365DBF) | 13 sess · 0 | 0 | 0 | 14 cli · R$ 8,09 · 0 | 23,7% | Sob desconto 10%. | ler 28/09 |
| PXM (B0H4S3FHG6) | 10 sess · 3 un · R$ 519,03 | R$ 519,03 (PI PXM) | R$ 0 | 8 cli · R$ 6,60 · 2 compras R$ 722,57 | 21,4% | Melhor eficiência de Ads da conta (ACOS 0,9% em 30d). | MANTER · Prime Day |
| L1623-T (B0H6C894TV) | 7 sess · 0 | 0 | 0 | **18 cli · R$ 12,08 · 0** (Geral, CTR 2,7%) | — (não consultada) | Passou o checkpoint de ~15 sem venda; CTR alto, conversão nula. | INVESTIGAR CONVERSÃO DO SKU — fila Nível 1 |
| L2470-B (B0H4W81CPN) | 6 sess · 1 un · R$ 398,35 | R$ 398,35 (Geral, anúncio do L2460-B) | R$ 0 | 9 cli · R$ 5,52 · 0 atribuída ao próprio anúncio | 21,7% | Halo: anunciado L2460-B, comprado L2470-B (`[PA30]` mostra a venda no L2460-B; `Registro` 12/09 L2470-B). Não aplicar margem do anunciado à venda. | MANTER |
| L1618-B (B0H6KPN1XS) | 6 sess · 2 un · R$ 259,80 | 0 | R$ 259,80 | 9 cli · R$ 5,64 · 0 | 20,0% | Vendeu orgânico 13/09. | MANTER |
| SP-PP (B0H5X97DR7) | — (não está no BR) | 0 | — | 20 cli · R$ 19,97 · 0 (3 campanhas) | 18,4% | Tráfego só de termos irrelevantes. | PAUSAR auto (D); segue na Geral |

SKUs com 15+ cliques sem venda atribuída em 30d `[PA30]`: Q2460-B 69 · L1618-T 46 · P3060 23 · L1623-T 18 · P3070-via-Geral 17. Dos cinco, três estão em desconto no preço (leitura 28/09); L1623-T entra na fila; P3070 é caso da PI.

---

## F. Termos e alvos

**Vencedores (30d, `[T30]`)** — todos com 1 compra, amostra pequena:
- Geral: "porta guarda chuva aço" (close, 2 cli → PG2460 R$ 223,88, 07/09) · "cesto de lixo cozinha inox" (loose, 1 cli → L2025-T) · "lixeira banheiro inox c tampa" (loose, 1 cli → L2025-T, 16–19/09) · "lixeira inox redonda basculante" (close, 1 cli → L2470-B R$ 398,35 via anúncio do L2460-B) · ASINs `B076VYNP9W` (12 cli, 1 compra) e `B076PN14B6` (8 cli, 1 compra), ambos → L2025-T.
- PI P3070: "lixeira inox 60l" (2 cli → R$ 616,18) no alvo próprio.
- PI PXM: "suporte para extintor de incêndio chao" (1 cli → R$ 519,03) no alvo `B0H4S7ZKXS`.
- Extintor: "suporte extintor de incêndio" (1 cli → PXM R$ 203,54, 26/08).
- **Retirado dos vencedores:** "lixeira banheiro 10 com tampa" (close → L2030-T R$ 143,13, 01/09) — **venda devolvida** `[PROMPT]`.

**Candidatos a promoção para manual:** "lixeira inox 60l" / "lixeira inox 60 litros" para o P3070 — 1 venda em 2 cliques é conversão real, não repetibilidade. Primeiro **auditar a manual pausada P3070-o116/07** (contém o termo? estado, lance) antes de criar estrutura. Sem ação nesta O6. Confiança BAIXA.

**Triagem (≥3 cliques, 0 venda, textuais, Geral `[T30]`, agregado por termo somando linhas de SKU):** "lixeira inox 50 litros com pedal" 6 cli (P3060) · "lixo banheiro" 6 · "lixeira grande" 6 · "lixeira 30l" 4 · "guarda chuva" 4 (740 impr) · "lixo para banheiro" 4 · "lixeira inox 5l" 4 · "porta guarda chuva" 4 (606 impr) · "lixeira brinox" 4 · "lixeira tramontina 30l" 3 (559 impr) · "lixeira inox quadrada basculante" 3 · "lixeira cozinha pia inox" 3 · "lixeira inox banheiro" 3 · "lata de lixo 100 litros" 3 · "lixeira de inox" 3 · "lixeira e aço inox com tampa banheiro" 3 · "lixeira 40 litros com pedal" 3 · "lixeira cozinha inox 50 litros" 3. **Todos RELEVANTES ou AMBÍGUOS** (material, capacidade, ambiente, aplicação) — **não negativar**. Marcas concorrentes ("brinox", "tramontina"): CONQUISTA POTENCIAL / REVISAR, 4 e 3 cliques, sem ação.
- 6B: exata "lixeira inox para pia de cozinha" 13 cli / 0 → VIGIA (ver D).
- PXP auto: "suporte para extintor de incêndio chao" loose 3 cli / 0 (o mesmo termo converteu na PI PXM) — sem ação.

**Irrelevantes confirmados:** nenhum novo. Os termos "parede" da SP-PP já estão negativados e a segmentação que os gerava está pausada; a campanha inteira vai a pausa.

**ASINs como termo (placement de produto, `[T30]`, Geral):** 78 linhas, 117 cliques, R$ 74,02 (26% do gasto da Geral). Sem venda e ≥3 cliques: **`B0BHMZBZW9` 13 cli / R$ 8,34** (anunciados P3050, P3070, Q2460-B; também alvo da PI P3070 com 7 cli vit). **Identificado pelo LEO (print, 13:00): Lixeira Inox com Pedal New Tramontina 30 L — R$ 199,97 em oferta (−33%, de R$ 300,07), 4,6★ em 1.555 avaliações, "Escolha da Amazon", 100+ compras/mês.** Classificação: **RELEVANTE (mesma categoria) / CONQUISTA IMPROVÁVEL** — nossos anúncios ali são P3050 (R$ 467,67), P3070 (R$ 616,18) e Q2460-B (R$ 360,97), 1,8–3,1× o preço, sem prova social. Não é irrelevância → **não negativar por irrelevância**; 13 cliques em 30d ficam abaixo do checkpoint. → VIGIA: ≥15 cliques em 30d sem venda na O7 → excluir o produto na Geral. Esta página é **evidência de mercado** para a hipótese PREÇO/OFERTA nos pedais (regra 41.1: margem alta não descartava preço; agora há concorrente comparável a R$ 199,97 com 1.555 avaliações) · `B08D8R4GZQ` 7 cli (Q2460-B) · `B076T9QLJS` 5 · `B0GR21DJC2` 3 · `B0FFSC2QNQ` 3 · `B07GYTMZVK` 3 · `B076JKNX9Q` 4 · `B0F4SRV3MY` 3. Tráfego por ASIN dos SKUs Q2460-B/P3060: **pendente de validação** — não fechar "tráfego relevante confirmado".

**Alvos de PI:**
- **Pausa (régua formal 15+ vit / 0):** PI P3070 → `B09YDLC69D` (asin-expanded, 16 cli, R$ 21,64, 2.896 impr) `[VIT]`.
- **Triagem (5–14 vit / 0):** PI P3070 → `B0CYWMQ93Y` 11 · `B0BHMZBZW9` 7 · `B0BSNVT11K` 5 · `B0F4T8FCDD` 5 · `B0778TD2LY` 5. Sem ação.
- PI L2030-B e PI PXM: nenhum alvo ≥5 sem venda.

**Nenhuma ação:** todo o resto (1–2 cliques).

---

## G. Lista final de alterações sugeridas (aprovar item a item)

1. **Auto SP-PP-o59/09 — PAUSAR CAMPANHA.** Gatilho O5-010 disparado: 0 cliques na Era `[ERA]`; 30d 29.085 impr / 14 cli (todos pré-09/09, termos "parede") / 0 venda; vitalício 26 cli / 0. Cobertura pela Geral mantida. — **ALTA**
2. **Auto EGC — PAUSAR CAMPANHA.** Gatilho O5-007 disparado: 0 vendas E CTR 0,17% (< 0,3%) na Era; 30d 8.534 impr / 11 cli / 0; teste de oferta no 9.9 zerou; BR 24 sessões / 0 un. Lance 0,84 fixo fica registrado para eventual retorno pós-página. — **ALTA**
3. **PI P3070-o228/07 — PAUSAR ALVO `asin-expanded="B09YDLC69D"`.** 16 cliques vitalícios / R$ 21,64 / 0 compra `[VIT]` (10 cli em 30d). Só o alvo; campanha segue. Export confirmado como "Vitalício" pelo LEO. — **ALTA**
4. **PI P3070-o228/07 — VIGIA re-armada (sem mexida de lance).** Lances asin-expanded 1,10 / asin 0,90 mantidos. Gatilho O7: 0 venda atribuída na Era O6→O7 **E** ≥15 cliques → −20% nos asin-expanded (1,10 → 0,88). Motivo: entrega dobrou, ≥50 cliques da Era em terceiros sem venda, ACOS 11,5% sustentado por 1 ticket; break-even ≈ 25,8%. Não ESCALAR. — **MÉDIA**
5. **Geral DBA-o59/09 — segmentação `loose-match` (Correspondência vaga): REDUZIR lance 0,54 → 0,45 (−17%).** Era `[SEG-ERA]`: 70 cli, **R$ 45,57 = 60,3% do gasto da Geral, 1 compra R$ 132,90, ACOS 34,3%** (acima do Máximo); 30d `[S30]`: R$ 161,97 = 56,6%, 237 cli, 2 compras, ACOS 60,9% (acima da Emergência). As duas janelas apontam a mesma direção; a condição pedida (loose >50% com ≤1 venda pós-O5) está atendida. Conferir na execução pelos cliques/custo (70 cli · R$ 45,57), **não pelo nome** (vaga = loose). Simétrico à O5-001. — **ALTA**
6. **Geral DBA-o59/09 — Q2460-B: VIGIA com gatilho em 28/09.** 30d 69 cli / R$ 45,78 / 0 venda `[PA30]`; BR 27 sessões / 0 un. Não mexer até 27/09 (desconto no preço em curso, sem preço riscado). Gatilho 28/09: 0 venda na semana de desconto → **pausar o anúncio do Q2460-B dentro da Geral** (nível produto) até revisão de página; com venda → manter e reler na O7. — **MÉDIA**
7. **6B — O5-013 CANCELADA.** A única evidência (L2030-T, R$ 143,13, 01/09) foi devolvida (17/09). "lixeira banheiro 10 com tampa" volta à triagem normal; nada a promover. — **ALTA**
8. **6B — exata "lixeira inox para pia de cozinha" (1,50): VIGIA.** 30d 13 cli / R$ 22,97 / 0 venda `[S30]`. Gatilho O7: ≥15 cliques sem venda → reduzir −20% (1,50 → 1,20) ou pausar a keyword; hipótese a testar depois do piloto: termo de intenção "pia" (3 L) sem o L1618-T no grupo. Sem ação agora. — **MÉDIA**
9. **6B — O5-014 fechada sem ação:** L2025-B permanece no grupo (3 cli / R$ 5,34 / 0 em 30d, sem clique novo desde a O5). — **MÉDIA**
10. **Piloto de lance — MANTER 6B e L3070-B em dinâmico por mais 1 Era; NÃO migrar os controles** (Extintor, Cinzeiros, Bituqueiras). Veredito INCONCLUSIVO (6B 7 cli / 0; L3070-B 0 cli). Se a Era O6→O7 repetir zero diferença, encerrar o piloto na O7 e devolver a 6B e a L3070-B ao fixo. — **MÉDIA**
11. **Prime Day 05–11/10 — submeter hoje, formato Melhor Oferta** (Relâmpago vetada — EC-004). Margens no Simulador SP Interior `[MESTRA]` (método reproduz EC-007…016 ao décimo; piso 15%):

   | SKU | Preço | Desconto proposto | Preço oferta | Margem SP | Desconto máx. no piso 15% | Base |
   |---|---:|---:|---:|---:|---:|---|
   | **PXM** | 203,54 | **10%** | 183,19 | **15,0%** | 10,0% | converteu no 9.9 (3 un a −15%) |
   | **PG2460** | 248,75 | **10%** | 223,88 | **16,7%** | 12,5% | converteu no 9.9 (1 un a −10%) |
   | **PXP** | 167,89 | **10%** (mínimo do evento) | 151,10 | **13,4% no Simulador — abaixo do piso** | 7,7% | converteu no 9.9 a −10% (3 un). **Margem realizada nesses 2 pedidos (`Registro_Vendas` 08/09): 21,2% (2 un, SC Interior) e 25,2% (1 un, PR Capital)** — acima do piso, porque o frete real ficou abaixo da `Ref_Frete` (pendência aberta). **Decisão do LEO: exceção documentada (recomendo incluir) ou fora.** Amostra de 2 pedidos; não generalizar |
   | **P3070** | 616,18 | **15%** | 523,75 | 16,9% | 17,6% | 66 sessões, folga; PI ativa — a oferta contamina a leitura de Ads do SKU na Era do evento (marcar) |
   | **P3060** | 511,42 | **15%** | 434,71 | 19,4% | 21,0% | 18 sessões, maior folga do catálogo entre os com tráfego |
   | **P4080** | 1.070,17 | **15%** | 909,64 | 15,9% | 16,3% | 26 sessões, maior ticket |
   | P3050 (opcional) | 467,67 | 10% | 420,90 | 17,8% | 14,0% | 13 sessões |

   **Fora:** L2450-AML (qualquer desconto) · Q2460-B (máx. 7,1%; zero conversão) · L2025-T e L1618-T (máx. 7,3% / ~4%; "nenhuma lixeira converteu com oferta") · EGC (teste de oferta zerou). Os 10 SKUs do desconto no preço encerram em 27/09 — sem empilhamento. **Desconto mínimo do evento confirmado pelo LEO: 10%** — todos os propostos atendem; PXP fica em 13,4% no Simulador (exceção, ver tabela). Conferir o preço de referência que a Amazon calcular na tela antes de confirmar. — Margens **ALTA** · seleção **MÉDIA**
12. **Migração de ASIN / concentração — NÃO DECIDIR AINDA** (bloqueio físico da marcação; decisão com a Dianna). Registrar, não analisar. — **ALTA**
13. **EC-006 (liquidação EMB) — pendência nomeada da Dianna** (canal). Sem decisão nova nesta O6; manter aberta. — n/a

Manutenções sem ação no console (registrar como MANTER): Geral orçamento R$ 90 (consumo 7%) · auto PXP · PI L2030-B · PI PXM · Extintor · Cinzeiros · Bituqueiras · lances por segmentação da Geral exceto loose.

---

## H. Ações que NÃO devem ser feitas agora

1. **Não promover a PI P3070 a ESCALAR nem aumentar lance/orçamento** — 1 venda, no alvo próprio, com 149 cliques vitalícios sem compra em terceiros.
2. **Não reduzir lances da PI P3070 por régua de campanha** — o gatilho O5-011 caiu; a régua vigente é por alvo (item G3).
3. **Não mexer em Q2460-B, L1618-T, P3060, P3050, P4080, PG2460, PXP, PXM, L2025-T, L2030 nos Ads antes de 28/09** — desconto no preço em curso; a regra de atribuição desse mecanismo é desconhecida; a primeira venda deve ser conferida pedido a pedido.
4. *(retirado — o export de segmentação da Era chegou e confirmou o item G5.)*
5. **Não negativar nenhum termo textual da triagem** (todos relevantes/ambíguos; marcas concorrentes ficam em revisão).
6. **Não excluir `B0BHMZBZW9` sem o LEO abrir o ASIN** — 20 cliques na conta sem venda, mas relevância não avaliada.
7. **Não migrar os controles do piloto para dinâmico, nem reverter a 6B/L3070-B nesta O6** — veredito inconclusivo, custo zero.
8. **Não usar o ACOS de 10,75% da Era como nova referência** — 4 compras, 68% da receita atribuída em 2 tickets altos.
9. **Não reabrir a migração de ASIN, a liquidação dos EMB ou a atribuição de oferta** — decididas/medidas.

---

## I. Dados que faltam (para elevar a confiança)

| Dado | Para quê | Bloqueador de |
|---|---|---|
| ~~Confirmação "Vitalício" dos exports de alvos~~ | **resolvido 13:00** | — |
| ~~Registro_Vendas 16–20/09~~ | **resolvido 13:00** (1 + 3 un; bijeção fecha). Falta apenas a cópia da Mestra atualizada para o repositório | — |
| **Placement Report** (Top of search / Rest / Product pages) por campanha, Era | validar ajustes de topo (6B +25%, Extintor +75%) e explicar a entrega da PI P3070 por placement | qualquer mudança de ajuste de posicionamento |
| **Impressões da Era** (export com a coluna populada) | CTR/entrega sem derivação | — |
| ~~O que é `B0BHMZBZW9`~~ | **resolvido 13:00** — Tramontina pedal 30 L | — |
| **Vitalício da auto PXP-o311/08** (sem export de alvos p/ automáticas) | contrapeso formal | — (histórico da O5-017 basta para MANTER) |
| ~~Desconto mínimo do Prime Day~~ | **resolvido 13:00** — 10%. Falta só o preço de referência que a Amazon calcular na tela | — |
| **Margem do L1623-T no Simulador** (não consultei) | fila de página | — |

---

# PACOTE DE FECHAMENTO (proposta — quem lança é o LEO)

## 1. Propostas de linha para o Registro de Alterações

| ID | Ciclo | Campanha / objeto | Item | Ação | Estado anterior | Estado novo | Evidência | Conf. |
|---|---|---|---|---|---|---|---|---|
| O6-001 | O6 | Auto SP-PP-o59/09 | campanha | PAUSAR CAMPANHA | Ativa (close + complements), lance 1,32 | Pausada | Era 0 cli `[ERA]`; 30d 29.085 impr / 14 cli / 0 `[C30]`; vit 26 cli / 0 (O5-010). Gatilho O5-010 disparado | ALTA |
| O6-002 | O6 | Auto EGC | campanha | PAUSAR CAMPANHA | Ativa, fixo 0,84, R$ 5/dia | Pausada | Era 10 cli / R$ 7,58 / 0 / CTR 0,17%; 30d 8.534 impr / 11 cli / 0; oferta 9.9 zerou. Gatilho O5-007 disparado | ALTA |
| O6-003 | O6 | PI P3070-o228/07 | alvo `asin-expanded="B09YDLC69D"` | PAUSAR ALVO | Ativo, lance 1,10 | Pausado | 16 cli vit / R$ 21,64 / 0 compra `[VIT]`; 10 cli em 30d | ALTA (se vitalício confirmado) |
| O6-004 | O6 | PI P3070-o228/07 | campanha | VIGIA (gatilho re-armado) | Congelada, gatilho desarmado 15/09 | Ativa, lances mantidos; **gatilho O7: 0 venda E ≥15 cli na Era → −20% asin-expanded** | Era 52 cli / R$ 71,10 / 1 compra R$ 616,18 no alvo próprio; ≥50 cli em terceiros sem venda | MÉDIA |
| O6-005 | O6 | Geral DBA-o59/09 | segmentação loose-match / Correspondência vaga | REDUZIR LANCE | 0,54 | 0,45 (−17%) | Era `[SEG-ERA]`: 70 cli, R$ 45,57 (60,3% do gasto), 1 compra, ACOS 34,3%. 30d `[S30]`: R$ 161,97 (56,6%), 237 cli, 2 compras, ACOS 60,9% | ALTA |
| O6-006 | O6 | Geral DBA-o59/09 | produto Q2460-B (B0H7YNMBBK) | VIGIA (gatilho 28/09) | Anunciado na Geral | Sem mudança; **gatilho 28/09: 0 venda com desconto → pausar o anúncio do SKU na Geral** | 30d 69 cli / R$ 45,78 / 0 `[PA30]`; BR 27 sess / 0 | MÉDIA |
| O6-007 | O6 | 6B Lixeiras banheiro | O5-013 | CANCELAR (evidência retirada) | BLOQUEADA | CANCELADA | Venda L2030-T 01/09 devolvida (17/09) | ALTA |
| O6-008 | O6 | 6B Lixeiras banheiro | exata "lixeira inox para pia de cozinha" | VIGIA | 1,50, dinâmico | Sem mudança; **gatilho O7: ≥15 cli sem venda → −20% ou pausar keyword** | 30d 13 cli / R$ 22,97 / 0 `[S30]` | MÉDIA |
| O6-009 | O6 | 6B Lixeiras banheiro | O5-014 (L2025-B no grupo) | MANTER (fechada) | L2025-B no grupo | Sem mudança | 30d 3 cli / R$ 5,34 / 0; sem clique novo | MÉDIA |
| O6-010 | O6 | 6B · L3070-B (piloto) · Extintor · Cinzeiros · Bituqueiras (controle) | estratégia de lances | MANTER (piloto +1 Era) | 6B e L3070-B dinâmicas; controles fixos | Sem mudança; **encerrar o piloto na O7 se repetir zero diferença** | Era: 6B 7 cli / 0; L3070-B 0 cli; controles 0–1 cli | MÉDIA |
| O6-011 | O6 | Prime Day 05–11/10 | Melhor Oferta — PXM 10% · PG2460 10% · P3070 15% · P3060 15% · P4080 15% · (P3050 10% opcional) · PXP 10% **só como exceção documentada ao piso** | CRIAR OFERTAS | Sem ofertas inscritas | Inscritas (LEO submete hoje) | Margens Simulador SP Interior (tabela G11); mínimo do evento 10%; 9.9: PXP/PXM/PG2460 converteram | MÉDIA |
| O6-012 | O6 | Migração de ASIN / concentração | escopo | NÃO DECIDIR AINDA | — | — | Bloqueio físico (três grafias); decisão da produção/Dianna | ALTA |
| O6-013 | O6 | Geral DBA-o59/09 | ASIN `B0BHMZBZW9` (Tramontina pedal 30 L, R$ 199,97, 1.555 avaliações) | VIGIA (relevante, conquista improvável) | Sem exclusão | Sem mudança; **gatilho O7: ≥15 cli em 30d sem venda → excluir produto na Geral** | 13 cli / R$ 8,34 / 0 na Geral `[T30]` + 7 cli vit na PI P3070 = 20 na conta; preço 1,8–3,1× o nosso | MÉDIA |
| O6-014 | O6 | Geral · auto PXP · PI L2030-B · PI PXM · Extintor · Cinzeiros · Bituqueiras | — | MANTER | — | Sem mudança | D acima | ALTA |

## 2. Vereditos das entradas em maturação

| Entrada | Resultado pós-alteração (Era 10–21/09) | Veredito posterior |
|---|---|---|
| O5-001 (Geral substitutes 0,54→0,45) | Era `[SEG-ERA]`: 3.171 impr · 22 cli · R$ 9,23 = **12,2% do gasto** (era 39% no 30d da O5) · 0 compras. 30d `[S30]`: R$ 96,11 (33,6%), ACOS 36,2% | **POSITIVO** — objetivo (tirar gasto da segmentação de ACOS 81%) atingido; 0 venda em 22 cliques não prova perda. Manter 0,45 |
| O5-002 (Geral close 0,45→0,54) | Era: 4.878 impr · 30 cli (vs 24 em 30 dias na O5) · R$ 20,71 (27,4%) · 1 compra R$ 398,35 · **ACOS 5,2%** · CTR 0,62% | **POSITIVO** — mais volume na segmentação mais eficiente, ACOS dentro do Objetivo. Manter 0,54 |
| O5-003 (Geral orçamento R$ 90 mantido) | Era R$ 75,51 em 12 dias = R$ 6,29/dia = 7% do teto | **CONFIRMADA** — orçamento não é restrição |
| O5-004 (PI L2470-CZ pausada) | PAUSADO, custo 0 `[ERA]`; família coberta pela Geral (L2470-CZ 569 impr / 1 cli em 30d) | **EFETIVA** — sem reativação |
| O5-005 (PI PG3070 pausada) | PAUSADO, custo 0; PG3070 na Geral 512 impr / 0 cli | **EFETIVA** |
| O5-006 (auto PXM-o425 pausada) | PAUSADO, custo 0; família extintor vendeu R$ 519,03 pela PI PXM na Era | **EFETIVA** — redundância confirmada |
| O5-007 (EGC vigia) | Era 10 cli / 0 venda / CTR 0,17% | **GATILHO DISPAROU → O6-002 (pausar)** |
| O5-008 (6B piloto dinâmico) | Era 7 cli / R$ 13,59 / 0 venda / CPC 1,94 (vs 11 / 1 venda / 1,60 na Era da O5) | **INCONCLUSIVO** — n = 1 venda total; +1 Era (O6-010) |
| O5-009 (L3070-B → dinâmico) | Era 0 cli / R$ 0; TOS IS 38,1% | **SEM EFEITO OBSERVÁVEL** (0 vs 0); +1 Era (O6-010) |
| O5-010 (SP-PP loose pausada + vigia) | Era 0 cli; close 96 impr / complements 212 impr em 30d, 0 cli | **GATILHO DISPAROU → O6-001 (pausar campanha)** |
| O5-011 (PI P3070 congelada, gatilho) | Desarmado 15/09; Era 52 cli / R$ 71,10 / 1 venda R$ 616,18 no alvo próprio; ACOS 11,5% | **DESARMADO**; régua de alvo aplicada → O6-003; vigia re-armada → O6-004 |
| O5-012 (auto SP-01 pausada por inelegibilidade) | PAUSADO `[ERA]` | **NÃO AVALIÁVEL** (não é performance); reativação condicionada à liberação do anúncio |
| O5-013 (promover "lixeira banheiro 10 com tampa") | BLOQUEADA; venda-base devolvida 17/09 | **CANCELADA → O6-007** |
| O5-014 (L2025-B na 6B) | 30d 3 cli / R$ 5,34 / 0; sem clique novo | **FECHADA SEM AÇÃO → O6-009** |
| O5-015 (Cinzeiros/Bituqueiras/Extintor MANTER) | Era 1 / 0 / 0 cliques; TOS IS 18% / 86% / >95% | **CONFIRMADA** (métrica bruta; sem inferir teto) |
| O5-016 (PI PXM CORRIGIR CTR) | Era 2 cli / R$ 1,06 / 1 venda R$ 519,03 (oferta); CTR 30d 0,25% | **MANTIDA** — converteu em oferta; CTR segue na fila de página |
| O5-017 (PI L2030-B · auto PXP MANTER) | PI L2030-B Era 5 cli / 0; vit 21 cli / 3 compras. Auto PXP Era 7 cli / 0; a dúvida (+151,10 / +302,20) fecha: vendas reais de 08/09 no `Registro_Vendas` | **CONFIRMADA**; dúvida da nota **RESOLVIDA por fonte** |
| **EC-007 a EC-016** (desconto no preço, 21–27/09) | Começaram em 21/09 — 1 dia dentro da Era | **NÃO AVALIÁVEIS hoje.** Primeira leitura 28/09 (sessões × conversão × primeira venda pedido a pedido para fixar a regra de atribuição). Marcar corte de série 23–27/09 na O7 para os 10 SKUs |

## 3. Prime Day — lista com margem por SKU
Tabela no item G11. Resumo para submissão (mínimo do evento 10%): **PXM −10% (R$ 183,19) · PG2460 −10% (R$ 223,88) · P3070 −15% (R$ 523,75) · P3060 −15% (R$ 434,71) · P4080 −15% (R$ 909,64)** · opcional P3050 −10% (R$ 420,90) · **PXP −10% (R$ 151,10) só como exceção documentada** (13,4% no Simulador; 21,2% e 25,2% realizados em 08/09). Fora: L2450-AML, Q2460-B, L2025-T, L1618-T, EGC, L2030, L1618-B. Condição: verificar desconto mínimo e preço de referência na tela; nenhuma oferta empilha com desconto no preço (todos encerram 27/09).

## 4. Snapshot proposto dos Parâmetros Vigentes (pós-O6, só se aprovado/executado)

**§3 Lances.** Geral DBA-o59/09 por segmentação: close 0,54 · loose **0,45 (O6-005, era 0,54)** · substitutes 0,45 · complements 0,45; lance padrão 0,48 inerte; orçamento R$ 90 (consumo ~7%). 6B exata 1,50 / frase 1,20 / topo +25% dinâmica (piloto, última Era). L3070-B 1,20 / 1,00 / +25% dinâmica (piloto, última Era). Extintor 2,60 / +75% fixo. Cinzeiros 1,60 / 1,30 / +50% fixo. Bituqueiras 1,20 / 1,00 / +50% fixo. PI P3070 asin-expanded 1,10 / asin 0,90 (alvo `B09YDLC69D` pausado — O6-003). PI PXM 1,10. PI L2030-B 0,78 / 0,90. Auto PXP 1,32 / close 1,10. **EGC: pausada (O6-002; lance 0,84 registrado).** **SP-PP: pausada (O6-001).**

**§4 Vigias e gatilhos (O7, ~06/10).** PI P3070: 0 venda E ≥15 cli na Era → −20% asin-expanded. Geral/Q2460-B: gatilho **28/09** (0 venda com desconto → pausar anúncio do SKU na Geral). 6B exata "pia de cozinha": ≥15 cli sem venda → −20% ou pausar. Piloto de lance: zero diferença na Era → encerrar e voltar ao fixo. Triagem PI P3070: `B0CYWMQ93Y` 11 · `B0BHMZBZW9` 7 · `B0BSNVT11K` 5 · `B0F4T8FCDD` 5 · `B0778TD2LY` 5 (régua 15). Fila de página: L1623-T (18 cli / 0), Q2460-B (após 28/09), EGC, PI PXM (CTR).

**§7 Promoções.** Desconto no preço 10 SKUs 21–27/09 (EC-007…016) — leitura 28/09; **corte de série 23–27/09** a marcar na O7. Prime Day 05–11/10: ofertas inscritas em 22/09 (O6-011) — lista no §3 do pacote. Promoções de quantidade inalteradas (101 / 83 SKUs). EC-005 (P2025 12%) e EC-006 (EMB 50%) — vereditos de 18/09 mantidos; EC-006 pendente de decisão de canal (Dianna).

**§8 Ciclo.** O6 concluída como análise em 22/09 (execução pendente de aprovação). Conta: 12 ativas → **10 após O6-001/002**. Era O6→O7: **23/09–05/10** (contém desconto 23–27/09 e o 1º dia do Prime Day). Setembro: R$ 287,66 até 21/09 (28,8% do teto). **Livro_Vendas de setembro: 05/10.** O7: ~06/10 (ver agenda).

## 5. Nota-resumo do ciclo
> **O6 22/09 — Era 10–21/09 (12 corridos, 9 úteis).** Ads R$ 179,20 · 206 cli · 4 compras · R$ 1.666,46 · ACOS 10,75% · BR R$ 2.573,86 em 8 pedidos (Ads 64,7%, TACOS 7,0%). Dois gatilhos de vigia dispararam (SP-PP 0 cli; EGC 0 venda/CTR 0,17%) → pausas. PI P3070 converteu no **alvo próprio** (não nos 4 em triagem) e dobrou a entrega; alvo `B09YDLC69D` atinge 16 cli vit/0 → pausa do alvo; campanha em vigia re-armada. Geral: ACOS 14,2% na Era; O5-001/002 positivas (substitutes 39% → 12% do gasto; close com ACOS 5,2%), mas a `loose-match` leva 60% do gasto da Era a ACOS 34% → reduzir 0,54 → 0,45. O5-013 cancelada (venda devolvida). Piloto de lance inconclusivo (+1 Era). Prime Day: 6 SKUs submetidos (+1 opcional). Migração de ASIN: não decidir. Q2460-B e 9 outros sob desconto — não mexer antes de 28/09.

## 6. Agenda
- **28/09 (seg)** — leitura do desconto no preço (7 dias): sessões × conversão por SKU contra a linha de base de `EC-18-09_ofertas.md`; **primeira venda com desconto conferida pedido a pedido** (painel × BR × export) para fixar a regra de atribuição; gatilho do Q2460-B (O6-006); decide prorrogar (teto 04/10) ou encerrar.
- **05/10 (seg)** — fechamento do `Livro_Vendas` de setembro (Livro primeiro).
- **O7 — recomendação: manter a análise em 06/10** (Era 23/09–05/10; só o 1º dia do Prime Day dentro), **mas adiar para 12/10 as execuções não emergenciais** (mexer em lance no meio do evento contamina a leitura do Prime Day). Leitura do Prime Day em **13/10** (monitoramento). Alternativa: deslocar a O7 inteira para 13/10 — desaconselhada porque a Era passaria a conter o evento inteiro. Decisão do LEO.
- **Na O7:** marcar **corte de série 23–27/09** para os 10 SKUs do desconto; veredito de O5-001/002 com o export de segmentação da Era; veredito final do piloto de lance; gatilhos O6-004 e O6-008.
- **Business Report:** para janela que termina em D, puxar em D+2 (atraso de ~1 dia).
