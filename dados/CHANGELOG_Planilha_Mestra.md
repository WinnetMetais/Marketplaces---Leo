# CHANGELOG — Planilha Mestra Winnet

Convenção: cada versão preserva a anterior. O git complementa, não substitui.

## v4.3.5 — 09/09/2026

Consolida todo o trabalho de 09/09 numa única versão.

**Estrutura**
- **Coluna S `STATUS` criada** no `Registro_Vendas`, com validação de lista literal `VÁLIDO,DEVOLUÇÃO` aplicada em `S6:S1048576`. Formato legado — **sobrevive ao openpyxl** (as validações que morrem são as que buscam a lista em outra aba). Total de validações passa de 2+4 para **3 legado + 4 x14**.
- 53 linhas marcadas `VÁLIDO`, 1 marcada `DEVOLUÇÃO`.

**Dados**
- `Registro_Vendas` L57 — PG2460 de 07/09: preço de tabela **mantido** em 248,75, desconto de **24,87** lançado na coluna própria, receita líquida **223,88**. Fecha a bijeção com o Business Report da Era ao centavo. **Vira convenção para toda venda com oferta.**
- `Registro_Vendas` L58 e L59 — duas vendas novas de PXP em 08/09 (2 un por R$ 302,20 e 1 un por R$ 151,10, ambas com Melhor Oferta de −10%).
- `Registro_Vendas` L54 — venda de L1618-T de 02/09 marcada como `DEVOLUÇÃO`. **Nenhum valor da linha foi alterado**: a venda aconteceu e continua registrada; o que mudou foi o desfecho.

**Por que a coluna e não linha negativa:** linha negativa quebraria a contagem de pedidos, e foi a bijeção "11 pedidos da Era × 11 itens do Business Report" que revelou os R$ 24,87 do PG2460. Zerar a linha reescreveria números já auditados e publicados no registro do ciclo O5.

## v4.3.4 — 08/09/2026
Validações de dados restauradas por reinjeção do `extLst` (as 4 x14 haviam sido removidas pelo openpyxl no fechamento do Livro). 4 vendas de setembro lançadas.

## v4.3.3 — 08/09/2026
Fechamento do `Livro_Vendas` de agosto: 17 pedidos e resumo mensal. Agosto R$ 13.915,83 com 68,4% orgânico.

## v4.3.2 — anterior
Base do ciclo O4.

---

## Nota de método — o que gera nova versão

A regra diz "cada modificação **relevante**", sem definir o que é relevante. Pela prática até aqui:

**Gera nova versão:** mudança estrutural (coluna, aba, fórmula, validação) · preço, custo, tarifa ou classificação de frete · fechamento de `Livro_Vendas`.

**Não gera** (mesma versão, atualizada no lugar): lançamento de venda no `Registro_Vendas` · preenchimento de status ou observação.

Sem essa distinção, um mês de lançamentos rotineiros produziria dezenas de versões — o que é ruído, não cadeia. **Pendente de confirmação do LEO.**
