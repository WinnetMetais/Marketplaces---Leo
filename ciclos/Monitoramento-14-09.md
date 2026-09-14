# MONITORAMENTO SEMANAL — 14/09/2026 · MODO A

**Modo assumido:** A — monitoramento semanal. **Não** é otimização quinzenal.
Inclui a **leitura do evento 9.9** e a **conferência de estado das execuções da O5**, contrapartida acordada pela eliminação do monitoramento de 21/09.

## Janelas — não misturar

| Leitura | Janela | Fonte |
|---|---|---|
| Monitoramento semanal | **07–14/09** | export do Gerenciador |
| Evento 9.9 | **07–13/09** | painel de ofertas |
| Business Report | **inferida como 07–13/14/09** | ver limitação B1 |
| Era O5→O6 (em curso) | 09–21/09 | fecha na O6 |

⚠️ **07/09 pertence também à Era da O5** (26/08–07/09). A venda do PG2460 aparece nas duas janelas — **não somar**.

---

## A. Conferência de estado da O5 — ✅ tudo firme

| Execução | Estado em 14/09 | |
|---|---|---|
| O5-004 · PI L2470-CZ-o425/08 | PAUSADO | ✅ |
| O5-005 · PI PG3070-o425/08 | PAUSADO | ✅ |
| O5-006 · auto PXM-o425/08 | PAUSADO | ✅ |
| O5-012 · auto SP-01-o116/07 | PAUSADO | ✅ |
| O5-009 · L3070-B | ATIVADO, dinâmicos | ✅ |

**12 ativas / 68 pausadas** — igual ao previsto. **Nenhum zumbi.**

Duas pausadas registram atividade na janela: auto PXM-o425 (1 clique, R$ 1,31) e PI L2470-CZ (1 clique, R$ 0,38). **Não é divergência** — a janela começa em 07/09 e as pausas foram em 09/09; os cliques são de antes.

---

## B. Qualidade dos dados

**B1 — A janela do Business Report não vem declarada no arquivo.** Infiro **07–13/09** pela bijeção com a Mestra (ver C), mas **confirmar no console**. Se for outra, a leitura de participação de Ads muda.

**B2 — Faltam Termos de Pesquisa e Segmentação.** Sem eles não dá para fechar o **O5-014** (a perna L2025-B no termo da 6B) nem ler os termos da semana.

**B3 — Gasto acumulado de setembro não disponível.** O export de 07–14/09 dá R$ 92,67, mas **sobrepõe** os dias 07–08 já contados nos R$ 108,08 do console até 08/09. **Não somar.** Preciso do número do console para o controle do teto.

**B4 — Divergência de R$ 65,64 entre a Mestra e o Business Report.** Detalhada em C.

---

## C. Ads × vendas totais (janela 07–14/09)

| | R$ | Pedidos | Un. |
|---|---:|---:|---:|
| Vendas totais (BR) | **1.854,36** | 6 | 10 |
| Atribuídas a Ads | **1.594,56** | 5 | — |
| Não atribuído | **259,80** | 1 | 2 |
| **Participação de Ads** | **86,0%** | | |
| Gasto Ads | 92,67 | | |
| **ACOS** | **5,81%** | **TACOS** | **5,00%** |

287 sessões · 6 pedidos · **conversão 2,09%** (referência derivada da conta: ~1,72%).

**Quem vendeu, por campanha:**

| Campanha | Compras | Vendas |
|---|---:|---:|
| Geral DBA-o59/09 | 2 | R$ 622,23 |
| **PI PXM-o311/08** | **1** | **R$ 519,03** |
| Extintor manual | 1 | R$ 302,20 |
| auto PXP-o311/08 | 1 | R$ 151,10 |

A composição da Geral fecha exata: **398,35 + 223,88 = 622,23** — L2470-B e PG2460. O único pedido sem atribuição é o **L1618-B de 13/09 (R$ 259,80)**.

### ⚠️ C1 — Divergência isolada de R$ 65,64 na Mestra

A bijeção fecha em **6 itens e 10 unidades**, com uma única diferença de valor:

| | Valor |
|---|---:|
| Mestra, janela 07–14/09 | R$ 1.920,00 |
| Business Report | R$ 1.854,36 |
| **Diferença** | **R$ 65,64** |

Está toda na **linha L61 — PXM, 13/09, 3 unidades**:

- **Lançado:** 610,62 − desconto 25,95 = **584,67**
- **BR e painel de ofertas:** **519,03** = 610,62 × 0,85, ou seja **Melhor Oferta −15%**
- **O desconto correto é R$ 91,59, não R$ 25,95**

O 25,95 é exatamente **5% de 519,03** — a promo de quantidade, não a Melhor Oferta. Parece que foi lançado o desconto errado dos dois.

**Correção:** desconto **91,59**, receita **519,03**. Mesmo padrão do PG2460 na O5 — e a bijeção pegou de novo.

**Também:** as linhas **L61 e L62 estão com a coluna STATUS vazia**. Marcar `VÁLIDO`.

---

## D. Leitura do 9.9 — o veredito

### D1 — Oferta Relâmpago: **fracasso total**

| Deals | Vendas | Unidades | Visualizações |
|---:|---:|---:|---:|
| **5** | **R$ 0,00** | **0** | **19** |

**Nenhuma das cinco vendeu.** As cinco terminaram. Dezenove visualizações somadas nos cinco dias de exibição.

### D2 — Melhor Oferta: 3 de 11

| Deals | Vendas | Unidades | Visualizações |
|---:|---:|---:|---:|
| **11** | **R$ 1.196,21** | **7** | **174** |

Venderam três, identificados por **valor e unidades batendo exatamente** com o Business Report:

| SKU | Un. | Receita | Desconto real | Sessões |
|---|---:|---:|---:|---:|
| **PXP** (extintor 4 kg) | 3 | R$ 453,30 | −10,0% | 23 |
| **PXM** (extintor 6 kg) | 3 | R$ 519,03 | **−15,0%** | 6 |
| **PG2460** (porta guarda-chuva) | 1 | R$ 223,88 | −10,0% | 12 |

**Os três são suporte de extintor e porta guarda-chuva. Nenhuma lixeira vendeu com oferta** — e lixeira é o grosso do catálogo e do tráfego.

### D3 — Atribuição ao preço da oferta: **CONFIRMADA**

| SKU | Preço de tabela | Receita real | O que o Ads registrou |
|---|---:|---:|---:|
| PXP ×2 | 335,78 | 302,20 | **302,20** ✅ |
| PXP ×1 | 167,89 | 151,10 | **151,10** ✅ |
| PXM ×3 | 610,62 | 519,03 | **519,03** ✅ |
| PG2460 | 248,75 | 223,88 | **223,88** ✅ |

Somados aos casos anteriores, são **5 pedidos, 3 SKUs, 4 campanhas**. A inferência vira regra:

> **Oferta Relâmpago e Melhor Oferta são atribuídas ao PREÇO DA OFERTA.** A atribuição a preço de tabela, medida em 31/08, vale para a **promoção de quantidade** — mecanismo diferente.

### D4 — Vem de Amazon

O programa exige **pelo menos 1 venda por oferta no trimestre**. **13 das 16 não geraram venda.** Só PXP, PXM e PG2460 pontuam.

---

## E. Diagnóstico por SKU — o que mudou

| SKU (ASIN) | Sessões | Un. | Leitura |
|---|---:|---:|---|
| **L2025-T** (B0H6C5CTSC) | **52** | **0** | ⚠️ Maior tráfego da semana, **zero venda, com Melhor Oferta ativa**. Na Era da O5 fez 47 sessões e 4 unidades. Era o motor de vendas. |
| **P3070** (B0H63FKGPJ) | **27** | **0** | Relâmpago rodou e não converteu. A PI gastou R$ 13,98 em 13 cliques sem venda. |
| **L1618-T** (B0H3QQLFFY) | 26 | 0 | Zero venda na semana, e vem da devolução de 09/09. |
| **PXP** (B0H4S7ZKXS) | 23 | 3 | Vendeu com oferta. |
| **Q2460-B** (B0H7YNMBBK) | 14 | 0 | Segue sem converter. |
| **EGC** (B0H4WLDNYD) | 13 | 0 | Oferta ativa, zero venda. |
| **P4080** (B0H63W8G49) | 13 | 0 | Relâmpago, zero venda. |
| **P3060** (B0H4NLBG1Y) | 13 | 0 | Relâmpago, zero venda. |
| **PG2460** (B0H5MDZQDG) | 12 | 1 | Vendeu com oferta. |
| **PXM** (B0H4S3FHG6) | 6 | 3 | **3 unidades em 6 sessões** — 50% de conversão. |

**O L2025-T é o achado que pede atenção.** 52 sessões, oferta de −15% no ar, zero venda. Não decido nada com uma semana — mas se repetir na O6, deixa de ser ruído.

---

## F. Vereditos das entradas em maturação

| ID | Resultado | Veredito proposto |
|---|---|---|
| **EC-003** — 11 Melhor Oferta | 3 de 11 venderam · R$ 1.196,21 · 7 un · 174 visualizações | **PARCIALMENTE POSITIVO** — as três que venderam são extintor e porta-guarda-chuva; nenhuma lixeira converteu. 8 das 11 não pontuam no Vem de Amazon. |
| **EC-004** — 5 Relâmpago | **Zero venda** · 19 visualizações no total | **NEGATIVO** — o formato não gerou nem tráfego. Não repetir Relâmpago sem entender por que a exibição foi tão baixa. |

Com isso o Registro sai de 20 para **18 em maturação e 23 avaliadas** (42 no total, 1 bloqueada).

---

## G. Sugestões — nada urgente

| # | Item | Sugestão | Confiança |
|---|---|---|---|
| 1 | **Mestra L61** | Corrigir o PXM de 13/09: desconto **91,59**, receita **519,03** | ALTA |
| 2 | **Mestra L61 e L62** | Preencher STATUS = `VÁLIDO` | ALTA |
| 3 | **EC-003 / EC-004** | Lançar os vereditos acima no Registro | ALTA |
| 4 | **Parâmetros §6** | Promover a atribuição ao preço da oferta de inferência para **regra confirmada (5 pedidos)** | ALTA |
| 5 | **Relâmpago** | **Não programar Relâmpago na Black Friday** sem antes entender as 19 visualizações em 5 deals | MÉDIA |
| 6 | **L2025-T** | Vigiar. Se na O6 repetir tráfego alto com zero venda, vira investigação de conversão | MÉDIA |

---

## H. O que NÃO fazer agora

- **Não mexer em lance nem orçamento.** É monitoramento, não otimização — e a Era O5→O6 está no meio.
- **Não acionar o gatilho do O5-011 (P3070).** O gatilho exige ≥15 cliques **na Era completa** (09–21/09); a janela de hoje tem 13, e a Era não fechou.
- **Não concluir que Ads virou 86% da receita.** São 6 pedidos numa semana. Na Era da O5 eram 38%. Janela curta não é tendência.
- **Não recalibrar régua com o ACOS de 5,81%.** Está inflado pela concentração de vendas com oferta.
- **Não somar a janela 07–14/09 com a Era da O5** — 07/09 está nas duas.

---

## I. Dados que faltam

1. **Janela exata do Business Report** (B1)
2. **Termos de Pesquisa e Segmentação** da semana — sem eles o O5-014 fica sem decisão
3. **Gasto acumulado de setembro no console** (B3)
4. **Por que as Relâmpago tiveram só 19 visualizações** — é a pergunta central do EC-004
5. **Status do GS1** — portão do piloto de migração na O6, em 8 dias
