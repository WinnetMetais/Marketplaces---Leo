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
