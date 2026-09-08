# O5 — 08/09/2026 · DIAGNÓSTICO A–I (chat canônico)

Modo: **otimização quinzenal**. Era de dados **26/08–07/09** (13 corridos · 8 úteis · 5 mortos = 38%). Janela 30d dos recorrentes: **08/08–06/09**. Vitalício por alvo: **12/06–07/09**.
Status deste documento: **ANÁLISE E RECOMENDAÇÃO — nada executado.** Lista G aguarda aprovação item a item do LEO. Auditoria: Claude Code.

Fontes (arquivos recebidos em 08/09): `Campaign_Sep_8_2026 (1).csv` (Gerenciador, Era, coluna Estado) · `BusinessReport-08-09-26.csv` (BR por ASIN, Era) · 6 recorrentes `WN | * | 30d` · `WN Segmentação Duplicado` (12/06–07/09) · `Planilha_Mestra_Winnet_v4_3_4.xlsx` (canônica, confirmada pelo LEO; diferença para a 4.3.3 = restauração das listas suspensas, sem alteração de valor) · `Registro_Alteracoes` (23 entradas) · `Controle_Semanal`.

---

## A. Resumo executivo

**FATOS (Era 26/08–07/09, fonte: export do Gerenciador + BR + Registro_Vendas):**
- Gasto Ads **R$ 210,96** · vendas atribuídas **R$ 1.102,15** · 6 compras · **ACOS 19,1%** (Objetivo 9 / Máximo 18 / Emergência 36) · **TACOS 7,3%**.
- Vendas totais (BR) **R$ 2.897,92** · 14 unidades · 11 pedidos. **Bijeção exata** com os 11 pedidos do `Registro_Vendas` no período. Ads = **38,0%** da receita; não atribuído a Ads = **R$ 1.795,77 (62,0%)**.
- Quem vendeu por Ads: Geral 4 compras (R$ 632,81) · 6B 1 compra (R$ 265,80 — **1ª venda da manual 6B, no piloto dinâmico**) · Extintor 1 compra (R$ 203,54).
- Geral na Era: ACOS **21,7%** (acima do Máximo, abaixo da Emergência). Em 30d: **10,5%** — sustentado por 1 pedido halo de R$ 1.741,56 (sem ele: 31,4%).
- 16 campanhas ativas (o Contexto dizia 15 — era erro de contagem, os 16 nomes batem com o mapa vivo). Zumbis: **zero** — nenhuma campanha fora das listas teve entrega após 25/08 (a auto L1618-o115 parou em 31/08, EC-002).
- Régua formal de alvo de PI (15+ cliques vitalícios sem venda): **zero alvos** atingem em qualquer PI ativa. Triagem (5–14): 4 alvos na PI P3070, 1 na PI L2470-CZ.
- Gasto projetado do mês: Era a R$ 16,2/dia ≈ **R$ 480–500/mês** (~50% do teto de R$ 1.000). Pré-Era era R$ 11,1/dia — subida de +46%/dia, coerente com radares + Geral + 6B dinâmica.

**INTERPRETAÇÃO:**
- A conta está saudável no agregado (TACOS 7,3%; 62% orgânico), mas a Geral **inverteu o funil**: `substitutes` (lance 0,54) gasta 39% do orçamento da Geral em 30d e converteu 1 vez em 167 cliques (ACOS 81%); `close-match` (lance 0,45, o menor) é a segmentação mais eficiente (ACOS 2,5% em 30d, 6,9% vitalício).
- Dos 4 radares da O4, **3 não geraram amostra** (L2470-CZ 4 cliques, PG3070 1 clique, auto PXM-o2 2 cliques) e caem no contrato de saída. O **EGC** é o único em que o radar cumpriu o objetivo (impressões ×6,6) — o problema migrou de entrega para CTR.
- O piloto de lance dinâmico da 6B é **positivo preliminar**: cliques/dia dobraram (0,40 → 0,85) e veio a 1ª venda, enquanto os 5 controles fixos caíram para 0–1 clique na Era. Amostra: 1 venda.
- **O4-015 (lance padrão 0,48 da Geral) está inerte**: as 4 segmentações têm lance próprio (0,45/0,45/0,54/0,54) e o padrão não é usado. O "efeito da Geral a 0,48" não é mensurável como tal; a Geral subiu cliques/dia (+22%) e CPC (+11%) na Era, mas isso não pode ser atribuído à O4-015 sem saber os lances por segmentação anteriores a 25/08 (ver I).

**RECOMENDAÇÃO (síntese — detalhe em G):** rebalancear lances por segmentação da Geral (substitutes ↓, close-match ↑) sem tocar no orçamento; pausar os 3 radares sem amostra; prorrogar EGC por 1 Era com gatilho; manter 6B dinâmica e migrar só a L3070-B (controle com espaço de share); consertar a Registro_Vendas (PG2460 07/09 a preço praticado); investigar elegibilidade do SP-01; migração piloto = P3060 + P3050.

---

## B. Qualidade dos dados

| Fonte | Janela | Situação |
|---|---|---|
| Export Gerenciador `Campaign_Sep_8` | 26/08–07/09 (LEO confirmou) | ✅ 80 campanhas, coluna Estado. ⚠️ Coluna **Impressões = 0 em todas as linhas** (export sem a coluna habilitada). Impressões da Era foram **derivadas** = cliques ÷ CTR — aproximação, marcadas com "~". |
| BR por ASIN | 26/08–07/09 (LEO confirmou) | ✅ 75 ASINs com ≥1 sessão; 430 sessões; 14 un; R$ 2.897,92. Sem granularidade diária → não dá para isolar os 5 dias mortos. |
| 6 recorrentes 30d | 08/08–06/09 | ✅ consistentes entre si (Campanhas: 564 cliques / R$ 411,58 / R$ 3.088,41 / 8 compras; Produtos Anunciados: mesmos totais). Termos só lista termos com ≥1 clique — impressões subestimadas por desenho. |
| Segmentação vitalícia (Duplicado) | 12/06–07/09 | ✅ cobre a criação de todas as 18 PIs (criadas 12–19/06). 30 compras / R$ 9.767,92 / R$ 1.853,43 no total — só para leitura por alvo; **não somar** com outros relatórios. |
| Planilha Mestra v4.3.4 | — | ✅ Simulador SP Interior usado para margem. `Registro_Vendas` cobre até 07/09. `Livro_Vendas` fechado até 31/08 — setembro fora da cobertura (declarado). |
| Registro de Alterações | 23 entradas | ✅ EC-005/006 ainda não lançados (LEO). |

**Divergências e limitações declaradas:**
1. **Pré-Era ≈ 30d − Era é aproximação**: o 30d termina em 06/09 e a Era em 07/09. Em campanhas pequenas dá negativo (auto PXP-o3: −R$ 0,94). Usado só como leitura direcional.
2. **Contagem "15 campanhas ativas" (Parâmetros §10 / Contexto) estava errada**: o export traz 16 ativas, e os 16 nomes coincidem com a lista do mapa vivo. Corrigir na doc.
3. **Lance padrão 0,48 (O4-015) inerte** — ver A. As 4 segmentações têm lance próprio (console confirmado pelo LEO). Não sei os lances por segmentação de antes de 25/08.
4. **Atribuição de Melhor Oferta**: a única composição de 4 pedidos que fecha os R$ 632,81 da Geral na Era é L2025-T (132,90) + L2025-T (132,90) + L2030-T (143,13) + **PG2460 a R$ 223,88** (preço da Melhor Oferta −10%), verificado por busca exaustiva. **Inferência (1 pedido):** Oferta Relâmpago/Melhor Oferta altera o preço exibido e é atribuída **ao preço da oferta**; o achado de 31/08 (atribuição a preço de tabela) vale para a **promoção de quantidade** (desconto no checkout). Confirmar na leitura do 9.9 em 14/09 antes de virar regra.
5. **Registro_Vendas, linha 07/09 PG2460** está a R$ 248,75; o BR registra R$ 223,88. Bijeção BR × Registro só fecha com 223,88. Correção proposta em G.
6. **Maturação de atribuição**: o Controle Semanal de 31/08 registrou 2 pedidos/R$ 336,44 na semana 24–31/08; o export de hoje mostra que a Era já contém 6 compras — a venda da 6B (31/08) e uma L2025-T da Geral (31/08) só apareceram depois. Não usar o export do dia para veredito de venda do próprio dia.
7. **Registro O4-010 tem erro de texto**: descreve a auto PXM-o2 como "mineração da família porta-guarda-chuva"; PXM é suporte de extintor 6 kg. Corrigir a linha.
8. **Revisão Nível 1 (27–28/08) não documentada** — tratada como hipótese, não como fato (ver E, Q2460-B).

---

## C. Ads × vendas totais (Era 26/08–07/09)

| | R$ | Pedidos | Un. |
|---|---:|---:|---:|
| Vendas totais (BR) | 2.897,92 | 11 | 14 |
| Atribuídas a Ads (export) | 1.102,15 | 6 | 8 |
| Não atribuídas / estimativa orgânico | 1.795,77 | 5 | 6 |
| Participação Ads | **38,0%** | | |
| Gasto Ads | 210,96 | | |
| ACOS | **19,1%** | TACOS | **7,3%** |

Pedido a pedido (Registro_Vendas × export): **Ads** = PXM 26/08 (Extintor) · L2025-T 30/08 (Geral) · L2025-T ×2 31/08 (6B) · L2025-T 31/08 (Geral) · L2030-T 01/09 (Geral) · PG2460 07/09 (Geral, R$ 223,88). **Não atribuídos** = PXP 29/08 · L2450-AML ×3 31/08 · L1618-T 02/09 · **P3070 03/09 (1ª venda do P3070 desde 21/06)** · L1618-T 05/09.

Comparativo 30d (08/08–06/09): gasto R$ 411,58 · atribuído R$ 3.088,41 · ACOS 13,3% · 8 compras / 11 un (inclui halo Q2430-A→Q3060-A R$ 1.741,56 de 20/08). Não há BR de 30d → não calculo orgânico de 30d.

Sem venda de EMB-05/05P/08 na Era (liquidação EC-006) — nada a segregar desta vez.

---

## D. Diagnóstico por campanha (16 ativas)

Impr~ = derivada (cliques ÷ CTR). "Vit." = 12/06–07/09.

| Campanha | Papel O4 | Era: cli / R$ / vendas / compras | Impr~ | 30d ACOS | Vitalício | Entrega × Conversão | Decisão | Conf. |
|---|---|---|---:|---:|---|---|---|---|
| Geral DBA-o311/08 | Vendedora | 201 / 137,16 / 632,81 / 4 · CPC 0,68 | 29.130 | 10,5% (31,4% s/ halo) | 765 cli / 14 compras | Entrega ✅ · converte via close+loose; **substitutes 167 cli/1 compra em 30d (ACOS 81%)** | MANTER orçamento · **REDUZIR** substitutes 0,54→0,45 · **ESCALAR** close-match 0,45→0,54 | ALTA / MÉDIA / MÉDIA |
| PI P3070-o228/07 | Congelada | 30 / 34,41 / 0 / 0 · CTR 0,22% | 13.636 | — (42 cli/0) | 98 cli / 1 compra (21/06) | Entrega ✅ · conversão zero na PI; **SKU vendeu orgânico 03/09** (1 em 43 sessões). Nenhum alvo ≥15 vit.; 4 em triagem (B09YDLC69D 12, B0CYWMQ93Y 7, B0BHMZBZW9 5, B0778TD2LY 5) | MANTER congelada até leitura 9.9 (14/09); gatilho O6 | MÉDIA |
| 6B Lixeiras banheiro [O4] | Aposta · piloto dinâmico | 11 / 17,62 / 265,80 / 1 · CPC 1,60 | 780 | 9,6% | 18 cli / 1 compra | Entrega destravou (pré-Era 6 cli/15d → Era 11 cli/13d) · 1ª venda ("lixeira banheiro 7 litros", exata, share 79%) | MANTER dinâmico — piloto POSITIVO PRELIMINAR | ALTA (manter) / MÉDIA (veredito) |
| Auto SP-PP-o425/08 | Ativa pós-limpeza | 7 / 8,98 / 0 / 0 · CTR 0,06% | 11.667 | — (22 cli/0) | 26 cli / 0 compras | Entrega ✅ · CTR segue ~0,06% pós-limpeza: `substitutes` pausada funcionou (termos "parede" datam ≤25/08), mas `loose-match` continua trazendo "saboneteira parede", "suporte planta parede", "mandalas parede" | **REDUZIR**: pausar segmentação loose-match; VIGIA com gatilho O6 | MÉDIA |
| Auto PXP-o311/08 | Estrutura O3 | 5 / 4,87 / 0 / 0 | 1.087 | — (7 cli/0) | 26 cli / 3 compras / R$ 539,32 | Vitalício saudável (11,5% conv.), Era fria; SKU vendeu orgânico 29/08 | MANTER (contrapeso vitalício) | ALTA |
| PI L2470-CZ-o425/08 | Radar O4-004 | 4 / 2,51 / 0 / 0 | 769 | — (4 cli/0) | 18 cli / 0 em 32 alvos | Sem amostra em 8 dias úteis após +20% | **PAUSAR CAMPANHA** (contrato de saída) | ALTA |
| Auto PXM-o425/08 | Radar O4-010 | 2 / 2,02 / 0 / 0 | 870 | — (7 cli/0) | 21 cli / 1 compra (08/07) | Sem amostra; redundante com Extintor manual (vendeu na Era), PI PXM-o3 e auto PXP-o3 | **PAUSAR CAMPANHA** (contrato) | ALTA |
| PI PG3070-o425/08 | Radar O4-005 | 1 / 0,99 / 0 / 0 | 455 | — (2 cli/0) | 8 cli / 0 em 83 alvos | Sem amostra; migração para exatos fica sem objeto | **PAUSAR CAMPANHA** (contrato). Família PG vendeu via Geral+oferta (PG2460) | ALTA |
| Extintor Exato Manual | Aposta | 1 / 0,81 / 203,54 / 1 | 81 | 1,4% | 4 cli / 1 compra | Termos rank 1, share 100%, 6–11 impr — lance não é a barreira; TOS +75% vigente (export: 0,75) | MANTER · régua de orçamento não aplicada (gasta 1% do orçamento) | ALTA |
| PI L2030-B-o311/08 | Estrutura O3 | 1 / 0,77 / 0 / 0 | 286 | — (3 cli/0) | 16 cli / 3 compras / R$ 497,34 (alvo B0DZV82N4P) | Vitalício saudável, Era fria | MANTER | ALTA |
| Auto EGC | Radar O4-012 | 1 / 0,73 / 0 / 0 · CTR 0,04% | 2.500 | — (3 cli/0) | 3 cli / 0 (criada 11/08) | **Entrega destravou** (361 → 2.391 impr/30d); CTR 0,13%; único termo com clique = ASIN substitute B0BHXCJD1P; SKU 12 sessões/0 un na Era; Melhor Oferta −10% ativa 08–13/09 | **VIGIA** 1 Era — manter 0,84, gatilho O6 (desvio do contrato comum, decisão LEO) | MÉDIA |
| Bituqueiras Space | Aposta (1ª leitura) | 1 / 0,09 / 0 / 0 | 23 | — (2 cli/0) | 2 cli / 0 | Rank 1, share 100%, TOS IS >95% em 4–7 impr: já ganha o leilão; volume dos termos exatos é baixo (métrica bruta, sem inferir mercado) | MANTER (custo desprezível); reler O6 | ALTA |
| Manual L3070-B | Aposta · controle fixo | 0 / 0 / 0 / 0 | 0 | — (4 cli/0) | 4 cli / 0 | Zero entrega na Era; "lixeira basculante 50 litros" exata: rank 1 mas **share 42%** → há leilões a capturar; margem 24,2% | **Migrar para dinâmicos** (piloto 6B) | MÉDIA |
| Cinzeiros | Aposta · controle fixo | 0 / 0 / 0 / 0 | 0 | — (1 cli/0) | 1 cli / 0 | Share 100% no único termo com impressão (7 impr) — lance não é barreira | MANTER fixo | ALTA |
| Auto SP-01-o116/07 | Reativada O4-R03 | **0 / 0 / 0 / 0** | 0 | — (1 cli, só 11–17/08) | 7 cli / 0 | **Zero impressões desde 17/08**; ASIN B0H5Z1XK3V não aparece no BR da Era (0 sessões) → provável inelegibilidade/supressão recorrente | **INVESTIGAR ENTREGA** (elegibilidade do ASIN) — pedido ao LEO | ALTA (prioridade) |
| PI PXM-o311/08 | Estrutura O3 | 0 / 0 / 0 / 0 | 0 | — (1 cli/0; 638 impr) | 7 cli / 1 compra (20/07) | Sem entrega na Era com lance 1,10 em 52 alvos — lance não parece ser o problema | **INVESTIGAR ENTREGA** (alvos ativos? elegíveis?); sem custo | MÉDIA |

Pausadas condicionais (PI P3050, PI P3060): sem atividade após 25/08 ✅ (Termos/Campanhas 30d encerram em 25/08). Não reabrir antes do lote de página; ambas estão na Relâmpago 9.9 esta semana.

---

## E. Diagnóstico por SKU (Era: BR sessões/un · 30d: Produtos Anunciados · margem Simulador SP Interior v4.3.4)

| SKU (ASIN) | Sessões Era | Un. Era | Ads 30d cli / R$ / compras | Margem | Leitura | Decisão | Conf. |
|---|---:|---:|---|---:|---|---|---|
| L1618-T (B0H3QQLFFY) | 52 | 2 (org.) | 51 / 30,80 / 0 (Geral, 100% substitutes+loose) | 18,4% | Maior tráfego da conta; **converte orgânico** (3,85%); Ads gasta nele sem atribuição | MANTER na Geral; sai da suspeita de "página ruim" | ALTA |
| L2025-T (B0H6C5CTSC) | 47 | 4 (3 Ads) | 72 / 54,14 / 4 | 19,5% | Motor de vendas (Geral + 6B); Melhor Oferta −15% ativa | MANTER | ALTA |
| P3070 (B0H63FKGPJ) | 43 | 1 (org.) | 60 / 58,59 / 0 | 26,0% | 1ª venda desde junho, orgânica; PI 30 cli/0 na Era; Relâmpago −10% esta semana | INVESTIGAR CONVERSÃO — ler 9.9 antes de mexer | MÉDIA |
| **Q2460-B** (B0H7YNMBBK) | **31** | **0** | 53 / 33,35 / 0 (só Geral) | 19,4% | 2º ASIN mais visitado, zero venda real registrada em toda a série; ~8 das 31 sessões vieram de Ads | ver desempate abaixo | MÉDIA |
| P3060 (B0H4NLBG1Y) | 19 | 0 | 18 / 15,13 / 0 | 28,0% | Núcleo A; Relâmpago −14% esta semana | INVESTIGAR CONVERSÃO · candidato a piloto de migração | MÉDIA |
| PXP (B0H4S7ZKXS) | 17 | 1 (org.) | 11 / 6,58 / 0 | 19,8% | BB 88% (única queda relevante); Melhor Oferta −10% | MANTER · conferir BB | MÉDIA |
| SP-PP (B0H5X97DR7) | 16 | 0 | 28 / 27,47 / 0 | 18,4% | Tráfego pago irrelevante ("parede") | ver SP-PP em D | MÉDIA |
| P4080 (B0H63W8G49) | 16 | 0 | 12 / 7,70 / 0 | 25,1% | Relâmpago −10% (2 un) | INVESTIGAR CONVERSÃO · piloto de migração opcional | MÉDIA |
| P3050 (B0H6365DBF) | 13 | 0 | 17 / 9,86 / 0 | 23,7% | Relâmpago −10% | INVESTIGAR CONVERSÃO · candidato a piloto de migração | MÉDIA |
| EGC (B0H4WLDNYD) | 12 | 0 | 4 / 2,64 / 0 | 21,8% | Tráfego novo, sem conversão; Melhor Oferta ativa | ver EGC em D | MÉDIA |
| PG2460 (B0H5MDZQDG) | 7 | 1 (Ads) | 5 / 3,30 / 0 (30d) | 22,6% | Vendeu 07/09 via Geral a R$ 223,88 (Melhor Oferta) | MANTER | ALTA |
| PXM (B0H4S3FHG6) | 4 | 1 (Ads) | 11 / 9,02 / 1 | 21,4% | Extintor manual converte | MANTER | ALTA |
| L2450-AML (B0H62YWD84) | 3 | 3 (org.) | — | 18,5% | 3 un em 3 sessões; margem medida 17% (frete PE real > tabela) | MANTER | ALTA |
| L2030-T (B0H77661G6) | 2 | 1 (Ads) | 3 / 1,19 / 1 | 19,4% | Vendeu em close-match "lixeira banheiro 10 com tampa" | candidato a termo na 6B (ver F) | MÉDIA |

**Q2460-B — desempate (decisão do LEO):**
- Evidência: 31 sessões na Era, ~90+ desde 26/08 somando o monitoramento; 53 cliques Ads/30d; **zero venda em toda a série** (Registro_Vendas e Livro). A P(0 vendas em 53 cliques a 1,72%) ≈ 40% — estatisticamente ainda não é anômalo, mas é o **único** SKU de alto tráfego da conta que nunca converteu (L1618-T e P3070 converteram nesta Era).
- A tensão é menor do que parece: "reduzir foco" não tem custo a cortar — Q2460-B **não tem estrutura própria**, só é coberto pela Geral (R$ 33/30d). E é o SKU onde uma correção de página **pode ser lida** em 1–2 Eras, porque o tráfego já existe (31 sessões/Era contra ~58 esperadas por venda).
- **Recomendação:** manter no Nível 2 (INVESTIGAR CONVERSÃO DO SKU, lote de imagens/infográfico), sem PI própria e sem oferta (margem 19,4% não comporta desconto no piso 15%). Não me apoio na tese "páginas boas" (não documentada); apoio-me no tráfego medido. Confiança MÉDIA.

**Fila Nível 2 (lucro × tráfego) — leitura da Era, sem reordenar:** P3060 (19 sess), P3070 (43 sess, 1 venda), P4080 (16), Q2460-B (31), P3050 (13), L1618-T (52, **2 vendas — sai da fila de diagnóstico**), L2030-B (3). Reordenação fica para depois do 9.9 (4 dos 7 estão em oferta).

---

## F. Termos e alvos

**Vencedores 30d (Termos de Pesquisa 08/08–06/09):**
| Termo | Campanha / segm. | SKU | cli / R$ / compras |
|---|---|---|---|
| lixeira banheiro 7 litros | 6B exata | L2025-T | 3 / 5,19 / 1 (2 un) — **prova o termo na manual** |
| coletor de pilhas usadas | Geral close-match | L2460-CP | 1 / 0,10 / 1 — 2ª venda vitalícia em "coletor de pilhas" (18/06 + 19/08) → **candidato a PROMOVER PARA MANUAL** (exata + frase), margem 22,6% |
| lixeira banheiro 10 com tampa | Geral close-match | L2030-T | 1 / 0,66 / 1 → candidato a exata na 6B (1 venda; MÉDIA) |
| cesto de lixo cozinha inox | Geral loose | L2025-T | 1 / 0,80 / 1 |
| suporte extintor de incêndio | Extintor exata | PXM | 1 / 0,81 / 1 |
| B076VYNP9W (ASIN) | Geral substitutes | L2025-T | 4 / 2,30 / 1 |
| lixeira aco inox quadrada sem tampa | Geral loose | Q2430-A | 1 / 0,55 / 1 (halo 3 un Q3060-A) |

**Revisão (triagem, NÃO negativar):** ASINs em `substitutes` da Geral: B076PN14B6 (10 cli/30d, L1618-T/L2025-T), B0BHMZBZW9 (9 cli, P3050/P3070/Q2460-B — também alvo da PI P3070 com 5 vit.), B076T9QLJS (5). Termos: "lixeira grande" (7), "lixeira inox 50 litros com pedal" (5, P3060). Nenhum ≥15 vitalícios (só tenho termos em 30d). "lixeira brinox" (3 cli) e "lixeira para cozinha tramontina" (1) são buscas por marca concorrente — em revisão, ainda sem volume para negativar.

**Irrelevantes (negativar por irrelevância, qualquer volume):** na auto SP-PP, pós-Era: "saboneteira parede", "suporte planta parede", "mandalas decorativas parede" (loose-match, 1 clique cada). Ficam redundantes se a segmentação loose-match for pausada (G13) — aplicar só se o LEO preferir manter a segmentação.

**Alvos de PI — régua formal (15+ cliques vitalícios sem venda):** nenhum alvo atinge em PI P3070 (97 alvos), L2470-CZ (32), PG3070 (83), PXM-o3 (52), L2030-B-o3 (88), nem nas pausadas P3050 (103) e P3060 (49). A régua fica **aplicada, com resultado nulo** — não bloqueada.

**Geral por segmentação (30d):** close-match 24 cli / R$ 11,95 / 2 compras / R$ 478,81 (ACOS 2,5%) · loose 238 / 156,31 / 3 / 2.007,36 (7,8%; 59% sem halo) · substitutes 167 / 107,60 / 1 / 132,90 (**81%**) · complements 0. Vitalício: close 6,9% · loose 7,6% · substitutes 20,9%.

---

## G. Lista final de alterações sugeridas (aprovar item a item)

| # | Campanha / elemento | Ação | Atual → sugerido | Motivo | Conf. |
|---|---|---|---|---|---|
| G1 | Geral DBA — orçamento | MANTER | R$ 90 → R$ 90 | ACOS 30d 10,5% cairia em +20%, mas a campanha gasta ~10% do orçamento acumulado — orçamento não é restrição (regra consolidada) | ALTA |
| G2 | Geral DBA — segmentação `substitutes` | REDUZIR lance | 0,54 → 0,45 (−17%) | 30d: 167 cli / 1 compra / ACOS 81% (> Emergência) · vitalício 20,9% · 39% do gasto da Geral. Nível segmentação, não campanha (Playbook §16). Não isolável na Era | MÉDIA |
| G3 | Geral DBA — segmentação `close-match` | ESCALAR lance | 0,45 → 0,54 (+20%) | Melhor eficiência (2,5% 30d · 6,9% vit.) com o menor lance da campanha — inversão do funil. Amostra 24 cli/30d | MÉDIA |
| G4 | Geral DBA — lance padrão | Documentar | 0,48 (inerte) | Sem efeito operacional; registrar nos Parâmetros que os lances vigentes são os das 4 segmentações | ALTA |
| G5 | PI L2470-CZ-o425/08 | PAUSAR CAMPANHA | Ativa → Pausada | Contrato O4-004: Era 4 cli/0 venda; vit. 18 cli/0 em 32 alvos | ALTA |
| G6 | PI PG3070-o425/08 | PAUSAR CAMPANHA | Ativa → Pausada | Contrato O4-005: Era 1 cli; vit. 8 cli/0 em 83 alvos | ALTA |
| G7 | Auto PXM-o425/08 | PAUSAR CAMPANHA | Ativa → Pausada | Contrato O4-010: Era 2 cli/0; redundante com Extintor (vendeu), PI PXM-o3, auto PXP-o3. Corrigir texto da O4-010 ("porta-guarda-chuva" → "suporte de extintor") | ALTA |
| G8 | Auto EGC | VIGIA (prorrogar 1 Era) | lance 0,84 mantido; gatilho O6: 0 vendas E CTR < 0,3% → pausar | Radar cumpriu entrega (361 → 2.391 impr/30d); problema virou CTR (0,13%); nicho de busca rara (Playbook §31); Melhor Oferta −10% ativa = teste de conversão. **Desvia do contrato comum — decisão do LEO** | MÉDIA |
| G9 | 6B Lixeiras banheiro | MANTER dinâmico | — | Piloto positivo preliminar (cliques/dia ×2, 1ª venda, CPC 1,60) | ALTA |
| G10 | Manual L3070-B | Migrar estratégia | Fixo → Dinâmicos (aumento e redução), mesmos lances 1,20/1,00 | Controle com 0 cli na Era; share 42% em "lixeira basculante 50 litros" (rank 1) = há leilões a capturar; margem 24,2% | MÉDIA |
| G11 | Cinzeiros · Bituqueiras · Extintor | MANTER fixo | — | Share 100% nos termos com impressão: lance não é a barreira; Extintor converte (1,4%) e TOS +75% está vigente | ALTA |
| G12 | Extintor — orçamento | MANTER | R$ 8 | Gasta R$ 2,86/30d — régua não aplicável | ALTA |
| G13 | Auto SP-PP-o425/08 — segmentação `loose-match` | PAUSAR ALVO (segmentação) + VIGIA da campanha | loose ativa → pausada; gatilho O6: 0 cliques relevantes → PAUSAR CAMPANHA | CTR pós-limpeza segue ~0,06%; termos da Era vêm da loose e são "parede" irrelevante; vit. 26 cli/0 | MÉDIA |
| G14 | PI P3070-o228/07 | MANTER congelada | gatilho O6: sem venda atribuída pós-Relâmpago E ≥15 cli na Era O5→O6 → REDUZIR lances −20% nos asin-expanded | 16% do gasto da Era sem atribuição; SKU converteu orgânico; oferta em curso é o teste. Alvo B09YDLC69D (12 vit.) em revisão, não pausa | MÉDIA |
| G15 | PI PXM-o311/08 | INVESTIGAR ENTREGA | — | 0 impr na Era com lance 1,10 em 52 alvos; conferir no console se alvos estão ativos/elegíveis | MÉDIA |
| G16 | PI L2030-B-o3 · Auto PXP-o3 | MANTER | — | Vitalício saudável (3 compras cada), Era fria | ALTA |
| G17 | Auto SP-01-o116/07 / ASIN B0H5Z1XK3V | INVESTIGAR ENTREGA (elegibilidade) | — | 0 impr desde 17/08; 0 sessões no BR da Era. Pedido ao LEO: status do ASIN no Seller Central. Se inelegível: pausar com registro de reativação (não é falha de desempenho) | ALTA |
| G18 | Termo "coletor de pilhas" (L2460-CP) | PROMOVER PARA MANUAL (nova estrutura ou grupo) | exata + frase; lances a definir na criação | 2 vendas vitalícias em close-match; margem 22,6% | MÉDIA |
| G19 | Termo "lixeira banheiro 10 com tampa" (L2030-T) | Candidato a exata na 6B | — | 1 venda em close-match; mesma família da 6B | MÉDIA |
| G20 | Q2460-B — desempate | INVESTIGAR CONVERSÃO DO SKU (manter no Nível 2) | sem PI, sem oferta | Ver E | MÉDIA |
| G21 | Migração de ASIN — piloto O6 | Propor P3060 + P3050 (P4080 opcional) | condicionado a GS1 + O6 | Núcleo A, tráfego mensurável (13–19 sess/Era), sem venda orgânica recente a arriscar; A+ é a alavanca. Fora do piloto: L2025-T e L1618-T (vendem orgânico), P3070 (PI ativa + acabou de converter) | MÉDIA |
| G22 | `Registro_Vendas` — linha 07/09 PG2460 | CORRIGIR preço praticado | 248,75 → 223,88 | Guia da Mestra: preço efetivamente praticado; BR e atribuição fecham só com 223,88 | ALTA |
| G23 | Docs — Parâmetros/Contexto | Corrigir | "15 ativas" → 16; lances por segmentação da Geral; O4-010 texto; nota sobre atribuição de Melhor Oferta (inferência a confirmar 14/09) | ALTA |

Todas as ações de lance: estratégia da Geral = dinâmicos aumento e redução (export); L3070-B = fixo (export). Confirmadas no export de 08/09.

---

## H. Ações que NÃO devem ser feitas agora

- Não aplicar +20% de orçamento na Geral (régua 30d) — não consome o atual.
- Não pausar nem reduzir a Geral por ACOS de Era 21,7% (Geral nunca é pausada como comum; 30d abaixo do Máximo).
- Não pausar a PI P3070 — 0 alvos na régua formal; SKU acabou de converter; oferta em curso.
- Não negativar ASINs/termos por sinal de triagem (B076PN14B6, B0BHMZBZW9, "lixeira grande", "lixeira brinox").
- Não migrar Cinzeiros/Bituqueiras/Extintor para dinâmicos — share já 100%.
- Não reativar PI P3050/P3060 antes do lote de página (Relâmpago em curso não é correção de página).
- Não recalibrar réguas com dados do 9.9 (14/09) — atribuição a preço de oferta/tabela conforme o mecanismo.
- Não recalcular margens do Simulador sobre frete real dentro da O5 — é alteração da Mestra (decisão LEO/Dianna); as 9 novas observações da Era (Qtd=1, frete real/tabela entre 46% e 100%, mediana ~63%) reforçam o achado, mas não autorizam mudança de critério de promoção.
- Não tratar a Era pré-9.9 e pós-9.9 do P3070/P3060/P3050/P4080 como série contínua.
- Não usar TOS IS / share 100% dos termos de Bituqueiras e Extintor para inferir volume de mercado.

---

## I. Dados que faltam (pedidos ao LEO)

1. **Gasto de setembro no console** (01–07/09) para o controle do teto — o 30d não isola o mês.
2. **Lances por segmentação da Geral antes de 25/08** (o que a O4-015 alterou de fato: só o campo padrão ou as 4 linhas?). Sem isso, o "efeito da Geral a 0,48" não é atribuível.
3. **Status do ASIN B0H5Z1XK3V (SP-01)** no Seller Central — elegibilidade/supressão.
4. **Registro da revisão Nível 1 (27–28/08)** — sem ele, a tese "páginas boas" permanece hipótese.
5. **Dia em que cada Relâmpago rodou/vai rodar** dentro de 07–13/09 — necessário para a leitura de 14/09.
6. **BR por data (diário) da Era** — para separar os 5 dias mortos.
7. **Status GS1** — gate do piloto de migração.
8. Termos de Pesquisa em janela vitalícia — só assim a régua de 15+ vale para termos (hoje só 30d).

---

## (b) Avaliação das entradas EM MATURAÇÃO — propostas de texto (quem lança é o LEO)

| ID | Resultado pós-alteração (proposta) | Veredito posterior (proposta) |
|---|---|---|
| O4-R01 PI SP-01 pausa | Sem atividade desde 17/08; ASIN sem impressões e sem sessões na Era | MANTIDA — inelegibilidade persiste; reativar só com ASIN elegível |
| O4-R02 Auto SP-01 pausa prev. | Superada pela O4-R03 | ENCERRADA (superada) |
| O4-R03 Auto SP-01 reativação | Reativada, mas **0 impressões de 18/08 a 07/09** (30d: 172 impr/1 cli, só 11–17/08) | NÃO AVALIÁVEL em desempenho — entrega zero; investigar elegibilidade (G17) |
| O4-R04 Extintor TOS +75% | Export 08/09: ajuste 0,75 vigente; Era 1 cli/1 venda (R$ 203,54); 30d ACOS 1,4%; termos rank 1 share 100% | POSITIVO — conserto vigorou; demanda dos termos exatos é baixa (métrica bruta) |
| O4-001 SP-PP substitutes pausada | Termos "parede" via substitutes datam ≤25/08; Era só loose-match | EXECUTADA E EFETIVA na segmentação; CTR da campanha segue ~0,06% (loose) → G13 |
| O4-002 SP-PP 18 negativas | Nenhum dos termos negativados reaparece na Era | EFETIVA |
| O4-003 PI P3050 pausa | Sem atividade após 25/08; SKU 13 sessões/0 un na Era; Relâmpago −10% em curso | MANTIDA — retorno condicionado ao lote de página |
| O4-004 PI L2470-CZ radar +20% | Era 4 cli / R$ 2,51 / 0 vendas / ~770 impr; vit. 18 cli/0 | NEGATIVO — sem amostra; contrato de saída acionado (G5) |
| O4-005 PI PG3070 radar +20% | Era 1 cli / R$ 0,99 / 0; vit. 8 cli/0 | NEGATIVO — contrato acionado (G6) |
| O4-006 Auto L1618-o115 pausa | Não vigorou; executada em 31/08 (EC-002) | SUPERADA por EC-002 |
| O4-007 Auto PG3070-o115 pausa | Sem atividade após 25/08 | EFETIVA |
| O4-008 PI P3060 pausa | Sem atividade após 25/08; SKU 19 sess/0 un | MANTIDA |
| O4-009 PI PXP-o103 pausa | Sem atividade após 25/08 | EFETIVA |
| O4-010 Auto PXM-o2 radar formal | Era 2 cli / R$ 2,02 / 0 | NEGATIVO — contrato acionado (G7); corrigir texto do motivo |
| O4-011 Geral orçamento mantido | Gasto Era R$ 137,16 em 13 dias (R$ 10,55/dia vs R$ 90) | CONFIRMADA — orçamento segue sem ser restrição |
| O4-012 EGC lance 0,84 | Impr 361 → 2.391 (30d); Era ~2.500 impr / 1 cli / 0 venda; CTR 0,13% | PARCIAL — entrega destravou, conversão não; ver G8 |
| O4-013 Manuais manter | 6B vendeu; L3070-B, Cinzeiros 0 cli na Era; Bituqueiras 1 cli | CONFIRMADA; ajustes em G10/G11 |
| O4-014 6B piloto dinâmico | Pré-Era 6 cli/15d, 0 venda → Era 11 cli/13d, 1 venda (R$ 265,80), CPC 1,33 → 1,60; controles fixos 0–1 cli na Era | POSITIVO PRELIMINAR (n=1 venda) — manter; estender à L3070-B (G10) |
| O4-015 Geral lance padrão 0,48 | Lance padrão **não é usado** (4 segmentações com lance próprio 0,45/0,45/0,54/0,54). Geral na Era: cli/dia +22%, CPC +11% vs pré-Era — sem atribuição possível à O4-015 | NÃO AVALIÁVEL como alteração (inerte); pedir lances anteriores (I.2) |
| EC-001 SP-T na promo 5+ | Sem venda de SP-T na Era | SEM EFEITO ISOLÁVEL (esperado) |
| EC-002 Auto L1618 pausa | Última atividade 31/08; ausente na Era após | EFETIVA |
| EC-003 11 Melhores Ofertas | Janela pós começa 08/09 (só PG2460 07/09: 1 venda a R$ 223,88 via Geral) | NÃO AVALIÁVEL até 14/09 |
| EC-004 5 Relâmpago | Dia(s) de execução ainda dentro da semana | NÃO AVALIÁVEL até 14/09 |
