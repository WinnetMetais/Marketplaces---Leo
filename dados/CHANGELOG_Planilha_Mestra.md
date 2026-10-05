# CHANGELOG — Planilha Mestra Winnet

Convenção: cada versão preserva a anterior. O git complementa, não substitui.

---

## ⚠️ v4.3.4 tem duas encarnações — como recuperar a primeira

**Decisão do LEO em 09/09/2026:** manter o nome `v4_3_4` em vez de promover para v4.3.5.

Isso significa que `Planilha_Mestra_Winnet_v4_3_4.xlsx` designa **dois conteúdos diferentes**:

| Quando | Bytes | Conteúdo |
|---|---:|---|
| 08/09/2026 | 86.259 | validações restauradas + 4 vendas de setembro |
| **09/09/2026 (vigente)** | **101.953** | + PG2460 corrigido, 2 vendas de PXP, coluna STATUS, devolução marcada |

**A primeira está preservada no git**, no commit `9470403`. Para recuperá-la:

```
git show 9470403:dados/Planilha_Mestra_Winnet_v4_3_4.xlsx > v4_3_4_de_08-09.xlsx
```

**Consequência a lembrar:** documentos que citam "v4.3.4" sem data são ambíguos. A auditoria da O5 (`ciclos/O5-08-09_auditoria-code.md`) cita as 16 margens conferidas "na v4.3.4" — refere-se à de **08/09**. As margens não mudaram entre as duas, então a conferência continua válida.

---

## v4.3.5 — 05/10/2026 (fechamento do Livro de setembro)

Lançado pelo LEO no Excel (sem openpyxl — validações 7, intactas). Conferido célula a célula contra a v4.3.4 de 01/10 (`ciclos/Fechamento-Livro-set-05-10.md`).

- **`Livro_Vendas`:** 21 vendas de setembro em A46:F66 (soma R$ 7.549,24, valores a preço do painel — convenção de agosto); 3 devoluções fora do Livro (decisão do LEO). RESUMO MENSAL: **Setembro 7.549,24 · Ads 5.291,08 · Orgânico 2.258,16 · 29,9%**; TOTAL jun–set 29.633,79 · 14.859,88 · 14.773,91 · 49,9%. Nota de reconciliação acrescentada. Origem fechada com Produtos Anunciados + Termos 01–30/09, vitalício da PI P3070 e gráfico diário da Geral.
- **`Registro_Vendas`:** coluna Origem (R) preenchida nas 24 linhas de setembro (L53–L76). Pendência: R70 e R72 invertidas (24/09 deve ser Orgânico, 26/09 Ads). Duas vendas de outubro: L79 — 03/10 L1618-B 1 un Ceará Interior R$ 129,90 (frete cobrado R$ 103,00 pela Ref_Frete, a conferir no pedido) · L80 — 04/10 L2030 1 un SP Capital R$ 119,22. Totais: receita R$ 31.527,47 · lucro R$ 8.033,41.
- Versão anterior (v4.3.4, estado de 01/10) preservada em `dados/`.

## v4.3.4 — 09/09/2026 (segunda encarnação, vigente)

**Estrutura**
- **Coluna S `STATUS`** criada no `Registro_Vendas`, com validação de lista literal `VÁLIDO,DEVOLUÇÃO` em `S6:S1048576`. Formato legado — **sobrevive ao openpyxl**, ao contrário das validações que buscam a lista em outra aba. Total: **3 legado + 4 x14**.
- 53 linhas `VÁLIDO`, 1 `DEVOLUÇÃO`.

**Dados**
- L57 — PG2460 de 07/09: preço de tabela **mantido** em 248,75, desconto de **24,87** na coluna própria, receita líquida **223,88**. Fecha a bijeção com o Business Report da Era ao centavo. **Convenção para toda venda com oferta.**
- L58 e L59 — duas vendas de PXP em 08/09 (2 un por R$ 302,20 e 1 un por R$ 151,10, ambas com Melhor Oferta de −10%).
- L54 — venda de L1618-T de 02/09 marcada `DEVOLUÇÃO`, com o número do pedido `702-8393958-4950640` na coluna Obs. **Nenhum valor da linha foi alterado**: a venda aconteceu e continua registrada; o que mudou foi o desfecho.

**Por que coluna de status e não linha negativa:** linha negativa quebraria a contagem de pedidos — e foi a bijeção "11 pedidos da Era × 11 itens do Business Report" que revelou os R$ 24,87 do PG2460. Zerar a linha reescreveria números já auditados e publicados no registro do ciclo O5.

## v4.3.4 — 08/09/2026 (primeira encarnação, no git)
Validações restauradas por reinjeção do `extLst` — as 4 x14 haviam sido removidas pelo openpyxl no fechamento do Livro. 4 vendas de setembro lançadas.

## v4.3.3 — 08/09/2026
Fechamento do `Livro_Vendas` de agosto: 17 pedidos e resumo mensal. Agosto R$ 13.915,83 com 68,4% orgânico.

## v4.3.2 — anterior
Base do ciclo O4.

---

## Nota de método — o que gera nova versão

A regra do `CLAUDE.md` diz "cada modificação **relevante**", sem definir *relevante*. Proposta, **pendente de confirmação do LEO**:

**Gera nova versão:** mudança estrutural (coluna, aba, fórmula, validação) · preço, custo, tarifa ou classificação de frete · fechamento de `Livro_Vendas`.

**Não gera** (mesma versão, atualizada no lugar): lançamento de venda no `Registro_Vendas` · preenchimento de status ou observação.

Sem essa distinção, um mês de lançamentos rotineiros produziria dezenas de versões — ruído, não cadeia.
