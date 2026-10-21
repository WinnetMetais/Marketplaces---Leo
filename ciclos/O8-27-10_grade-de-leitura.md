# O8 — 27/10/2026 — grade de leitura (preparada em 21/10)

**Era O7→O8:** 14 a 26/10 (13 corridos). Janela de réguas: 30 dias (27/09–26/10). Réguas vigentes: Objetivo 12,5% · Máximo 25% · Emergência 50% — **recalcular pela margem 30d da Mestra antes de ler** (Parâmetros §1). Regra "< R$ 5 → +20%" ativa. Vitalício por alvo nas PIs e por palavra nas manuais.

## 1. Pacote de dados (o que o LEO manda em 27/10)
| # | Arquivo | Para quê |
|---|---|---|
| 1 | Export do Gerenciador, Era 14–26/10 | D (campanhas), C (Ads × total), conferência dos lances pós-O7 |
| 2 | Print do console, Era 14–26/10 (impressões) | o export não traz impressões |
| 3 | Relatórios 30d (27/09–26/10): Campanhas · Segmentação · Termos · Produtos Anunciados · Posicionamento · Parcela de impressões | réguas e regra "< R$ 5" por segmento |
| 4 | Vitalício por alvo: PI P3070 · PI PXM · PI L2030-B | régua de 15 cliques por alvo |
| 5 | Vitalício por palavra: 6B · L3070-B · Extintor · Cinzeiros · Bituqueiras | efeito dos +20% (O7-010 a O7-014) |
| 6 | Business Report por ASIN, 14–26/10 | sessões por SKU; Ads × total |
| 7 | Mestra atualizada | Origem das linhas 95–98 e novas; margem 30d para as réguas |
| 8 | Registro (versão do Code, já no repo) | vereditos O7-001…018 e EC-021 |

## 2. Contratos a ler, ação por ação
| Linha | O que mudou em 13/10 | Pergunta da O8 | Gatilho / leitura |
|---|---|---|---|
| O7-001 | Geral close 0,54 → 0,65 | ACOS da segmentação na Era e nos 30d; cliques e CPC | ACOS > 25% → voltar a 0,54. Entre 12,5 e 25% → manter. < 12,5% com conversão ≥ 3% → candidato a +20% de novo |
| O7-002 | Geral substitutes 0,45 → 0,54 | idem | idem |
| O7-003 | alvo B0CYWMQ93Y pausado (PI P3070) | só conferir que segue pausado | — |
| O7-004 | ASIN B076VYNP9W negativado na Geral | termos: sumiu do relatório? custo liberado foi para onde? | — |
| O7-005 | frase "dourada" negativada | idem | — |
| O7-006 | 6B e L3070-B em lances fixos | CPC médio das duas contra a Era anterior (1,32 / 1,22) | informativo; piloto encerrado |
| O7-007 | exata "lixo banheiro" 0,80 na 6B | impressões, cliques, venda | 15 cli / 0 → diagnóstico; venda → promover frase |
| O7-008/009 | PI PXM 1,32 / 1,08 | impressões e cliques da campanha (era 1.015 impr/30d) | Radar: entrega subiu? se < R$ 5 de novo → +20% de novo |
| O7-010 | Extintor 3,12 | impressões/cliques da exata (era 143 impr/30d, TOS 76–80%) | se impressões não subirem, alavanca não é lance (CORRIGIR CTR / termo) |
| O7-011 | Cinzeiros 1,92 | idem (era 258 impr / 1 cli) | idem |
| O7-012 | Bituqueiras 1,44 | idem (era 17 impr) | idem; conferir caso 21652133321 |
| O7-013 | L3070-B 1,44 | idem (era 460 impr / 2 cli) | idem |
| O7-014 | 6B "7 litros" 1,80 | CTR (era 0,08% vitalício; 0,6% na 1ª semana) e cliques | CTR < 0,3% com impressões altas → CORRIGIR CTR, não lance |
| O7-015 | PXP substitutes 1,58 | cliques/venda; checkpoint 15 cli/30d (estava 10) | 15/0 → diagnóstico de conversão do PXP antes de qualquer aumento |
| O7-016/017 | orçamentos PXM 80 / P3070 24 | consumo (%) | informativo; não é alavanca |
| O7-018 | réguas calculadas | recalcular com margem 27/09–26/10 | atualizar Parâmetros §1 |
| EC-021 | exata "pia de cozinha" pausada (6B) | a Geral continua recebendo o termo? custo/cliques | se Geral 15+/0 → negativar frase na Geral |

## 3. Vigias herdadas
- `B0BHMZBZW9`: PI P3070 14/15 vitalício · Geral 5/15 (30d) — dispara com 1 clique na PI.
- `B0F4T8FCDD` 11 · `B0BSNVT11K` 8 · `B0778TD2LY` 8 · `B0C5N9HQJM` 8 · `asin="B09YDKHT3H"` 8 · `asin="B0CYY5P6MR"` 6 — triagem.
- auto PXP: checkpoint 15 cli/30d.
- L2025-A promo de quantidade (margem 14,4% com frete RS).
- Q2460-B, L1618-T, L1618-B: fila de página (prints pendentes).
- Checkpoint 22/10 (Geral ≥ 150 cli e ≤ 1 compra desde 13/10 → reverter O7-001/002) — resultado entra aqui.

## 4. Origem na Mestra (pendente)
Linhas 95 (L1618-T 19/10) · 96 (L1618-A 19/10) · 97 (P3050 19/10) · 98 (P3070 21/10): decidir com o export da Era + vitalício das PIs (P3070: se passar de 3 compras, uma das vendas foi Ads).

## 5. Black Friday (paralelo à O8)
Estado em 21/10: janela aberta (19–30/11), 3 SKUs candidatos (P3070, P3060, P4080), inscrição aguardando o marketing (percentual, período, promo de quantidade). Se já estiver decidido até 27/10, conferir a inscrição no painel de Ofertas e registrar como EC.
