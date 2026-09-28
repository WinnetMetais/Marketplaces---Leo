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

**Composição das 2 compras da Geral (inferência aritmética, única combinação possível):** R$ 690,28 = **3 × PXM a 193,36 + 1 × L1618-T a 110,20** — ambos a **preço com desconto**. → **Regra de atribuição do desconto no preço: o Ads valoriza ao preço com desconto** (igual à Melhor Oferta; diferente da promoção de quantidade, valorizada a preço de tabela). **Pendente de confirmação pela Mestra** (pedido de 3 PXM + pedido de 1 L1618-T).

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

## Vigias com prazo hoje

| Vigia | Condição | Dado | Resultado |
|---|---|---|---|
| O6-006 — Q2460-B na Geral | 0 venda na semana de desconto → pausar o anúncio do SKU dentro da Geral | 9 sessões · 12 pv · 0 un (BR); 12 visualizações · 0 (painel) | **DISPAROU → PAUSAR o anúncio do Q2460-B na Geral** (nível produto). Ressalva já registrada: rodou sem preço riscado — o teste discriminante preço × página ficou enfraquecido; a pausa vale pela régua, não fecha a hipótese de preço |
| O6-004 — PI P3070 | 0 venda **E** ≥15 cli na Era → −20% | 13 cli · R$ 14,38 · 0 na semana (Era desde 23/09) | ainda não (13 < 15); ler na O7 |
| O6-011/012/014/015/016 — Prime Day | reconferir lista em 28/09 | **lista não recebida** | pendente |

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
5. Não fechar a regra de atribuição do desconto no preço antes da Mestra confirmar a composição dos pedidos.

## I. Dados que faltam
Print do console com impressões (linha 14 do Controle) · lista do Prime Day de hoje · Mestra com as vendas de 22–28/09 (PXM 3 + 2, L1618-T 2, EGC 1).
