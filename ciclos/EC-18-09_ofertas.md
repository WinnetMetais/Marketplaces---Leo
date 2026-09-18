# EC-007 — RECOMENDAÇÕES DE OFERTA DA AMAZON (18/09/2026)

**Modo:** C — investigação pontual. **Não** é otimização quinzenal.
**Pedido do LEO:** promoções para esta semana, para alavancar vendas.
**Fonte:** `relatorios/amazon/ofertas-18-09/deal_recommendations_18-09.xlsx` (baixado 18/09 15:32 UTC).
**Trava:** ANALISAR → RECOMENDAR. Nada aqui está autorizado. Execução só pelo LEO, e só vira real no Registro de Alterações.

---

## A. Resumo executivo

O arquivo traz **21 SKUs**, cada um oferecido em **dois formatos** (Oferta Relâmpago e Melhor Oferta) = 42 linhas. Três conclusões:

1. ⚠️ **O L2450-AML está com desconto de 29,6% e margem NEGATIVA de −6,2%** — prejuízo de **R$ 11,37 por unidade**. É a única recomendação fora do padrão de 10%, e é uma armadilha. **Excluir em qualquer formato.**
2. **Todas as 21 Oferta Relâmpago devem ser recusadas** — não por margem, mas pelo veredito **EC-004** já registrado: 5 deals no 9.9, **zero venda, 19 visualizações somadas**. Falha de exibição, não de conversão. O veredito diz textualmente para não repetir Relâmpago antes de entender a exibição.
3. **"Esta semana" não é possível.** O agendamento mais cedo do arquivo começa em **19/09** (personalizado) ou **21/09** (semanal). Hoje é 18/09.

---

## B. Qualidade dos dados

- **Margens calculadas** com o Simulador da Mestra v4.3.4, cenário **São Paulo Interior** (referência operacional). Fórmula conferida contra a linha EMB-03 (bate ao centavo).
- **Cenário RS Capital não usado** — é estresse de frete, não referência de decisão.
- ⚠️ **"Unidades comprometidas" = "Quantidade do vendedor"** em todas as linhas. É o estoque pré-preenchido, não um compromisso de venda. Conferir no fluxo antes de aceitar.
- **Tarifa Amazon** recalculada proporcionalmente ao preço da oferta, usando o % de tarifa vigente por SKU na Mestra. É estimativa — o valor real vem do extrato.
- O arquivo avisa que as recomendações **são atualizadas toda segunda-feira**; este download vale para esta rodada.

---

## C. Margem no preço da oferta — as 21, ordenadas pela pior

Margem-alvo de referência: **15% a 20%** (Parâmetros §2).

| SKU | Tabela | Oferta | Desc. | Lucro hoje | Lucro na oferta | Margem na oferta | Perda/un |
|---|---:|---:|---:|---:|---:|---:|---:|
| **L2450-AML** | 259,90 | 182,84 | **29,6%** | 48,15 | **−11,37** | **−6,2%** ❌ | 59,52 |
| L2430-B | 198,03 | 178,23 | 10% | 36,40 | 21,11 | 11,8% ⚠️ | 15,29 |
| L1618-T | 116,00 | 104,40 | 10% | 21,36 | 12,47 | 11,9% ⚠️ | 8,89 |
| L2030 | 119,22 | 107,30 | 10% | 22,86 | 13,71 | 12,8% ⚠️ | 9,14 |
| L2030-B | 153,72 | 138,35 | 10% | 29,58 | 17,74 | 12,8% ⚠️ | 11,83 |
| L2030-T | 143,13 | 128,82 | 10% | 27,73 | 16,72 | 13,0% ⚠️ | 11,01 |
| L2025-T | 132,90 | 119,61 | 10% | 25,90 | 15,69 | 13,1% ⚠️ | 10,21 |
| Q4070-A | 1.053,17 | 947,85 | 10% | 228,62 | 147,75 | 15,6% | 80,88 |
| EGC | 674,62 | 607,16 | 10% | 147,22 | 95,02 | 15,6% | 52,20 |
| L2460-CP | 335,68 | 302,11 | 10% | 75,87 | 50,11 | 16,6% | 25,77 |
| PG2460 | 248,75 | 223,88 | 10% | 56,31 | 37,34 | 16,7% | 18,98 |
| L3085-B | 642,24 | 578,02 | 10% | 146,65 | 96,97 | 16,8% | 49,67 |
| PXP | 167,89 | 159,50 | 5% | 33,32 | 26,76 | 16,8% | 6,56 |
| P3050 | 467,67 | 420,90 | 10% | 110,94 | 74,88 | 17,8% | 36,06 |
| L3070-B | 543,85 | 489,46 | 10% | 131,49 | 89,49 | 18,3% | 42,01 |
| PXM | 203,54 | 193,36 | 5% | 43,48 | 35,50 | 18,4% | 7,97 |
| L2460-AML | 290,17 | 261,15 | 10% | 72,07 | 49,86 | 19,1% | 22,22 |
| P4080 | 1.070,17 | 963,15 | 10% | 268,22 | 186,02 | 19,3% | 82,20 |
| P3070 | 616,18 | 554,56 | 10% | 160,07 | 112,43 | 20,3% | 47,64 |
| Q3060-A | 580,52 | 522,47 | 10% | 161,77 | 116,91 | 22,4% | 44,86 |
| P3060 | 511,42 | 460,28 | 10% | 143,36 | 103,89 | 22,6% | 39,47 |

**Padrão:** as **lixeiras pequenas caem abaixo do piso de 15%** — o desconto de 10% come 6 a 7 pontos de margem e sobra R$ 12 a R$ 21 por unidade. Os **SKUs de ticket alto absorvem** os 10% e ficam dentro ou acima da faixa.

**PXP e PXM têm desconto de só 5%** — perda de R$ 6,56 e R$ 7,97 por unidade. São as ofertas mais baratas do lote.

---

## D. O que o 9.9 já ensinou (EC-003 e EC-004)

| Formato | Resultado no 9.9 | Veredito registrado |
|---|---|---|
| **Melhor Oferta** | 3 de 11 venderam · R$ 1.196,21 · 7 un · 174 visualizações | **PARCIALMENTE POSITIVO** |
| **Oferta Relâmpago** | **0 de 5** · R$ 0,00 · 19 visualizações | **NEGATIVO** |

As três que venderam foram **PXP, PXM e PG2460** — suporte de extintor e porta-guarda-chuva. **Nenhuma lixeira converteu com oferta**, e lixeira é o grosso do catálogo e do tráfego.

Isso dá uma regra de seleção baseada em evidência, não em palpite: **repetir o que converteu, e não repetir o formato que não gerou nem tráfego.**

---

## E. Recomendação

### E1 — Formato: **somente Melhor Oferta**

Recusar as **21 linhas de Oferta Relâmpago**. O EC-004 é explícito e ainda não foi respondido: não se sabe por que 5 deals somaram 19 visualizações. Repetir agora gasta margem sem gerar informação.

### E2 — Excluir por margem

- **L2450-AML** — margem negativa. Em qualquer formato, em qualquer data.
- **L2430-B, L1618-T, L2030, L2030-B, L2030-T, L2025-T** — caem abaixo do piso de 15%. Ticket pequeno: dá-se R$ 9 a R$ 15 por unidade para ganhar pouco volume.

### E3 — Excluir por veredito pendente na O6 (22/09)

Colocar oferta nestes SKUs agora **contamina a leitura que decide o futuro das campanhas deles** em quatro dias:

- **EGC** — gatilho de pausa armado (0 vendas **E** CTR < 0,3%)
- **P3070** — gatilho O5-011, e **acabou de vender a preço cheio em 15/09** (R$ 616,18). Descontar agora entrega R$ 47,64 por unidade numa demanda que já estava convertendo.
- **L3070-B** — está no piloto de estratégia de lance (O5-009)

### E4 — **Recomendados: 5 SKUs, Melhor Oferta**

| SKU | Oferta | Margem | Por quê |
|---|---:|---:|---|
| **PXP** | 159,50 | 16,8% | Converteu com oferta no 9.9 (3 un). Desconto de 5%, perda de só R$ 6,56/un |
| **PXM** | 193,36 | 18,4% | Converteu com oferta no 9.9 (3 un, 50% de conversão em 6 sessões). Perda de R$ 7,97/un |
| **PG2460** | 223,88 | 16,7% | Converteu com oferta no 9.9 (1 un) |
| **P3060** | 460,28 | 22,6% | Maior folga de margem do lote. Ticket alto, sem veredito pendente |
| **Q3060-A** | 522,47 | 22,4% | Segunda maior folga. Ticket alto, sem veredito pendente |

**Opcional, 6º:** **P4080** (963,15 · margem 19,3%). Ticket mais alto do catálogo; uma venda paga o desconto de muitas. Não vendeu no 9.9, mas ali foi **Relâmpago** — como Melhor Oferta está por testar.

### E5 — Data: **começar em 21/09, não em 19/09**

A **Era O5→O6 fecha em 21/09** e a O6 é em 22/09. Uma oferta começando em 19/09 coloca três dias de preço promocional dentro da janela que decide os vereditos de lance, EGC e SP-PP — e infla conversão e ACOS artificialmente.

Começando em **21/09** (`seg. 2026-09-21 - 2026-09-27`), a contaminação fica em **um único dia** e a O6 lê uma Era praticamente limpa.

⚠️ **Marcar no fechamento da O6** que 21/09 teve oferta ativa nesses SKUs.

---

## E6 — Mecanismo alternativo: DESCONTO NO PREÇO (levantado pelo LEO, 18/09)

O LEO prefere o **desconto no preço** (preço riscado) à Melhor Oferta. **A seleção de SKUs, a margem e a data não mudam** — 10% custa o mesmo em qualquer mecanismo. O que muda:

| | Melhor Oferta | Desconto no preço |
|---|---|---|
| Exibição | Página de ofertas + selo | **Preço riscado na busca e na página** |
| Depende de recomendação da Amazon | Sim | **Não** |
| Duração | Janelas fixas | **Livre** |
| Taxa | Pode haver | **Sem taxa** |
| Empilha no mesmo ASIN | — | **Não** — é um ou outro |

**A favor:** o problema do 9.9 foi **exibição**; o preço riscado aparece **na busca**, sem depender de visita à página de ofertas. Para semana comum, tende a render mais visibilidade.

**Ressalvas:**
1. **Preço de referência precisa ser real** — a Amazon só exibe o risco se o preço de tabela foi praticado recentemente. Os 5 recomendados têm venda a preço cheio em setembro; SKU parado pode não exibir o risco.
2. **Vem de Amazon:** Melhor Oferta pontua (EC-003). Desconto no preço — **sem informação no repositório**. Não presumir.
3. **Atribuição do Ads:** **terceiro mecanismo**, regra desconhecida (oferta → preço da oferta; promo de quantidade → preço de tabela). **Conferir a primeira venda pedido a pedido.**
4. **Não comparável** com os 3 de 11 do 9.9 — formato e semana diferentes. Registrar como mecanismo próprio.
5. **Disciplina de data:** pode começar hoje, e é por isso que vale a regra — **21/09**, não antes.

**Se for por este caminho:** recusar o arquivo de recomendações inteiro (`Participando = Não` em tudo) e aplicar o desconto nos 5 SKUs, 21–27/09. Na Mestra, convenção do PG2460: preço de tabela + coluna de desconto + receita líquida.

## F. A oportunidade maior — Prime Day, 05 a 11/10

O arquivo lista **`Mega Ofertas Prime Day (2026-10-05 - 2026-10-11)`** como agendamento disponível.

Se a margem vai ser gasta, ela rende muito mais num evento com tráfego de plataforma do que numa semana comum. O 9.9 mostrou isso pelo avesso: **o problema das ofertas da Winnet não foi conversão, foi exibição** — e é exatamente exibição que um evento entrega.

**Sugestão:** tratar esta semana como rodada pequena (os 5 acima) e **preparar a rodada séria para o Prime Day**, decidida na O6 com a Era fechada e o veredito de EGC/SP-PP/P3070 na mão.

---

## G. Ações sugeridas — numeradas

| # | Ação | Confiança |
|---|---|---|
| 1 | **Recusar todas as 21 Oferta Relâmpago** (`Participando = Não`) | **ALTA** — veredito EC-004 registrado |
| 2 | **Recusar L2450-AML** em qualquer formato — margem −6,2% | **ALTA** — aritmética |
| 3 | **Recusar as 6 lixeiras pequenas** (L2430-B, L1618-T, L2030, L2030-B, L2030-T, L2025-T) — abaixo do piso de 15% | **MÉDIA** — é piso de referência, não regra rígida |
| 4 | **Recusar EGC, P3070 e L3070-B** nesta rodada — veredito pendente na O6 | **ALTA** — protege a leitura do ciclo |
| 5 | **Aceitar Melhor Oferta em PXP, PXM, PG2460, P3060, Q3060-A** | **MÉDIA-ALTA** |
| 6 | **P4080 como 6º, opcional** | **MÉDIA** |
| 7 | **Agendar para 21/09–27/09**, não 19/09 | **ALTA** |
| 8 | **Conferir "unidades comprometidas"** no fluxo antes de confirmar — o arquivo pré-preencheu com o estoque inteiro | **ALTA** |
| 9 | **Registrar como EC-007** no Registro de Alterações após a execução | **ALTA** |
| 10 | **Preparar a rodada do Prime Day (05–11/10)** na O6, com a Era fechada | **MÉDIA** |

---

## H. O que NÃO fazer agora

- **Não aceitar o arquivo como veio.** Ele traz 42 linhas com `Participando = Sim` pré-preenchido, incluindo a de margem negativa.
- **Não rodar Relâmpago** — inclusive na Black Friday — antes de responder por que 5 deals somaram 19 visualizações.
- **Não descontar o que está vendendo a preço cheio.** P3070 (15/09), L2025-T (15/09) e L1618-T (14/09) converteram sem oferta nos últimos quatro dias.
- **Não começar em 19/09.** Contamina a Era que fecha em 21/09.
- **Não tratar o desconto de 29,6% do L2450-AML como erro de digitação da Amazon** — é recomendação real do algoritmo, e o algoritmo não conhece o custo da Winnet.

---

## I. Dados que faltam

1. **Por que as Relâmpago do 9.9 tiveram só 19 visualizações** — pergunta aberta desde 14/09, e é o que destravaria o formato
2. **Veredito do cupom EMB** — a revisão estava marcada para **hoje, 18/09**, contra a linha de base do `ciclos/EC-04-09.md`. Não foi feita.
3. **Tarifa real** dos SKUs em oferta — as margens acima usam o % estimado da Mestra
4. **Estoque real** por SKU — "unidades comprometidas" veio preenchido com a quantidade do vendedor, sem conferência
