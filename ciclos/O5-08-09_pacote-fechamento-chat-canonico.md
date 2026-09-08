# O5 — 08/09/2026 · PACOTE DE FECHAMENTO (chat canônico)

Base: `O5_08-09_diagnostico_A-I.md` (auditado pelo Claude Code em 08/09, 3 correções incorporadas) + aprovação item a item do LEO em 08/09.
**Nada aqui está executado.** As linhas do Registro nascem em `APROVADA - AGUARDANDO EXECUÇÃO`; quem executa, confere o estado e marca `Executado = SIM` é o LEO. Quem lança no arquivo é o LEO.

**Decisões do LEO que alteraram a lista G:**
- **G17** → não é investigação: **pausar a auto SP-01-o116/07**. Motivo do LEO: anúncio suspenso por política **dentro da campanha** — não é falha de desempenho nem supressão do ASIN; o listing segue ativo e o SP-01 continua anunciado pela Manual Bituqueiras Space (14 impressões entre 20/08 e 04/09). Reativação condicionada à liberação do anúncio nessa campanha.
- **G18** → não criar manual; apenas registrar "coletor de pilhas" como termo produtivo dentro da Geral.
- **G21** → escopo do piloto de migração decidido **na O6 (22/09)**, não agora. A proposta P3060 + P3050 (+P4080) fica como insumo.
- Demais itens (G1–G16, G13b, G19, G20, G22, G23): aprovados como propostos.

**Dado novo do LEO (console):** lances por segmentação da Geral em 25/08 e 08/09 são idênticos (0,45 / 0,45 / 0,54 / 0,54). **A O4-015 alterou apenas o campo "lance padrão do grupo" — nenhum lance efetivo mudou.** Console 01–08/09: custo R$ 108,08 · CPC R$ 0,79 · 3 compras · ROAS 7,66 (a 3ª compra é de 08/09, fora da Era — lida no monitoramento de 14/09; SKU não inferido).

---

## 1. Propostas de linha — Registro de Alterações

Convenção: ID `O5-NNN` · Ciclo `O5` · Data da recomendação e da aprovação **08/09/2026** · Data da execução em branco · Aprovado `SIM` · Executado `PENDENTE` · Status `APROVADA - AGUARDANDO EXECUÇÃO` · Início da janela pós = dia seguinte à execução · Reavaliar em **22/09/2026** salvo indicação. Fonte de decisão = `O5_08-09_diagnostico_A-I.md` + relatórios `o5-08-09/`.

| ID | Campanha | Elemento / alvo | Tipo de ação | Estado / valor anterior | Estado / valor aprovado | Motivo / diagnóstico | Conf. | Observações |
|---|---|---|---|---|---|---|---|---|
| O5-001 | Geral DBA-o311/08 | segmentação `substitutes` | REDUZIR LANCE | R$ 0,54 | R$ 0,45 (−17%) | 30d (08/08–06/09): 167 cliques / R$ 107,60 / 1 compra / ACOS 81% (> Emergência); 39% do gasto da Geral; vitalício 20,9%. Nível segmentação, não campanha (Playbook §16) | MÉDIA | Não isolável na Era; leitura na O6 pelo relatório de Segmentação 30d |
| O5-002 | Geral DBA-o311/08 | segmentação `close-match` | AUMENTAR LANCE | R$ 0,45 | R$ 0,54 (+20%) | Melhor eficiência da Geral com o menor lance: 30d 24 cli / 2 compras / ACOS 2,5%; vitalício 128 cli / 4 compras / 6,9%. Corrige inversão de funil (substitutes > close) | MÉDIA | Amostra 24 cliques/30d. Ler junto com O5-001 |
| O5-003 | Geral DBA-o311/08 | orçamento | MANTER (régua NÃO aplicada) | R$ 90/dia; ACOS 30d 10,5% (régua mandaria +20%) | R$ 90/dia | Gasto Era R$ 10,55/dia ≈ 12% do orçamento — orçamento não é restrição (regra consolidada). ACOS 30d sustentado por 1 halo (31,4% sem ele) | ALTA | Lance padrão 0,48 é inerte (4 segmentações com lance próprio, confirmado no console 25/08 = 08/09) |
| O5-004 | PI L2470-CZ-o425/08 | campanha | PAUSAR CAMPANHA | Ativa (radar O4-004, alvos 0,66/0,60) | Pausada | Contrato de saída O4-004: Era 4 cliques / R$ 2,51 / 0 venda / ~770 impr (derivada); vitalício 18 cliques / 0 venda em 32 alvos | ALTA | Sem prorrogação. Família cinzeiro segue coberta pela Geral |
| O5-005 | PI PG3070-o425/08 | campanha | PAUSAR CAMPANHA | Ativa (radar O4-005, 57 alvos 0,66) | Pausada | Contrato de saída O4-005: Era 1 clique / R$ 0,99; vitalício 8 cliques / 0 venda em 83 alvos. Migração para exatos fica sem objeto | ALTA | Família PG vendeu via Geral + Melhor Oferta (PG2460, 07/09) |
| O5-006 | Auto PXM-o425/08 | campanha | PAUSAR CAMPANHA | Ativa (radar O4-010) | Pausada | Contrato de saída O4-010: Era 2 cliques / R$ 2,02 / 0 venda; vitalício 21 cli / 1 compra (08/07). Redundante com Extintor manual (vendeu na Era), PI PXM-o3 e auto PXP-o3 | ALTA | Corrigir texto da O4-010: PXM é suporte de extintor 6 kg, não porta-guarda-chuva |
| O5-007 | Auto EGC | campanha | VIGIA (contrato prorrogado 1 Era) | Radar O4-012, lance 0,84 fixo; contrato comum mandaria pausar | Ativa, lance 0,84 mantido; **gatilho O6: 0 vendas E CTR < 0,3% → pausar** | Radar cumpriu a entrega: 361 → 2.391 impr/30d; Era ~2.500 impr / 1 clique / CTR 0,13%; único termo com clique = ASIN substitute B0BHXCJD1P. Nicho de busca rara (Playbook §31). Melhor Oferta −10% ativa 08–13/09 = teste de conversão em curso | MÉDIA | Desvio explícito do contrato comum, decidido pelo LEO em 08/09 |
| O5-008 | 6B Lixeiras banheiro [O4 25/08] | estratégia de lances | MANTER (piloto confirmado) | Dinâmicos (aumento e redução) desde O4-014 | Sem alteração | Piloto POSITIVO PRELIMINAR: pré-Era 6 cli/15d, 0 venda → Era 11 cli/13d, 1 venda (R$ 265,80), CPC 1,33 → 1,60; controles fixos com 0–1 clique na Era | ALTA | n = 1 venda. Custo real do termo "lixeira banheiro 7 litros" = R$ 11,71 (perna L2025-B R$ 6,52 sem venda) — ver O5-014 |
| O5-009 | Manual L3070-B | estratégia de lances | ALTERAR ESTRATÉGIA (fixo → dinâmicos aumento e redução) | Lances fixos 1,20 / 1,00, topo +25% | Dinâmicos aumento e redução, mesmos lances e mesmo topo | Controle com 0 cliques na Era (4 no pré-Era); "lixeira basculante 50 litros" rank 1 com share 42% → há leilões a capturar; margem 24,2% (Simulador SP Interior) | MÉDIA | Share de 42% é da conta e soma Geral (19 impr/4 cli) + manual (54/3): parte do espaço é disputa interna — ler as duas juntas na O6 |
| O5-010 | Auto SP-PP-o425/08 | segmentação `loose-match` | PAUSAR ALVO (segmentação) | Ativa (lance 1,28 médio CPC) | Pausada; **VIGIA da campanha, gatilho O6: 0 cliques relevantes → PAUSAR CAMPANHA** | Pós O4-001, 100% dos cliques da Era vieram da loose em 6 termos "parede" irrelevantes (R$ 7,66 de R$ 8,98); CTR ~0,06%; vitalício 26 cliques / 0 venda | MÉDIA | `substitutes` permanece pausada (O4-001). Termos: saboneteira parede · suporte planta parede · mandalas decorativas parede · mop para limpar paredes · organizador de fios parede · suporte secador de cabelo parede |
| O5-011 | PI P3070-o228/07 | campanha | MANTER CONGELADA (gatilho definido) | Congelada desde O4; Era 30 cli / R$ 34,41 / 0 venda | Sem alteração até 14/09; **gatilho O6: sem venda atribuída pós-Relâmpago E ≥15 cliques na Era O5→O6 → REDUZIR lances −20% nos asin-expanded** | 16% do gasto da Era sem atribuição; nenhum alvo ≥15 vitalícios (máx. B09YDLC69D = 12, em revisão); SKU converteu orgânico em 03/09 (1 em 43 sessões); Relâmpago −10% em curso | MÉDIA | Reavaliar em 14/09 (leitura 9.9) e 22/09 |
| O5-012 | Auto SP-01-o116/07 | campanha | PAUSAR CAMPANHA | Ativa (reativada O4-R03); 0 impressões de 18/08 a 07/09 | Pausada | **Decisão LEO 08/09:** anúncio suspenso por política dentro desta campanha — não é falha de desempenho nem supressão do ASIN. Listing ativo; SP-01 segue anunciado pela Manual Bituqueiras Space (14 impr 20/08–04/09) | ALTA | Reativação condicionada à liberação do anúncio nesta campanha. Não entra em contrapeso vitalício. Reavaliar em: quando liberar |
| O5-013 | 6B Lixeiras banheiro [O4 25/08] | palavra-chave nova | PROMOVER PARA MANUAL (exata) | Termo só na Geral (close-match) | Exata `lixeira banheiro 10 com tampa` no grupo da 6B, lance inicial = exata vigente da 6B (R$ 1,50) | 1 venda em close-match (L2030-T, 30/08–01/09, R$ 143,13); mesma família da 6B; margem L2030-T 19,4% | MÉDIA | Produto no grupo: conferir se o L2030-T está no grupo da 6B antes de adicionar. Lance a confirmar na execução |
| O5-014 | 6B Lixeiras banheiro [O4 25/08] | SKU L2025-B no grupo | REVISAR (sem ação) | L2025-B no grupo; termo "lixeira banheiro 7 litros": perna L2025-B 4 cli / R$ 6,52 / 0 venda (56% do gasto do termo) | Decisão em 14/09 | Amostra pequena; achado C2 da auditoria | MÉDIA | Reavaliar em 14/09 |
| O5-015 | Cinzeiros · Bituqueiras · Extintor | estratégia e orçamento | MANTER | Fixos; Extintor R$ 8, topo +75% | Sem alteração | Rank 1 / share 100% nos termos com impressão — lance não é a barreira; Extintor vendeu (ACOS 30d 1,4%) e gasta 1% do orçamento | ALTA | Bituqueiras: 1ª leitura real — entrega limitada pelo volume dos termos exatos (métrica bruta; não inferir mercado) |
| O5-016 | PI PXM-o311/08 | campanha | INVESTIGAR ENTREGA (pedido ao LEO) | Ativa; 0 impressões na Era com lance 1,10 em 52 alvos | Sem alteração até conferência no console | Lance não parece ser o problema; conferir se alvos estão ativos/elegíveis | MÉDIA | Sem custo. Resultado da conferência entra na O6 |
| O5-017 | PI L2030-B-o311/08 · Auto PXP-o311/08 | campanha | MANTER | Ativas | Sem alteração | Vitalício saudável (3 compras cada: R$ 497,34 e R$ 539,32), Era fria — contrapeso vitalício | ALTA | — |

**Fora do Registro de Alterações (não são mudanças de Ads):**
- **Planilha Mestra** — `Registro_Vendas`, linha 07/09 PG2460: preço 248,75 → **223,88** (Melhor Oferta −10%; BR e atribuição fecham só com 223,88). Gera **v4.3.5** com changelog de 1 item; v4.3.4 preservada. Ação do LEO.
- **Q2460-B** — desempate: permanece no Nível 2 (INVESTIGAR CONVERSÃO), sem PI e sem oferta. Registrar em `ACHADOS`/Contexto.
- **Migração de ASIN** — escopo do piloto na **O6 (22/09)**. Insumo: P3060 + P3050 (+P4080), fora L2025-T, L1618-T e P3070.
- **"coletor de pilhas"** — registrar nos Parâmetros como termo produtivo da Geral (2 vendas vitalícias, L2460-CP), sem manual.

---

## 2. Entradas EM MATURAÇÃO — textos finais propostos (substituem o rascunho do diagnóstico)

| ID | Resultado pós-alteração | Veredito posterior | Status proposto |
|---|---|---|---|
| O4-R01 PI SP-01 pausa | Sem atividade desde 17/08 | MANTIDA — reativar só com anúncio elegível | EXECUTADA - AVALIADA |
| O4-R02 Auto SP-01 pausa prev. | Superada pela O4-R03 | ENCERRADA (superada) | EXECUTADA - AVALIADA |
| O4-R03 Auto SP-01 reativação | 0 impressões de 18/08 a 07/09 (30d: 172 impr / 1 cli, só 11–17/08). LEO confirmou: anúncio suspenso por política dentro da campanha | SEM EFEITO — anúncio inelegível na campanha; pausa em O5-012 | EXECUTADA - AVALIADA |
| O4-R04 Extintor TOS +75% | Export 08/09: ajuste 0,75 vigente; Era 1 cli / 1 venda R$ 203,54; 30d ACOS 1,4%; termos rank 1 / share 100% | POSITIVO — conserto vigorou; volume dos termos exatos é baixo (métrica bruta) | EXECUTADA - AVALIADA |
| O4-001 SP-PP substitutes pausada | Termos via substitutes terminam ≤25/08; Era só loose-match | EFETIVA na segmentação; CTR da campanha segue ~0,06% pela loose → O5-010 | EXECUTADA - AVALIADA |
| O4-002 SP-PP 18 negativas | Nenhum termo negativado reaparece na Era | EFETIVA | EXECUTADA - AVALIADA |
| O4-003 PI P3050 pausa | Sem atividade após 25/08; SKU 13 sessões / 0 un na Era; Relâmpago −10% em curso | MANTIDA — retorno condicionado ao lote de página | EXECUTADA - AVALIADA |
| O4-004 PI L2470-CZ radar +20% | Era 4 cli / R$ 2,51 / 0 venda / ~770 impr; vit. 18 cli / 0 | NEGATIVO — contrato de saída acionado → O5-004 | EXECUTADA - AVALIADA |
| O4-005 PI PG3070 radar +20% | Era 1 cli / R$ 0,99 / 0; vit. 8 cli / 0 | NEGATIVO — contrato acionado → O5-005 | EXECUTADA - AVALIADA |
| O4-006 Auto L1618-o115 pausa | Não vigorou em 25/08; executada em 31/08 (EC-002) | SUPERADA por EC-002 | EXECUTADA - AVALIADA |
| O4-007 Auto PG3070-o115 pausa | Sem atividade após 25/08 | EFETIVA | EXECUTADA - AVALIADA |
| O4-008 PI P3060 pausa | Sem atividade após 25/08; SKU 19 sessões / 0 un | MANTIDA | EXECUTADA - AVALIADA |
| O4-009 PI PXP-o103 pausa | Sem atividade após 25/08 | EFETIVA | EXECUTADA - AVALIADA |
| O4-010 Auto PXM-o2 radar formal | Era 2 cli / R$ 2,02 / 0 | NEGATIVO — contrato acionado → O5-006. **Corrigir motivo: PXM = suporte de extintor 6 kg** | EXECUTADA - AVALIADA |
| O4-011 Geral orçamento mantido | Gasto Era R$ 137,16 / 13 dias = R$ 10,55/dia vs R$ 90 | CONFIRMADA — orçamento não é restrição; mantido em O5-003 | EXECUTADA - AVALIADA |
| O4-012 EGC lance 0,84 | Impr 361 → 2.391 (30d); Era ~2.500 impr / 1 cli / 0 venda; CTR 0,13% | PARCIAL — entrega destravou, conversão não → O5-007 (vigia) | EXECUTADA - AVALIADA |
| O4-013 Manuais manter | 6B vendeu; L3070-B e Cinzeiros 0 cli na Era; Bituqueiras 1 cli | CONFIRMADA; ajustes em O5-009 e O5-015 | EXECUTADA - AVALIADA |
| O4-014 6B piloto dinâmico | Pré-Era 6 cli/15d, 0 venda → Era 11 cli/13d, 1 venda (R$ 265,80), CPC 1,33 → 1,60; controles fixos 0–1 cli na Era | POSITIVO PRELIMINAR (n=1) — manter; estender à L3070-B (O5-009) | EXECUTADA - AVALIADA |
| O4-015 Geral lance padrão 0,48 | **Console (LEO, 08/09): lances por segmentação idênticos em 25/08 e 08/09 (0,45/0,45/0,54/0,54). A alteração atingiu só o campo padrão, que não é usado.** Geral na Era: cli/dia +22%, CPC 0,61 → 0,68 — sem relação com esta alteração | **INERTE** — sem efeito operacional. Escala real da Geral passa a ser por segmentação (O5-001/002) | EXECUTADA - AVALIADA |
| EC-001 SP-T na promo 5+ | Sem venda de SP-T na Era | SEM EFEITO ISOLÁVEL (esperado) | EXECUTADA - AVALIADA |
| EC-002 Auto L1618 pausa | Última atividade 31/08 | EFETIVA | EXECUTADA - AVALIADA |
| EC-003 11 Melhores Ofertas | Janela pós começa 08/09; PG2460 vendeu 07/09 a R$ 223,88 via Geral (atribuição ao preço da oferta — inferência de 1 pedido) | NÃO AVALIÁVEL até 14/09 | EXECUTADA - EM MATURAÇÃO |
| EC-004 5 Relâmpago | Dia(s) de execução dentro da semana 07–13/09 | NÃO AVALIÁVEL até 14/09 | EXECUTADA - EM MATURAÇÃO |

Contagem resultante: 23 entradas → 21 AVALIADAS + 2 EM MATURAÇÃO (EC-003/004). EC-005 e EC-006 (cupons de 04/09) seguem a lançar pelo LEO.

---

## 3. Snapshot proposto — AMAZON ADS PARÂMETROS VIGENTES (pós-O5, 08/09/2026)

Substitui o snapshot de 25/08 (pós-O4). Só o que muda está listado; o resto permanece.

**§1 Réguas de ACOS** — sem alteração (9 / 18 / 36).

**§2 Teto mensal** — R$ 1.000. **Setembro 01–08: R$ 108,08 (console)** ≈ 11% do teto; ritmo da Era R$ 16,2/dia → projeção R$ 480–500/mês. Folga ampla.

**§3 Lances — estruturas novas**
- Extintor: exata 2,60 · topo +75% · fixo (confirmado no export 08/09).
- 6B: exata 1,50 · frase 1,20 · topo +25% · **dinâmicos (aumento e redução) — piloto confirmado O5-008**. Nova exata pendente: `lixeira banheiro 10 com tampa` (O5-013).
- Cinzeiros: 1,60 / 1,30 · topo +50% · fixo.
- Bituqueiras: 1,20 / 1,00 · topo +50% · fixo.
- L3070-B + L4080-B: 1,20 / 1,00 · topo +25% · **dinâmicos (aumento e redução) após execução de O5-009** (era fixo).
- Auto EGC: 0,84 fixo — **vigia até O6** (O5-007).
- **Geral DBA-o311/08 — lances vigentes são por segmentação** (o campo "lance padrão do grupo" = 0,48 não é usado): close-match **0,54** (O5-002; era 0,45) · loose-match 0,54 · substitutes **0,45** (O5-001; era 0,54) · complements 0,45. Valores pós-execução; antes dela, 0,45 / 0,54 / 0,54 / 0,45.

**§4 Radares / vigias vigentes**
| Estrutura | Situação | Contrato |
|---|---|---|
| Auto EGC | VIGIA, lance 0,84 | O6: 0 vendas E CTR < 0,3% → pausar |
| Auto SP-PP-o425/08 | VIGIA (só close-match + complements ativas) | O6: 0 cliques relevantes → pausar campanha |
| PI P3070-o228/07 | CONGELADA com gatilho | O6: sem venda pós-Relâmpago E ≥15 cli na Era → lances −20% |
Radares da O4 encerrados: PI L2470-CZ, PI PG3070, auto PXM-o2 (pausados, O5-004/005/006).

**§5 Piloto de estratégia de lance** — 6B: POSITIVO PRELIMINAR (n=1 venda). Grupo dinâmico passa a 6B + L3070-B; controle fixo: Cinzeiros, Bituqueiras, Extintor, EGC. Veredito consolidado na O6.

**§6 Referências operacionais** — acrescentar: (a) **atribuição de Oferta Relâmpago / Melhor Oferta ao preço da oferta** (inferência de 1 pedido, PG2460 07/09; confirmar em 14/09); a atribuição a preço de tabela (31/08) vale para a promoção de quantidade; (b) **"coletor de pilhas" = termo produtivo da Geral** (2 vendas vitalícias, L2460-CP), sem manual; (c) conversão média da conta permanece referência derivada (atualizar com BR de setembro no fechamento).

**§8 Ciclo** — O5 concluída **08/09/2026**. Monitoramento **14/09** (inclui leitura do 9.9 e EC-003/004). **Monitoramento de 21/09: proposta de eliminar** (véspera da O6, mesmo precedente de 07/09) — decisão do LEO. **O6: 22/09/2026** (decisão do escopo da migração de ASIN + veredito consolidado do piloto de lance + leitura de O5-001/002). O7 estimada ~06/10. Fechamento do Livro de setembro: **05/10** (1ª segunda) — sem exceção prevista.

**§9 Inventário de estratégias** — após O5-009: 75 dinâmicas aumento/redução · 4 fixas · 1 somente redução (contagem inclui pausadas).

**§10 Estado da conta (pós-execução)** — **12 campanhas ativas** (eram 16; O5 pausa 4: PI L2470-CZ, PI PG3070, auto PXM-o2, auto SP-01). Corrigir: o snapshot anterior dizia 15 e eram 16.

**§11 Mapa vivo**
| Classe | Campanhas |
|---|---|
| Vendedora | Geral DBA |
| Aposta | 6B [dinâmico], Cinzeiros, Extintor, L3070-B [dinâmico pós-O5-009], Bituqueiras, PI PXM-o3, auto PXP-o3, PI L2030-B-o3 |
| Vigia | EGC · SP-PP |
| Congelada c/ gatilho | PI P3070 |
| Pausada condicional (pós-página) | PI P3050, PI P3060 |
| Pausada por contrato de radar | PI L2470-CZ, PI PG3070, auto PXM-o2 |
| Pausada por inelegibilidade | PI SP-01, auto SP-01 |
| Coberta pela Geral | demais SKUs |

**§12 Pendências (pós-O5)**
1. ~~Lances por segmentação da Geral~~ ✅ resolvida (0,45/0,45/0,54/0,54; O4-015 inerte).
2. ~~Halo Q2430-A~~ ✅ (08/09).
3. **Frete real × Ref_Frete — segue ABERTA.** 9 novas observações Qtd=1 na Era (razão real/tabela 46–100%, mediana ~63%) reforçam o achado; recálculo de margens é decisão de Mestra (LEO/Dianna), não de Ads.
4. **Migração de ASIN — escopo na O6 (22/09).** Gate: GS1. Insumo: P3060 + P3050 (+P4080).
5. **Leitura do 9.9 em 14/09**: EC-003/004; confirmar mecanismo de atribuição das ofertas; O5-014 (L2025-B na 6B); P3070 pós-Relâmpago.
6. PI PXM-o3 — conferência de alvos no console (O5-016).
7. Q2460-B — Nível 2, ler após lote de imagens.
8. Fila de conversão Nível 2 — reordenar após 9.9 (4 dos 7 SKUs em oferta); L1618-T sai da fila de diagnóstico (2 vendas orgânicas na Era).
9. Registro_Vendas PG2460 07/09 → v4.3.5.
10. EC-005/006 a lançar; revisão dos cupons EMB em 18/09.
11. Gasto vs teto — acompanhar (11% em 08/09).

---

## 4. Nota-resumo do ciclo — O5 08/09/2026

Era 26/08–07/09 (13 corridos, 8 úteis). Gasto R$ 210,96 · atribuído R$ 1.102,15 · ACOS 19,1% · TACOS 7,3% · vendas totais R$ 2.897,92 (11 pedidos, bijeção exata com o Registro) · Ads 38% / não atribuído 62%. Vendedoras: Geral (4), 6B (1 — 1ª venda da manual, no piloto dinâmico), Extintor (1). Orgânico trouxe a 1ª venda do P3070 desde junho.

Achados: (1) a Geral inverteu o funil — substitutes (0,54) consome 39% do gasto com ACOS 81% em 30d, close-match (0,45) é a mais eficiente; (2) a O4-015 foi inerte — o lance padrão não é usado; (3) três dos quatro radares não geraram amostra e caíram no contrato; EGC foi o único em que a entrega destravou; (4) piloto dinâmico da 6B positivo preliminar; (5) Melhor Oferta parece ser atribuída ao preço da oferta (1 pedido); (6) régua de alvo de PI aplicada com resultado nulo.

Decisões (17 linhas O5-001 a O5-017): rebalancear lances por segmentação da Geral (substitutes 0,54→0,45; close 0,45→0,54) sem tocar no orçamento; pausar PI L2470-CZ, PI PG3070, auto PXM-o2 (contrato) e auto SP-01 (anúncio suspenso na campanha, decisão LEO); EGC em vigia 1 Era com gatilho; L3070-B migra para dinâmico; SP-PP perde a loose-match e entra em vigia; PI P3070 congelada com gatilho; nova exata na 6B; Q2460-B fica no Nível 2; migração decide na O6. Auditoria do Code: aprovado com 3 correções, incorporadas. 21 entradas da O4/EC avaliadas; EC-003/004 em maturação até 14/09.

---

## 5. Agenda

| Data | Evento | Conteúdo |
|---|---|---|
| 08–09/09 | Execução O5 (LEO) | O5-001/002/004/005/006/009/010/012/013 no console; conferir estado antes de cada uma; export pós-execução para auditoria (Playbook §35.15) |
| 09/09 | Início da Era O5→O6 | 09/09–21/09 = 13 corridos, 9 úteis, 0 feriados |
| 13/09 | Fim do 9.9 | — |
| **14/09 (seg)** | Monitoramento semanal + leitura do 9.9 | EC-003/004 · mecanismo de atribuição das ofertas · O5-014 (L2025-B) · P3070 pós-Relâmpago · export 7d com Estado · BR por ASIN 07–13/09 |
| 18/09 | Revisão cupons EMB (EC-006) | Linha de base em `ciclos/EC-04-09.md` |
| 21/09 (seg) | Monitoramento — **proposta: eliminar** (véspera da O6) | Decisão do LEO |
| **22/09 (ter)** | **O6** | Relatórios 30d (~23/08–21/09) + export Era 09–21/09 + BR + vitalício por alvo · vereditos: O5-001/002, EGC, SP-PP, P3070, piloto 6B+L3070-B · **escopo da migração de ASIN** (gate GS1) |
| 05/10 (seg) | Fechamento Livro_Vendas setembro | Primeiro; O7 depois, se cair no mesmo dia |
| ~06/10 | O7 | — |
