---
description: MODO C — investigação pontual de campanha, SKU, ASIN, termo ou queda de entrega
---

Execute o **MODO C — Investigação pontual** sobre: $ARGUMENTS

Use **apenas** as partes do método relevantes ao caso. Não rode uma Ox inteira.

Roteiro:

1. Invoque a Skill `amazon-ads-winnet`.
2. Declare o objeto da investigação e a janela usada.
3. Valide só os arquivos necessários (`auditor-dados-amazon` em modo focado).
4. Aplique o **diagnóstico entrega × conversão** antes de qualquer régua:
   - sem entrega suficiente
   - entrega com CTR baixo → criativo/relevância
   - entrega e cliques sem venda → conversão
   - indistinguível → `INVESTIGAR ENTREGA`
5. Acione o especialista certo:
   - campanha / lance / orçamento → `ads-analista-amazon`
   - margem / preço / rentabilidade → `financeiro-mestra`
   - termo / ASIN alvo / negativa → `termos-e-negativas`
   - página / conversão do SKU → `listing-e-conversao`
   - dúvida de preço ou demanda externa → `sinal-mercado-livre`

Entrega: evidência → hipótese principal → hipóteses não descartadas → decisão sugerida com categoria canônica → confiança → o que falta para elevar a confiança.

Se a amostra não sustentar conclusão, responda `NÃO DECIDIR AINDA` e diga exatamente qual dado resolveria.
