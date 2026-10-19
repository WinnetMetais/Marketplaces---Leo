# Monitoramento semanal — 19/10/2026 (13–19/10) · 1ª semana pós-O7

**Modo A** (7 dias). Fontes: `relatorios/amazon/monitoramento-19-10/` (export do Gerenciador 13–19/10 + print do console) · Mestra v4.3.5 (linhas 93–95). Réguas vigentes: Objetivo 12,5% · Máximo 25% · Emergência 50% (Parâmetros §1).

## A. Resumo executivo
Semana fraca nas duas pontas. **25.000 impressões · 125 cliques · R$ 99,02 · 1 compra · R$ 129,90 · ACOS 76,2%.** Entrega caiu um terço (impressões −34% contra a média semanal dos 30d) e a conversão da Geral caiu de 4,3% (Era) para 0,9% (1 venda em 106 cliques). O catálogo inteiro vendeu 3 pedidos / R$ 862,08 na semana (Mestra), contra 12 pedidos / R$ 3.159 na semana anterior: a queda é de demanda, não só de Ads. É a primeira semana com os lances da O7 (close 0,65 · substitutes 0,54 · manuais +20%); uma semana com n = 1 venda **não** reverte decisão de Ox. Decisão: **NÃO DECIDIR AINDA**, com checkpoint em 22/10 e leitura completa na O8 (27/10).

## B. Qualidade dos dados
| Fonte | Período | Observação |
|---|---|---|
| Export Gerenciador | 13–19/10 | 80 campanhas, 10 ativas; cliques 125 = print; vendas 129,90 = print; sem impressões (print: 25.000) |
| Print console | 13–19/10 | 25.000 impr · 125 cli · R$ 129,90 |
| Mestra | até 19/10 | linhas 93–95 (3 vendas); Origem vazia nas 3; STATUS vazio na 95 |
| Faltam | — | export de palavras da 6B e de alvos da PI P3070 (vigias com reavaliação marcada para 20/10) |

Limitação: venda de 19/10 (L1618-T) pode ainda não ter sido atribuída no export tirado no mesmo dia — origem fica aberta até a O8.

## C. Ads × vendas totais (semana)
| | Ads | Total (Mestra) |
|---|---:|---:|
| Pedidos | 1 | 3 |
| Receita | R$ 129,90 | R$ 862,08 |
| Parcela Ads | **15%** (Era: 76%) | |
| TACOS | **11,5%** | lucro R$ 272,92 · margem 31,7% |

**Origem para o Registro_Vendas:** linha 93 L1618-B 13/10 → **Ads** (única venda atribuída da Geral, R$ 129,90, valor e data batem; ALTA) · linha 94 P3070 15/10 → **Orgânico** (PI P3070 8 cli / 0 e Geral sem venda a 616,18; MÉDIA — reconferir no vitalício da PI na O8: se passar de 3 para 4 compras, era Ads) · linha 95 L1618-T 19/10 → **em aberto** (venda do dia do export; decidir na O8).

## D. Diagnóstico por campanha (semana)
| Campanha | Cli · custo · compras · vendas | Leitura | Decisão | Conf. |
|---|---|---|---|---|
| Geral DBA (0,65/0,54/0,45/0,45) | 106 · 76,61 · 1 · 129,90 · **ACOS 59%** · CPC 0,72 (30d: 0,64) | CPC +12% coerente com os +20% em close/substitutes. Conversão 0,9% contra 4,3% na Era — com p = 4,3% a chance de ≤ 1 venda em 106 cliques é ~6%: atípico, não impossível. Demanda total também caiu (3 pedidos no catálogo). Emergência (50%) é régua de **30 dias**; nos 30d a Geral segue ≈ 6% | **NÃO DECIDIR AINDA** · checkpoint 22/10 (ver G) | MÉDIA |
| PI P3070 (orç. 24) | 8 · 9,51 · 0 | P3070 vendeu orgânico em 15/10 a preço cheio. Alvo `B0BHMZBZW9` estava em 14/15 vitalício — 8 cliques na semana podem ter cruzado | VIGIA · **pedir export de alvos** | — |
| PI PXM (1,32/1,08, orç. 80) | 1 · 1,17 · 0 | Radar: entrega segue mínima na 1ª semana | RADAR mantido | BAIXA |
| PI L2030-B | 3 · 2,93 · 0 | sem mudança | MANTER | — |
| auto PXP (substitutes 1,58) | 0 · 0 · 0 | zero cliques na semana; checkpoint 10/15 congelado | VIGIA | — |
| 6B (fixo; "7 litros" 1,80; "lixo banheiro" 0,80) | 5 · 6,58 · 0 · CPC 1,32 | exata "pia de cozinha" estava em 14/15 (30d) e 31 vitalícios — 5 cliques podem ter disparado o gatilho O6-008 (reavaliar 20/10) | **pedir export de palavras** | — |
| Extintor (3,12) · L3070-B (1,44) | 1 · 0,81 · 0 / 1 · 1,41 · 0 | TOS 80% / 11% | MANTER | — |
| Cinzeiros (1,92) · Bituqueiras (1,44) | 0 | sem entrega na semana | MANTER (ler na O8) | — |

## E. Diagnóstico por SKU (semana)
| SKU | Venda | Origem | Leitura |
|---|---|---|---|
| L1618-B | 13/10 · 129,90 · DF | Ads (Geral) | 2ª venda em 30 dias; margem inflada pela Ref_Frete (52,00 cobrado × 16,04 real) |
| P3070 | 15/10 · 616,18 · PR Interior | Orgânico (MÉDIA) | 1ª venda cheia pós-evento e pós-pausa do alvo; margem 26,1% |
| L1618-T | 19/10 · 116,00 · MG Capital | em aberto | 4ª venda desde 24/09 |

## F. Termos e alvos
Sem relatório de termos na semana (não faz parte do monitoramento). Vigias com gatilho possivelmente disparado: exata "lixeira inox para pia de cozinha" (6B) e alvo `B0BHMZBZW9` (PI P3070) — dependem dos exports pedidos em I.

## G. Lista de alterações sugeridas
Nenhuma execução esta semana. **Checkpoint 22/10 (quarta):** LEO abre a Geral no console com o período 13/10 → 22/10. **Gatilho:** se a Geral acumular **≥ 150 cliques com ≤ 1 compra** (ACOS > 50% em 10 dias), recomendação de emergência = **reverter O7-001 e O7-002** (close 0,65 → 0,54; substitutes 0,54 → 0,45) sem esperar a O8, registrando como EC. Se houver 2+ compras, segue até a O8 sem mexer. Confiança MÉDIA.

## H. Ações que NÃO devem ser feitas agora
- Não reverter os lances da O7 com uma semana e n = 1 venda.
- Não aumentar orçamento nem lance para "compensar" a queda de entrega — a queda é de demanda (orgânico caiu junto).
- Não pausar a Geral nem segmentação por ACOS semanal de 59%: Emergência é régua de 30 dias e a Geral é exceção.
- Não mexer na PI P3070 pela venda orgânica do P3070.

## I. Dados que faltam
1. **Export de palavras da 6B** (Vitalício e 30d) — gatilho O6-008 da exata "pia de cozinha".
2. **Export de alvos da PI P3070** (Vitalício) — `B0BHMZBZW9` 14/15, `B0F4T8FCDD` 11/15.
3. Origem/STATUS da linha 95 (após O8) e STATUS da 95 agora.
4. Linha 17 do Controle: `dados/PROPOSTA_linha_Controle_Semanal_19-10.csv`.

Próximos: checkpoint 22/10 · **O8 27/10** (Era 14–26/10; recalcular réguas pela margem 30d; ler O7-001…017).
