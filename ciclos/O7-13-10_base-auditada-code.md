# O7 — 13/10/2026 — Base auditada (Code) · PARCIAL

**Modo B.** Era O6→O7: **23/09–12/10** (20 corridos, 13 úteis). Leitura em dois blocos: pré-evento 23/09–04/10 · evento 05–11/10 (+12/10 feriado no export). Este arquivo é a base conferida; **nenhum diagnóstico ainda** — faltam Segmentação 30d, Termos 30d, Produtos Anunciados 30d, vitalício da PI L2030-B e o Registro (LEO).

## Recebido em 13/10 (`relatorios/amazon/o7-13-10/`)

| Arquivo | Período | Conferência |
|---|---|---|
| `gerenciador_era_23-09_12-10.csv` | 23/09–12/10 | 80 campanhas (10 ativas / 70 pausadas). Soma das 3 semanas já lidas (22–28/09 parcial + 29/09–05/10 + 06–12/10) é compatível |
| `business-report_por-asin_bloco1_23-09_04-10.csv` | 23/09–04/10 | 76 ASINs · 446 sessões · 17 un · R$ 5.321,68 |
| `business-report_por-asin_bloco2_05-10_11-10.csv` | 05–11/10 | 70 ASINs · 454 sessões · **20 un = 20 un do Registro_Vendas** · R$ 3.137,99 |
| `pi_P3070_vitalicio_por_alvo.csv` | vitalício | 97 alvos · 229 cli · R$ 278,48 · 3 compras |
| `pi_PXM_vitalicio_por_alvo.csv` | vitalício | 58 alvos · 12 cli · R$ 8,65 · 3 compras |
| prints do painel de promoções | evento + acumulado | ver §3 |

## 1. Era — por campanha (export)

| Campanha | Orç./dia | Cli | Custo | Compras | Vendas | ACOS |
|---|---:|---:|---:|---:|---:|---:|
| Geral DBA-o59/09 | 90 | 347 | 228,45 | 15 | 5.133,44 | 4,5% |
| PI P3070-o228/07 | 20 | 70 | 89,35 | 1 | 616,18 | 14,5% |
| PI PXM-o311/08 | 40 | 3 | 2,09 | 1 | 610,62 | 0,3% |
| auto PXP-o311/08 | 40 | 7 | 6,62 | 0 | 0 | — |
| PI L2030-B-o311/08 | 40 | 2 | 1,76 | 0 | 0 | — |
| Lixeiras banheiro (manual) | 5 | 12 | 12,67 | 0 | 0 | — |
| Extintor Exato · L3070-B · Bituqueiras · Cinzeiros | 8·5·6·5 | 1·2·1·0 | 0,72·2,44·1,09·0 | 0 | 0 | — |
| **Total** | | **445** | **345,19** | **17** | **6.360,24** | **5,4%** |

Impressões não vêm no export (só no console). Vendas reconstruídas por custo × ROAS.

## 2. Business Report — dois blocos

| | Bloco 1 (23/09–04/10, 12 dias) | Bloco 2 (05–11/10, 7 dias) |
|---|---:|---:|
| Sessões | 446 (37/dia) | 454 (65/dia) |
| Unidades | 17 | 20 |
| Vendas (painel) | R$ 5.321,68 | R$ 3.137,99 |
| SKUs com venda | 10 | 8 |

**Bloco 2, tráfego:** P3070 **108 sessões (23,8% do catálogo)** com a Melhor Oferta a 15% → **1 un a R$ 523,75** (0,9%). L2025-T 49 sessões → 8 un. P4080 21 sessões → 0 (desconto comum no ar). PXP 15 → 0. P3060 12 → 0. **Os 14 SKUs promovidos somaram 1 venda no bloco do evento (P3070, a preço de oferta).**

⚠️ **Correção na Mestra (LEO):** o P3070 de 11/10 está no Registro_Vendas (linha 89) a **R$ 616,18**; BR e painel da Melhor Oferta registram **R$ 523,75** (1 un vendida na oferta, exclusiva Prime). A linha 89 precisa de preço 523,75 (ou 616,18 com desconto 92,43 na coluna F) e Origem **Orgânico** (a PI P3070 teve 0 compras em 06–12/10). A leitura anterior "preço cheio para não-Prime" estava errada — era venda da oferta.

## 3. Promoções do evento (painel, 13/10)

| Item | Visualizações | Un | Vendas | Conversão |
|---|---:|---:|---:|---:|
| Melhor Oferta P3070 (15%, Prime) | 124 | 1 | 523,75 | 0,8% |
| Melhor Oferta PXP (10%, Prime) | 23 | 0 | 0 | 0 |
| PRECOPRIMEALTERNATIVO (12 SKUs, 10%, todos) | 108 | 0 | 0 | 0 |
| *Referência: TESTEDESCONTONOPRECO 21–27/09 (10 SKUs, 5–10%)* | 206 | 7 | 1.187,20 | 3,4% |

Promoções de quantidade (acumulado desde a criação): **VOL Nichos B2B 3un 5%** — R$ 9.343,77 · 28 un · 8 clientes · orçamento usado R$ 491,78 (49%) · **WN 5un 8% P-M** — R$ 588,34 · 5 un · 1 cliente (o L2025-A de 11/10).

## 4. PI — vitalício por alvo (régua: 15+ cliques sem venda = pode pausar o ALVO; 5+ = revisão)

**PI P3070** (97 alvos · 229 cli · 3 compras, todas em `asin-expanded`: B0G9B9RCMF 2 cli · B0H63FKGPJ próprio 4 cli · B0CTMZHJFJ 3 cli):

| Alvo | Cli | Custo | Compras | Régua |
|---|---:|---:|---:|---|
| `asin="B0CYWMQ93Y"` (exato, lance 0,90) | **18** | 17,10 | 0 | **≥15 sem venda** |
| `asin-expanded="B09YDLC69D"` | 16 | 21,64 | 0 | já pausado (O6-003) |
| `asin-expanded="B0BHMZBZW9"` | **14** | 16,38 | 0 | revisão — é o mesmo ASIN do vigia O6-019 (termo na Geral) |
| `asin-expanded="B0F4T8FCDD"` | 11 | 13,75 | 0 | revisão |
| `asin-expanded="B0BSNVT11K"` | 8 | 12,10 | 0 | revisão |
| B0778TD2LY 7 · B0C5N9HQJM 7 · `asin="B09YDKHT3H"` 7 · B0CXTQT2L3 5 · B07J2MT48B 5 | | | 0 | revisão |

**PI PXM** (58 alvos · 12 cli · 3 compras: B0D7JSB8B6 1 cli → 610,62 · B0H4S7ZKXS 1 cli → 519,03 · B089QWJFTH 2 cli → 203,54). Nenhum alvo com 5+ cliques sem venda.

## 5. Origem pendente no Registro_Vendas
Linha 81 (05/10 L1623-T) = **Ads** (Geral, semana 29/09–05/10) · linha 82 (05/10 L2025-T ×2) = **Orgânico** (não está entre as 4 compras da Geral daquela semana) · linha 89 (P3070 11/10) = **Orgânico** + preço 523,75.

## Falta para fechar a O7
Segmentação 30d · Termos de Pesquisa 30d · Produtos Anunciados 30d · vitalício por alvo da PI L2030-B · Registro de Alterações atual.
