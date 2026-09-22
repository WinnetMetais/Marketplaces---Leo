# O6 — 22/09/2026 · BASE AUDITADA (Claude Code)

Conferência dos relatórios brutos **antes** do diagnóstico do chat canônico. O canônico analisa e roda a O6; este arquivo é o que a auditoria vai usar para reconferir número por número.

## Relatórios recebidos (`relatorios/amazon/o6-22-09/`)

| Arquivo | Janela | Uso |
|---|---|---|
| `gerenciador_era_10-21-09.csv` | 10–21/09 (Era) | 80 campanhas, 12 ativas / 68 pausadas. **Coluna Vendas vazia** — vendas por `Custo × ROAS` |
| `ads_30d_campanhas.csv` | 22/08–20/09 | por campanha, com Vendas |
| `ads_30d_segmentacao.csv` | 22/08–20/09, **janela por linha** (165 janelas distintas) | por segmentação/alvo, com Vendas — **agregar por chave** |
| `ads_30d_termos-de-pesquisa.csv` | idem, janela por linha (492 linhas) | **agregar por termo** (erro C2 da O5) |
| `ads_30d_produtos-anunciados.csv` | 22/08–20/09 | SKU anunciado × campanha |
| `ads_30d_posicionamento.csv` | 22/08–20/09 | não pedido; sem uso na pauta |
| `vitalicio_alvos_PI-P3070.csv` · `…PI-PXM.csv` · `…PI-L2030-B.csv` | vitalício | régua de alvo (15+ cliques sem venda) |
| `business-report_por-asin_10-20-09.csv` | 10–20/09, puxado em 22/09 (D+2) | bloco C |

## Era 10–21/09 — export do Gerenciador (vendas via ROAS)

| Campanha | Cliques | Custo | Compras | Vendas | ACOS |
|---|---:|---:|---:|---:|---:|
| Geral DBA-o59/09 | 122 | 75,51 | 2 | 531,25 | 14,2% |
| PI P3070-o228/07 | 52 | 71,10 | 1 | 616,18 | 11,5% |
| 6B (Lixeiras banheiro) | 7 | 13,59 | 0 | 0 | — |
| Auto EGC | 10 | 7,58 | 0 | 0 | — · CTR 0,17% |
| Auto PXP-o311/08 | 7 | 5,51 | 0 | 0 | — |
| PI L2030-B-o311/08 | 5 | 3,29 | 0 | 0 | — |
| Cinzeiros | 1 | 1,56 | 0 | 0 | — |
| PI PXM-o311/08 | 2 | 1,06 | 1 | 519,03 | 0,2% |
| Extintor · L3070-B · Bituqueiras · **SP-PP** | **0** | 0 | 0 | 0 | — |
| **Total** | **206** | **179,20** | **4** | **1.666,46** | **10,8%** |

Composição das 4 compras, conferida com a Mestra: Geral = L2025-T 132,90 (15/09) + L2470-B 398,35 (12/09) · PI P3070 = 616,18 (15/09) · PI PXM = 519,03 (13/09).

⚠️ **Atribuição a produto anunciado ≠ produto comprado:** o relatório de Produtos Anunciados credita os R$ 398,35 ao **L2460-B** (anúncio clicado, 2 cliques); a Mestra e o BR registram a compra como **L2470-B**. Não é divergência de fonte — é como a Amazon atribui.

## Bloco C — Business Report 10–20/09 × Mestra

BR: **487 sessões · 13 unidades · 8 itens de pedido · R$ 2.573,86**. Mestra 10–20/09: 8 linhas · 13 unidades · **R$ 2.553,92**. **Diferença R$ 19,94 = exatamente o desconto da promoção de quantidade do pedido de 20/09** (3× L2025-T): o BR registra a promo de quantidade **a preço de tabela** (398,70), a Mestra a receita líquida (378,76). Bijeção fechada ao centavo. A regra D+2 funcionou — o pedido de 20/09 está no relatório.

Participação de Ads (vendas atribuídas ÷ BR): 1.666,46 ÷ 2.573,86 = **64,7%** — 4 de 8 pedidos. Janela curta; não é tendência.

## Geral por segmentação — 30d (22/08–20/09)

As linhas da Geral vêm com a janela inteira (não separam pré/pós-O5). Leitura de 30 dias, não de Era.

| Segmentação | Lance | Impr. | Cliques | Custo | Vendas | Compras | ACOS |
|---|---:|---:|---:|---:|---:|---:|---:|
| close-match | 0,54 (↑ O5-002) | 8.077 | 47 | 28,05 | 765,36 | 3 | **3,7%** |
| loose-match | 0,54 | 31.586 | 237 | **161,97** | 265,80 | 2 | **60,9%** |
| substitutes | 0,45 (↓ O5-001) | 25.218 | 148 | 96,11 | 265,80 | 2 | 36,2% |
| complements | 0,45 | 5 | 0 | 0 | 0 | 0 | — |

Soma = 432 cli · 286,13 · 7 compras · 1.296,96 — bate com o relatório de Campanhas.

**Sinal:** `loose-match` consome **57% do custo da Geral a ACOS 61%**; `close-match` faz 59% das vendas com 10% do custo. A O5 mexeu em close (↑) e substitutes (↓); loose ficou em 0,54 e é o maior dreno. Leitura para o canônico, não decisão.

## PI P3070 — o alvo que converteu

**`asin-expanded="B0H63FKGPJ"` — o próprio ASIN do P3070.** No relatório de Segmentação 30d, é o único alvo da PI com compra: 165 impr · 2 cliques · R$ 3,32 · **R$ 616,18**. No vitalício, dois alvos têm 1 compra de 616,18 cada: `B0G9B9RCMF` (0 cliques nos 30d → é a venda de 21/06) e `B0H63FKGPJ` (a de 15/09).

**Correção:** em 15/09 o LEO disse "B0H63FKGPJ foi desse aqui" e eu respondi que era a dimensão de produto anunciado, não o alvo. **O LEO estava certo** — o alvo é B0H63FKGPJ. A PI está apontada para a própria página do P3070 (auto-segmentação), e a venda veio de lá.

**Régua de alvo (vitalício):**

| Alvo | Cliques vit. | Custo vit. | Compras | 30d |
|---|---:|---:|---:|---|
| **`B09YDLC69D`** | **16** | 21,64 | **0** | 10 cli / 14,64 — **cruzou os 15 sem venda** |
| `B0CYWMQ93Y` (asin=) | 11 | 10,00 | 0 | 7 cli / 5,43 |
| `B0BHMZBZW9` | 7 | 7,57 | 0 | 3 cli |
| `B0778TD2LY` | 5 | 4,76 | 0 | 2 cli |
| `B0F4T8FCDD` | 5 | 6,31 | 0 | — |
| `B0BSNVT11K` | 5 | 7,41 | 0 | — |

Primeiro alvo da conta a cruzar a régua formal com dado vitalício. **Régua de PI é no alvo — nunca vira pausa de campanha.**

**PI PXM:** a venda de 519,03 veio do alvo `asin-expanded="B0H4S7ZKXS"` — **a página do PXP, da própria Winnet** (upsell 4 kg → 6 kg). Mesmo padrão de auto-segmentação.

## Gatilhos da O5 — estado do dado

| Estrutura | Gatilho | Dado da Era | Estado |
|---|---|---|---|
| Auto EGC | 0 vendas **E** CTR < 0,3% → pausar | 10 cli · 0 vendas · CTR 0,17% (30d: 11 cli, 8.534 impr, CTR 0,13%) | **condições satisfeitas** |
| Auto SP-PP-o59/09 | 0 cliques relevantes → pausar | **0 cliques na Era** (30d: só close e complements ativas, 0 cliques) | **condição satisfeita** |
| PI P3070 (O5-011) | sem venda atribuída E ≥15 cli → −20% | 52 cli · **1 venda** | **desarmado** (já registrado) |

**Verificação do O5-010 (SP-PP):** `loose-match` e `substitutes` só têm linhas com janela terminando **antes de 10/09** — estão pausadas e sem atividade na Era. A correção de 09/09 vigorou.

## Outras compras nos 30d (fora da Geral e do P3070)

Auto PXP `substitutes` 151,10 · 6B termo "lixeira banheiro 7 litros" 265,80 (2 un de L2025-T) · Extintor "suporte para extintor de incêndio" 203,54 · PI PXM 519,03.

## Limitações declaradas

1. Segmentação e Termos vêm com janela por linha — qualquer leitura de Era exige filtro por data; para a Geral, as linhas cobrem o mês inteiro e **não separam pré/pós-O5**.
2. Export da Era sem coluna Vendas — reconstrução via ROAS, conferida contra a Mestra.
3. O dia 21/09 não está no BR (regra D+2) — fecha pela Mestra, que não tem venda em 21/09.
4. Desconto no preço ativo desde 21/09 00:00 — **um dia da Era**; regra de atribuição desconhecida; nenhuma venda com ele ainda.
