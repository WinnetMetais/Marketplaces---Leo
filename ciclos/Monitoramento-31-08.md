# MONITORAMENTO SEMANAL — 31/08/2026 (MODO A)

**Janela:** 24/08 a 31/08/2026 (7 dias) — primeira leitura pós-O4.
**Natureza:** monitoramento, não otimização. Réguas de orçamento não se aplicam; contratos de saída dos radares vencem na O5 (08/09).

---

## A. Resumo executivo

1. **A seca de vendas reverteu.** 3 vendas na janela: PXM R$ 203,54 (26/08), PXP R$ 167,89 (29/08), L2025-T R$ 132,90 (30/08). Total R$ 504,33.
2. **2 de 3 vendas já atribuídas a Ads:** PXM ao Extintor Exato Manual (termo "suporte extintor de incêndio") e L2025-T à Geral DBA (termo "cesto de lixo cozinha inox"). A venda do PXP **não** tem atribuição até 31/08 — orgânica até prova em contrário (janela de atribuição segue aberta).
3. **⚠️ Divergência de execução: a auto L1618-o115/07 estava ATIVADA — ✅ RESOLVIDA em 31/08.** A O4-006 registrou a pausa como EXECUTADA em 25/08, mas o export do Gerenciador de 31/08 mostrava a campanha ATIVADO, com impressões até 30/08 (gasto zero na janela). O LEO **executou a pausa em 31/08**, no mesmo dia do achado. Registrada como **EC-002** (reexecução/conserto da O4-006) no Registro de Alterações.
4. **Geral DBA em vigia:** ACOS de 83,9% na janela 7d (R$ 111,50 de custo, R$ 132,90 de venda). Leitura com duas ressalvas: atribuição imatura nos últimos 2–3 dias e a Geral nunca é pausada como campanha comum. É o efeito esperado do lance escalado a R$ 0,48 — mais entrega (27.241 impressões, 155 cliques) sem a conversão ainda ter acompanhado. Veredito na O5, não aqui.
5. **Radar EGC destravou a entrega:** 547 impressões em 7 dias contra 361 em 30 dias antes do ajuste. O radar cumpriu o objetivo de gerar amostra.
6. **Alerta operacional:** 2 pedidos com **envio pendente e prazo em 31/08** (L2025-T e PXP). Confirmar o envio hoje para não pontuar na Taxa de Envio com Atraso.

Gasto total da janela: **R$ 156,66** (~R$ 22/dia; projeção ~R$ 690/mês, dentro do teto de R$ 1.000).

## B. Qualidade dos dados

| Relatório | Janela | Estado |
|---|---|---|
| Campanhas 7d | 24–31/08 | ✅ OK (20 campanhas com atividade) |
| Produtos Anunciados | 24–31/08 | ✅ OK |
| Termos de Pesquisa | 24–31/08 | ✅ OK (179 linhas) |
| Segmentação | 24–31/08 | ✅ OK |
| Gerenciador (estado atual) | 31/08 | ✅ OK (80 campanhas listadas) |
| Business Report por data | 24–**29**/08 | ⚠️ Sem as linhas de 30 e 31/08 — sessões desses dias invisíveis por dia |
| Business Report por ASIN | inclui a venda de 30/08 | ⚠️ Janela ligeiramente diferente do por-data (291 sessões nos dois, mas o por-ASIN traz 3 unidades, incluindo 30/08) |

Nenhum relatório faltante ou inutilizável. Limitações: (a) sessões de 30–31/08 sem abertura por dia; (b) atribuição dos últimos 2–3 dias ainda imatura — vendas de 29–31/08 podem migrar para Ads nos próximos dias.

## D. Diagnóstico por campanha (só as com atividade relevante)

| Campanha | Impr | Cliques | Custo | Vendas | Leitura | Decisão | Conf. |
|---|---:|---:|---:|---:|---|---|---|
| Geral DBA-o311/08 | 27.241 | 155 | 111,50 | 132,90 | Lance 0,48 entregando forte; ACOS 83,9% na janela, atribuição imatura | **VIGIA** (ler na O5) | ALTA |
| Extintor Exato Manual | 68 | 4 | 2,86 | 203,54 | TOS +75% funcionando: IS topo 84%, CTR 5,9%, ACOS 1,4% | **MANTER** | ALTA |
| PI P3070-o228/07 | 6.174 | 17 | 17,74 | 0 | 17 cliques/7d sem venda — checkpoint em acúmulo; SKU é Núcleo A | **INVESTIGAR CONVERSÃO DO SKU** (O5) | MÉDIA |
| auto SP-PP-o425/08 | 11.074 | 6 | 7,27 | 0 | Pós-limpeza: CTR segue 0,05% — limpeza não resolveu CTR | **VIGIA** (reavaliar na O5 como previsto) | MÉDIA |
| PK Lixeiras banheiro (6B, piloto dinâmico) | 332 | 7 | 11,29 | 0 | Entrega ativa, CTR 2,1%, sem conversão; L2025-T vendeu pela Geral, não pelo 6B | **MANTER** (veredito do piloto na O5) | MÉDIA |
| Radar EGC (lance 0,84) | 547 | 1 | 0,73 | 0 | Entrega destravada (547 vs 361/30d) | **MANTER** radar até O5 | ALTA |
| Radar PI L2470-CZ (+20%) | 428 | 2 | 1,11 | 0 | Amostra ainda fraca; 19 alvos entregando | **MANTER** radar até O5 | MÉDIA |
| Radar PI PG3070 (+20%) | 205 | 0 | 0 | 0 | Zero cliques — candidato a contrato de saída na O5 | **MANTER** até O5 | MÉDIA |
| Radar PXM (auto o425/08 + PI o311/08) | 725 | 2 | 2,02 | 0 | Amostra pequena; a venda do PXM veio do Extintor manual | **MANTER** até O5 | MÉDIA |
| auto L1618-o115/07 | 11 | 0 | 0 | 0 | **ATIVADA, contrariando O4-006 (pausa registrada como executada)** | **PAUSAR CAMPANHA** (executar o já aprovado) | ALTA |

SKUs com cliques sem venda na janela (diagnóstico, não pausa): **L2025-T 22 cliques → 1 venda ✓** · **Q2460-B 17 cliques/0** (reforça o desempate da O5) · **L1618-T 16/0** · **P3070 22/0 (Geral+PI)** · **P3050 8/0**.

## H. Ações que NÃO devem ser feitas agora

1. **Não mexer na Geral DBA** — ACOS de janela curta com atribuição imatura não é gatilho; a leitura do 0,48 é da O5.
2. **Não encerrar nenhum radar** — os contratos de saída vencem na O5, com amostra de ciclo completo.
3. **Não negativar termos** — nenhum termo atingiu régua de irrelevância com amostra suficiente em 7 dias.
4. **Não aumentar orçamento de campanha alguma** — régua de orçamento não se aplica em monitoramento.
5. **Não concluir nada sobre o piloto 6B** — 7 cliques não decidem estratégia de lances.

## I. Dados que faltam

1. Business Report **por data** cobrindo 30 e 31/08 (sessões diárias) — trazer na O5.
2. ~~Confirmação no console do estado da **auto L1618-o115/07**~~ — **RESOLVIDO em 31/08**: pausa reexecutada pelo LEO (EC-002).
3. Livro_Vendas de agosto (08/09, antes da O5) — validação das margens e do halo.

---

**De olho até a O5 (08/09):** envio dos 2 pedidos pendentes hoje; ~~estado da auto L1618~~ (pausada em 31/08, EC-002); se a venda do PXP ganha atribuição tardia; sessões de 30–31/08; gasto acumulado do mês contra o teto.

---

## Adendo pós-fechamento (31/08, após os exports)

**Primeira conversão do piloto 6B.** Venda de 31/08 atribuída à **Campanha de Palavra-Chave Lixeiras banheiro-O4 25/08** — a campanha do piloto de estratégia de lances (O4-014, fixo → dinâmico). A venda ocorreu **depois** da geração dos exports desta janela, portanto não aparece nos números acima; entra na leitura da O5. É a **primeira venda da campanha** desde a criação (29/07) e a primeira de uma Manual Claude fora do Extintor.

**Detalhe do pedido (print do Seller Central):** **L2025-T × 2 unidades** a R$ 132,90 = **R$ 265,80** de produto + **R$ 43,00 de frete cobrado** = R$ 308,80. Item do pedido 168513502290001. Envio pendente no momento do print.

Três observações para a O5:
1. **L2025-T vendeu 2 dias seguidos por caminhos diferentes do funil** — 30/08 pela Geral (1 un, termo "cesto de lixo cozinha inox") e 31/08 pela Manual 6B (2 un). O SKU era também o 2º em sessões da janela (25). SKU do Núcleo B da proposta de concentração ganhando tração.
2. **Frete cobrado R$ 43,00 em pedido de 2 unidades** — acima da tarifa de 1 unidade de Pequenos/capital (R$ 24,90). Caso raro em que a cobrança multi-unidade NÃO ficou na tarifa de 1 un (como a exceção PXM 3un/Ceará). Confirmar a região quando a venda entrar no `Registro_Vendas` e somar à amostra da pendência 5.
3. **Termo de pesquisa que converteu** — puxar do relatório de Termos da janela da O5.

**Mais vendas em 31/08 (relato do LEO, ainda sem print/atribuição):** **L2450-AML × 3 unidades** e **mais 1 L2025-T**. Total do dia: **6 unidades em 3 pedidos**. Notas: (a) o L2025-T soma **4 unidades em 48h** por três pedidos distintos — caso mais forte do Núcleo B; (b) as campanhas dedicadas do L2450-AML (PI, auto individual e categoria) estão todas **pausadas** — na janela ele só teve 46 impressões e 1 clique pela Geral. Verificar na O5 se a venda foi atribuída (provável Geral) ou orgânica: se orgânica, é evidência de que SKU sem campanha própria vende, relevante para a discussão de concentração.
