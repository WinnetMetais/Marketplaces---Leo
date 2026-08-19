---
description: MODO B — otimização quinzenal Ox completa da conta Amazon Winnet
---

Execute o **MODO B — Otimização quinzenal Ox** completa.

Ciclo alvo: $ARGUMENTS (se vazio, leia o próximo ciclo em `docs/CONTEXTO_OPERACIONAL.md`).

Janelas: **30 dias** para réguas principais · **Era** para testes/vigias · **Vitalício** para contrapesos · **7 dias** como leitura complementar.

Sequência:

1. Invoque a Skill `amazon-ads-winnet` e leia `docs/PARAMETROS_VIGENTES.md`, `docs/CONTEXTO_OPERACIONAL.md` e `docs/MEMORIA.md`.
2. **`auditor-dados-amazon`** — inventário dos 11 insumos, validação e mapa de cruzamentos permitidos/proibidos. Se faltarem fontes, siga com o que der e declare as limitações; não trave a Ox inteira.
3. Em paralelo, quando a base permitir:
   - **`ads-x-vendas-totais`** — bloco C
   - **`ads-analista-amazon`** — bloco D
   - **`financeiro-mestra`** — bloco E
   - **`termos-e-negativas`** — bloco F
4. **`listing-e-conversao`** para todo SKU que bateu o checkpoint de ~15 cliques sem venda.
5. **`sinal-mercado-livre`** apenas se houver dúvida de preço/demanda que ele possa iluminar.
6. **`relator-ox`** — consolida A–I, checa coerência e propõe a rastreabilidade do ciclo.

Regras de fechamento:

- Nada é executado. A entrega é uma **proposta** para o LEO aprovar.
- Bloco G deve ser acionável linha a linha, com valor atual → sugerido → motivo → confiança.
- Ao final, lembre o LEO de rodar `/winnet:fechar-ciclo` **após** aprovar as alterações.
