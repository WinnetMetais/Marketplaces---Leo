---
description: MODO A — monitoramento semanal (7 dias) da conta Amazon Winnet
---

Execute o **MODO A — Monitoramento semanal** do Playbook Amazon Ads Winnet.

Horizonte: **7 dias**. Objetivo: detectar emergências, falhas, falta de entrega e situações que precisam de acompanhamento.

**Não transforme isto em otimização quinzenal.** Réguas de orçamento não se aplicam aqui.

Passos:

1. Invoque a Skill `amazon-ads-winnet`.
2. Rode o subagente `auditor-dados-amazon` sobre `relatorios/amazon/` para validar período (7d), unidade e comparabilidade.
3. Rode `ads-analista-amazon` focado em: campanhas sem entrega, quedas bruscas, campanhas zumbis, vigias com prazo vencido, ACOS em faixa de emergência.
4. Se houver `docs/AMAZON_ADS_PARAMETROS_VIGENTES.md` com vigias abertas, cheque cada uma contra sua condição de saída.
5. Consolide com `relator-ox`, mas em versão enxuta: **A. Resumo executivo**, **B. Qualidade dos dados**, **D. Diagnóstico por campanha**, **H. Ações que NÃO devem ser feitas agora**, **I. Dados que faltam**.

Encerre com o que precisa de olho até o próximo monitoramento e a data sugerida.

Argumentos opcionais (período, campanha específica): $ARGUMENTS
