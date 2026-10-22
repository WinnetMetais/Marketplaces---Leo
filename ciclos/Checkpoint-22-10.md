# Checkpoint da Geral — 22/10/2026 (13/10 → 22/10, 10 dias pós-O7)

**Gatilho combinado em 19/10:** Geral com **≥ 150 cliques e ≤ 1 compra** no período → recomendar reverter O7-001 (close 0,65 → 0,54) e O7-002 (substitutes 0,54 → 0,45) como EC, sem esperar a O8.
**Resultado: 127 cliques · 3 compras → gatilho NÃO disparou.** Nenhuma alteração. O7-001 e O7-002 seguem em maturação até a O8 (27/10).

Fontes: `relatorios/amazon/checkpoint-22-10/` — export de campanhas, export de segmentação da Geral e print do gráfico diário, todos com período 13–22/10 (exportados em 22/10; atribuição dos últimos dias ainda pode crescer).

## A. Geral DBA, 13–22/10
| Métrica | 13–19/10 (monitoramento) | 13–22/10 (hoje) | 20–22/10 (diferença) |
|---|---:|---:|---:|
| Impressões | 25.000* | 24.627 | — |
| Cliques | 106 | 127 | 21 |
| Custo | R$ 76,61 | R$ 91,03 | R$ 14,42 |
| Compras | 1 | **3** | 2 (uma delas é de 19/10, atribuída depois) |
| Vendas | R$ 129,90 | **R$ 1.108,99** | R$ 979,09 |
| ACOS | 59% | **8,2%** | — |
| CPC | 0,72 | 0,72 | — |
*impressões de 19/10 eram da conta inteira; a Geral tinha 24,1 mil.

**Leitura:** a semana 13–19/10 foi atípica (1 venda em 106 cliques) e a atribuição completou depois: a venda de 19/10 (R$ 467,67) entrou após o export de 19/10. Em 10 dias a Geral fechou com **ACOS 8,2%, abaixo do Objetivo (12,5%)**, CPC 0,72 (+12% contra os 0,64 dos 30d anteriores, coerente com os +20% em close e substitutes). A conversão de 10 dias é 2,4% (3 em 127), contra 4,3% na Era: menor, mas dentro do que 127 cliques comportam.

## B. Segmentações da Geral, 13–22/10
| Segmentação | Lance | Impr. | Cliques | Custo | Compras | Vendas | ACOS | Leitura |
|---|---:|---:|---:|---:|---:|---:|---:|---|
| close-match | **0,65** (O7-001) | 15.195 | 59 | 48,01 | 1 | 511,42 | 9,4% | venda de 22/10 = **P3060** (valor bate com a Mestra, linha 100). Entrega 62% das impressões |
| substitutes | **0,54** (O7-002) | 6.604 | 45 | 29,01 | 0 | 0 | — | **45 cliques sem venda em 10 dias** (checkpoint de 15 aberto como diagnóstico). Vitalício tem vendas (26/09 L1618-T). VIGIA para a O8, não ação |
| loose-match | 0,45 | 2.827 | 23 | 14,01 | 2 | 597,57 | 2,3% | 13/10 **L1618-B** (129,90) + 19/10 **P3050** (467,67 = Mestra linha 97). Melhor ACOS com o menor lance |
| complements | 0,45 | 1 | 0 | 0 | 0 | 0 | — | sem entrega, como sempre |

**O que isso diz sobre a O7-001/002:** o aumento em close pagou (1 venda, ACOS 9,4%); o aumento em substitutes ainda não (45 cliques, R$ 29, zero). Dez dias é pouco para reverter uma segmentação com histórico de venda; a O8 lê com 14 dias e o vitalício. Se substitutes chegar à O8 com ~60 cliques e zero, a reversão de O7-002 (0,54 → 0,45) entra na lista com confiança MÉDIA. Nada hoje.

## C. Conta inteira, 13–22/10 (export de campanhas, 10 ativas)
| Campanha | Cliques | Custo | Compras | Vendas | ACOS | Nota |
|---|---:|---:|---:|---:|---:|---|
| Geral DBA | 127 | 91,03 | 3 | 1.108,99 | 8,2% | acima |
| **PI P3070** (orç. 24, O7-017) | 11 | 13,97 | **1** | **616,18** | **2,3%** | venda de 21/10 = **P3070** (Mestra linha 98) no alvo próprio ou em concorrente: conferir na O8. 2ª conversão da PI desde 15/09 |
| PI PXM (1,32/1,08, orç. 80) | 2 | 2,25 | 0 | 0 | — | 2 cliques em 10 dias; TOS IS 22,97% |
| PI L2030-B | 3 | 2,93 | 0 | 0 | — | — |
| Lixeiras banheiro (manual) | 5 | 6,58 | 0 | 0 | — | **CPC 1,32** com lances fixos de 0,80–1,80 e TOS +25%: ver qual exata está pagando na O8 |
| Extintor | 1 | 0,81 | 0 | 0 | — | TOS IS 80% |
| L3070-B | 1 | 1,41 | 0 | 0 | — | — |
| auto PXP (substitutes 1,58) | 0 | 0 | 0 | 0 | — | **zero cliques em 10 dias** com o lance subido (O7-015). INVESTIGAR ENTREGA na O8 |
| Cinzeiros · Bituqueiras | 0 | 0 | 0 | 0 | — | sem entrega (Bituqueiras TOS IS > 95%: entrega quando aparece, mas quase não aparece) |
| **Total** | **150** | **R$ 118,98** | **4** | **R$ 1.725,17** | **6,9%** | abaixo do Objetivo |

## D. Ads × Mestra (13–22/10): Origem das linhas 93–100
| Linha | Data | SKU | Receita | Origem sugerida | Confiança | Base |
|---|---|---|---:|---|---|---|
| 93 | 13/10 | L1618-B | 129,90 | Ads (Geral loose) | ALTA | já preenchida |
| 94 | 15/10 | P3070 | 616,18 | Orgânico | ALTA | já preenchida |
| 95 | 19/10 | L1618-T | 116,00 | **Orgânico** | ALTA | nenhuma campanha atribui 116 |
| 96 | 19/10 | L1618-A | 104,90 | **Orgânico** | ALTA | idem |
| 97 | 19/10 | P3050 | 467,67 | **Ads (Geral loose-match)** | ALTA | valor e dia batem com o gráfico |
| 98 | 21/10 | P3070 | 616,18 | **Ads (PI P3070)** | ALTA | única venda da PI, valor e período batem |
| 99 | 21/10 | PXP ×2 | 335,78 | **Orgânico** | ALTA | auto PXP e PI PXM sem venda |
| 100 | 22/10 | P3060 | 511,42 | **Ads (Geral close-match)** | ALTA | valor e dia batem |
Catálogo 13–22/10: 8 pedidos / 10 un / R$ 2.897,25 (Mestra); Ads atribui 4 pedidos / R$ 1.725,17 = **60% da receita**, acima da média da Era (~45%). Nenhum valor atribuído foi somado entre relatórios: Geral e PI medem vendas distintas (SKUs e dias diferentes).

## E. Decisões
| # | Item | Decisão | Confiança |
|---|---|---|---|
| 1 | O7-001 close 0,65 | **MANTER** até a O8 | ALTA |
| 2 | O7-002 substitutes 0,54 | **MANTER** até a O8 · VIGIA (45 cli / 0 em 10 d) | ALTA |
| 3 | Geral como campanha | MANTER (ACOS 8,2%) | ALTA |
| 4 | PI P3070 | MANTER; conferir na O8 se a venda veio do alvo próprio | ALTA |
| 5 | auto PXP | INVESTIGAR ENTREGA na O8 (0 cliques em 10 d) | MÉDIA |
| 6 | Lixeiras banheiro CPC 1,32 | investigar na O8 qual exata paga acima do lance | MÉDIA |
| 7 | Origem 95–100 | proposta na tabela D, para o LEO lançar na Mestra | ALTA |

## F. O que NÃO fazer
- Não reverter O7-001/002: o gatilho não disparou e a Geral está abaixo do Objetivo.
- Não subir nada por "< R$ 5 → +20%" fora da O8: a régua é de 30 dias, não de 10.
- Não ler o ACOS de 10 dias como Era: a O8 (27/10) lê 14 dias + vitalício.

## G. Dados que faltam para a O8
Pacote da grade (`ciclos/O8-27-10_grade-de-leitura.md`): exports de campanhas, segmentação (Geral e PI), termos de pesquisa e produtos anunciados em 13–26/10 + vitalício; Business Report 13–26/10; Mestra atualizada até 26/10.
