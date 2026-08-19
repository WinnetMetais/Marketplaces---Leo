---
description: MODO D — cruzar vendas Ads com vendas totais e estimar a parcela não atribuída
---

Execute o **MODO D — Ads × vendas totais**.

1. Invoque a Skill `amazon-ads-winnet`.
2. Rode `auditor-dados-amazon` para confirmar **período compatível**, **unidade compatível** e **relação confiável de SKU** entre o relatório Ads e o Relatório de Negócios / vendas totais.
3. Rode `ads-x-vendas-totais`.

Lembretes de trava:

- Só calcule a diferença se as quatro pré-condições de comparabilidade forem verdadeiras.
- Chame o resultado de **"vendas não atribuídas a Ads / estimativa de orgânico"** — nunca "orgânico exato".
- Não some vendas atribuídas de relatórios Ads diferentes.
- Mantenha no **agregado do período**: coincidência de valor diário não prova correspondência temporal.
- Sinalize maturação de atribuição **sem presumir a direção do viés**.

Período / SKU alvo: $ARGUMENTS
