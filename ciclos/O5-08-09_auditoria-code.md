# O5 — 08/09/2026 · AUDITORIA DO DIAGNÓSTICO (Claude Code)

**Objeto:** `ciclos/O5-08-09_diagnostico-chat-canonico.md`
**Fontes conferidas:** `relatorios/amazon/o5-08-09/` (9 arquivos) + `dados/Planilha_Mestra_Winnet_v4_3_4.xlsx`
**Método:** recontagem direta dos CSV e da Mestra. Nenhum número aceito por citação.
**Veredito geral:** ✅ **APROVADO com 3 correções pontuais.** Nenhuma delas derruba uma decisão da lista G.

---

## 1. Conferido e correto

Cada número abaixo foi recontado da fonte primária e bate.

### Era (26/08–07/09) — export do Gerenciador

| Afirmação | Recontagem | |
|---|---|---|
| Gasto R$ 210,96 | R$ 210,96 | ✅ |
| Vendas atribuídas R$ 1.102,15 | R$ 1.102,15 | ✅ |
| 6 compras | 6 | ✅ |
| ACOS 19,1% | 19,14% | ✅ |
| 16 campanhas ativas | 16 ATIVADO / 64 PAUSADO em 80 linhas | ✅ |
| Impressões derivadas (export com Impressões = 0) | coluna zerada nas 80 linhas — derivação necessária e declarada | ✅ |
| Geral ACOS de Era 21,7% | 137,16 / 632,81 = 21,68% | ✅ |
| TACOS 7,3% | 210,96 / 2.897,92 = 7,28% | ✅ |
| Projeção do mês R$ 480–500 | 210,96/13 = R$ 16,23/dia × 30 = R$ 487 | ✅ |
| Pré-Era R$ 11,1/dia, +46% | (411,58−210,96)/18 = R$ 11,15/dia; +45,6% | ✅ |

### Business Report por ASIN

430 sessões · 14 unidades · 11 itens de pedido · **R$ 2.897,92** em 75 ASINs. Participação de Ads **38,03%**; não atribuído **R$ 1.795,77**. Todos ✅.

### Bijeção BR × `Registro_Vendas` — e a correção G22

`Registro_Vendas` na Era: **11 linhas, 14 unidades, R$ 2.922,79**.
BR: R$ 2.897,92. **Diferença = R$ 24,87 = exatamente 248,75 − 223,88.**

A correção proposta em G22 (PG2460 de 07/09 lançado a R$ 248,75, praticado R$ 223,88) **fecha a bijeção ao centavo**. Não é inferência: é a única diferença entre as duas fontes. ✅ **Confirmada.**

### 30 dias (08/08–06/09)

564 cliques · R$ 411,58 · R$ 3.088,41 · 8 compras — **idêntico** entre Campanhas e Produtos Anunciados ✅.
Os 13 SKUs da tabela E batem um a um em cliques, custo e compras ✅.

### Geral por segmentação

| Segmentação | Lance | 30d: cli / R$ / vendas / compras | ACOS 30d | ACOS vitalício |
|---|---:|---|---:|---:|
| close-match | 0,45 | 24 / 11,95 / 478,81 / 2 | **2,5%** | 6,9% |
| loose-match | 0,54 | 238 / 156,31 / 2.007,36 / 3 | 7,8% | 7,6% |
| substitutes | 0,54 | 167 / 107,60 / 132,90 / 1 | **81,0%** | 20,9% |
| complements | 0,45 | 0 | — | — |

Todos ✅. `substitutes` = **39,0%** do gasto da Geral ✅. Loose sem halo: 156,31/265,80 = 58,8% ✅. Geral 30d sem halo: 31,44% ✅.
Os lances 0,45/0,45/0,54/0,54 conferem — **G2 (−17%) e G3 (+20%) estão aritmeticamente corretos**.

### Vitalício (12/06–07/09)

Janela real do arquivo conferida: **primeira data 12/06, última 07/09** ✅ — é vitalício de verdade, não 30d renomeado.
Totais 2.157 cliques / R$ 1.853,43 / 30 compras / R$ 9.767,92 ✅.
Geral 765 cliques / 14 compras ✅.

**Contagem de alvos por PI — as 7 exatas:** P3070 97 · L2470-CZ 32 · PG3070 83 · PXM-o3 52 · L2030-B-o3 88 · P3050 103 · P3060 49 ✅.

**Régua formal de alvo (15+ cliques vitalícios sem venda):** nas 7 PIs, o alvo com mais cliques tem **12** (B09YDLC69D). Nenhum atinge 15. A leitura *"aplicada, com resultado nulo — não bloqueada"* está **correta** ✅.
Triagem 5–14 na PI P3070: B09YDLC69D 12 · B0CYWMQ93Y 7 · B0BHMZBZW9 5 · B0778TD2LY 5 ✅. PI L2470-CZ: B07WSSFQNV 5 ✅.

### Margens do Simulador (SP Interior, v4.3.4)

**16 de 16 conferidas, todas exatas** (Q2460-B 19,36% · L2025-T 19,49% · P3070 25,98% · P3060 28,03% · L3070-B 24,18% · L2460-CP 22,60% · e as demais). ✅

### Outros

- **EGC 361 → 2.391 impressões:** conferido contra `relatorios/amazon/ads_30d_campanhas.csv` (O4), que registra 361 em 11–23/08 ✅. CTR 3/2.391 = 0,125% ✅.
- **SP-PP:** todos os termos via `substitutes` terminam **≤25/08**; os via `loose-match` correm **26/08–06/09**. A leitura de que a O4-001 funcionou na segmentação e o problema migrou para a loose está **confirmada pelas datas** ✅.
- **Parcela de impressões:** Extintor rank 1 / 100% em 6 impressões · Bituqueiras 100% em 4 e 7 · Cinzeiros 100% em 7 · L3070-B "lixeira basculante 50 litros" **42,44%** ✅.

---

## 2. Correções (3)

### C1 — Falta um termo vencedor na tabela F

Os 30d têm **8 termos com compra**; a tabela lista **7**. Falta:

| Termo | Segmentação | SKU | cli / R$ / compras / vendas |
|---|---|---|---|
| **lixeira cromada para banheiro com tampa 5 litros** | loose-match | L2025-T | 1 / 0,65 / 1 / R$ 132,90 |

Prova de fechamento: o relatório de Campanhas registra **8 compras** nos 30d, e há exatamente 8 termos com 1 compra cada. Sem esse, a soma da tabela dá 7.

**Impacto:** baixo — é mais um termo de loose-match convertendo para o L2025-T, o que **reforça** o diagnóstico da Geral. Nenhuma decisão muda.

### C2 — Dois números de F são por linha, não por termo — e isso esconde gasto sem conversão

A tabela F diz "Termo", mas dois valores vieram de **uma linha do CSV** (o SKU que converteu), não do termo inteiro:

| Termo / alvo | Na tabela F | Real (termo inteiro) | O que ficou de fora |
|---|---|---|---|
| lixeira banheiro 7 litros | 3 cli / R$ 5,19 | **7 cli / R$ 11,71** | **L2025-B: 4 cli, R$ 6,52, zero venda** |
| B076VYNP9W (ASIN) | 4 cli / R$ 2,30 | **14 cli / R$ 6,30** | **L1618-T: 10 cli, R$ 4,00, zero venda** |

**Impacto — este é o único achado com consequência operacional:**

1. A palavra-chave `lixeira banheiro 7 litros` da 6B serve **dois SKUs**. O L2025-T converteu; o **L2025-B levou 56% do gasto do termo sem nenhuma venda**. Ao ler o termo como "3 cliques, R$ 5,19, 1 venda", o diagnóstico apresenta a 6B mais eficiente do que ela é: o custo real do termo é **R$ 11,71**, não R$ 5,19. O piloto dinâmico continua positivo — mas o CPC efetivo por venda é o dobro do que a tabela sugere.
2. O alvo `B076VYNP9W` está classificado como **vencedor** e por isso **não entrou na triagem** — mas sua perna L1618-T tem **10 cliques vitalícios sem venda**, exatamente o mesmo volume do `B076PN14B6`, que a própria F manda revisar.

**Sugestão:** na leitura de 14/09, olhar `lixeira banheiro 7 litros` no nível do SKU e decidir se o L2025-B fica no grupo de anúncios da 6B.

### C3 — SP-PP: 6 termos irrelevantes na Era, não 3

Além de "saboneteira parede", "suporte planta parede" e "mandalas decorativas parede", a `loose-match` trouxe na Era: **"mop para limpar paredes"** (02/09), **"organizador de fios parede"** (05/09) e **"suporte secador de cabelo parede"** (28/08–04/09).

**Impacto:** nenhum contra — **reforça G13**. A loose-match do SP-PP produziu o dobro de lixo semântico do que a tabela mostra.

---

## 3. Observação (não é erro)

**Competição interna no termo "lixeira basculante 50 litros".** Ele é servido ao mesmo tempo pela **Geral** (19 impressões, 4 cliques) e pela **manual L3070-B** (54 impressões, 3 cliques). O share de **42,44%** é do termo na conta e **soma as duas** — não é share só da manual.

Isso não invalida G10 (migrar a L3070-B para lance dinâmico), mas muda o que se espera dela: parte dos "leilões a capturar" pode ser disputada contra a própria Geral. Vale registrar a leitura antes de executar, e medir o efeito olhando as duas campanhas juntas.

---

## 4. Nota sobre a régua de alvo

Existem **19 alvos com ≥15 cliques vitalícios e zero venda** no arquivo vitalício — mas **nenhum é alvo de PI**. São segmentações de automáticas (`substitutes`, `loose`, `close`, `complements`) e alvos de categoria, e **todos estão em campanhas já pausadas**, com uma única exceção: `auto SP-PP-o425/08 / substitutes` (16 cliques, 0 venda) — cuja segmentação **já foi pausada pela O4-001**.

A régua do Playbook é de **alvo de PI**, então a aplicação do diagnóstico está correta e o resultado nulo é real. Registro o número só para que ele não apareça no futuro como "descoberta nova".

---

## 5. Método — o que o diagnóstico acertou por construção

- **Bloco B declarou a limitação certa e mais fácil de esconder:** o export do Gerenciador veio com **Impressões = 0 nas 80 linhas**, e as impressões da Era foram derivadas (cliques ÷ CTR) e marcadas com "~". Conferi a coluna: está zerada mesmo.
- **Não se apoiou na tese "páginas boas"** para o desempate do Q2460-B, e disse isso explicitamente no texto. Era o risco que esta auditoria tinha sinalizado no prompt de abertura.
- **Régua de alvo declarada aplicada com resultado nulo, não bloqueada** — e a recontagem confirma que é aplicada mesmo.
- **Não somou vendas atribuídas entre relatórios**: usou Campanhas para a Era, Produtos Anunciados para SKU e o vitalício só para leitura por alvo, com a ressalva explícita de não somar.
- **Correção de contagem assumida:** "15 campanhas ativas" na documentação estava errado; são 16. Confirmado no export.

---

## 6. O que a auditoria NÃO cobriu

- **Não conferi** as propostas de "Resultado pós-alteração" das entradas EM MATURAÇÃO uma a uma contra a janela pós-execução de cada ação — conferi por amostragem (O4-004, O4-005, O4-010, O4-012, O4-014, O4-015) e todas batem com os números que já validei acima.
- **Não há BR por data** — a separação dos 5 dias mortos permanece impossível, como o próprio bloco I registra.
- **Não avaliei o mérito** das decisões de G. Auditoria é de dado e de método; a decisão é do LEO, item a item.

---

## 7. Parecer sobre a lista G (advisório — a aprovação é do LEO)

**20 SIM · 3 AJUSTAR.** Nenhum ajuste muda a ação; os três corrigem justificativa ou registro.

| # | Parecer | Base conferida |
|---|---|---|
| G1 | SIM | Gasto R$ 10,55/dia contra teto de R$ 90/dia |
| G2 | SIM | substitutes 167 cli / 1 compra / ACOS 81% / 39% do gasto |
| G3 | SIM | close-match 2,5% em 30d e 6,9% vitalício (128 cli, 4 compras) |
| G4 | SIM | Export confirma lance por segmentação; o padrão não é usado |
| G5 | SIM | Vitalício 18 cli / 0 em 32 alvos |
| G6 | SIM | Vitalício 8 cli / 0 em 83 alvos |
| **G7** | **AJUSTAR** | ver abaixo |
| G8 | SIM | Gatilho bem formado, mas já quase satisfeito — ver nota |
| G9 | SIM | Era 11 cli/13d contra pré-Era 6 cli/15d, 1ª venda |
| **G10** | **AJUSTAR** | ver abaixo |
| G11 | SIM | Share 100% em todos os termos com impressão |
| G12 | SIM | Gasta R$ 2,86 em 30d |
| G13 | SIM | 6 termos irrelevantes na loose (não 3) — reforça |
| G13b | SIM | L2025-B: 4 cli / R$ 6,52 / 0 venda no mesmo termo |
| G14 | SIM | Nenhum alvo ≥15 vit.; triagem 12/7/5/5 |
| G15 | SIM | Investigação, custo zero |
| G16 | SIM | PXP-o3 26 cli/3 compras/R$ 539,32 · L2030-B-o3 16 cli/3 compras/R$ 497,34 |
| G17 | SIM | ASIN ausente do BR da Era (0 sessões) — prioridade |
| **G18** | **AJUSTAR** | ver abaixo |
| G19 | SIM | 1 venda em close-match; candidato, não decisão |
| G20 | SIM | Apoiado no tráfego medido, não na tese não documentada |
| G21 | SIM | Condicionado a GS1, como está escrito |
| G22 | SIM | Fecha a bijeção ao centavo (R$ 24,87) |
| G23 | SIM | 16 ativas conferido no export |

### G7 — AJUSTAR a justificativa (a pausa continua correta)

A auto PXM-o425/08 **tem venda vitalícia: R$ 610,62, 1 compra**. Conferido no `Registro_Vendas`: é o pedido de **08/07, 3 unidades de PXM** — o maior pedido individual de PXM da série.

O motivo escrito em G7 ("Era 2 cli/0; redundante") **não menciona isso**. O contrapeso vitalício do Playbook exige olhar o histórico antes de pausar campanha que já vendeu.

A pausa continua defensável — a redundância é real (o Extintor manual converteu na Era, a PI PXM-o3 tem 1 venda vitalícia de 20/07, a auto PXP-o3 tem 3). Mas **a linha do Registro precisa dizer que o contrapeso foi aplicado e superado pela redundância**, senão em um ciclo futuro essa pausa vai ser relida como "campanha que nunca vendeu".

### G10 — AJUSTAR a expectativa (a migração continua defensável)

O termo "lixeira basculante 50 litros" é servido **simultaneamente** pela Geral (19 impressões, 4 cliques) e pela manual L3070-B (54 impressões, 3 cliques). O share de **42,44% é do termo na conta e soma as duas**.

Migrar a manual para lance dinâmico pode aumentar a disputa **contra a própria Geral**. Aprovar sim, mas **medir o efeito olhando as duas campanhas juntas** — e registrar isso na linha, para não creditar à migração um ganho que saiu do bolso da Geral.

### G18 — AJUSTAR a data

As duas vendas vitalícias do L2460-CP são **19/06** e **19/08** (ambas R$ 335,68, conferidas no `Registro_Vendas`). G18 escreve "18/06". Corrigir antes de lançar, para a linha do Registro nascer certa.

A promoção para Manual continua recomendada: 2 vendas reais, margem 22,6%, custo de aquisição vitalício de R$ 0,10 no termo.

### Nota sobre G8

O gatilho proposto é **0 vendas E CTR < 0,3%**. O CTR atual da EGC já é **0,125%** — ou seja, se a Melhor Oferta em curso não converter, o gatilho dispara automaticamente na O6. Na prática G8 é "mais uma Era e sai", com custo de R$ 2,64 em 30 dias. É um desvio de contrato bem delimitado, não um contrato aberto.

---

## 8. Três pendências do bloco I resolvidas em 08/09 (pós-parecer)

### I.2 — Lances por segmentação da Geral antes de 25/08 · ✅ RESOLVIDA no repositório

Não precisou de console. O export de segmentação da O4 (`relatorios/amazon/ads_30d_segmentacao.csv`, tirado em 25/08) traz a coluna `Lance do segmento`:

| Segmentação | 25/08 | 08/09 | Mudou? |
|---|---:|---:|---|
| close-match | 0,45 | 0,45 | não |
| complements | 0,45 | 0,45 | não |
| loose-match | 0,54 | 0,54 | não |
| substitutes | 0,54 | 0,54 | não |

**Nenhum lance de segmentação mudou entre a O4 e a O5.**

E o argumento fecha a questão mesmo com a ambiguidade de horário do export (tirado no próprio dia 25/08): a O4-015 alterou o **lance padrão da campanha** de 0,40 para 0,48. Se as segmentações seguissem o padrão, leriam **0,40 antes** e **0,48 depois**. Leem **0,45 e 0,54 nas duas fotos** — nunca acompanharam o campo padrão.

**Veredito da O4-015 pode sair de "NÃO AVALIÁVEL" para "INERTE — confirmado por evidência".**

Reforço colateral para G2: no export da O4 (25/07–23/08) a `substitutes` tinha **100 cliques e zero compras**. Vitalício acumulado: 239 cliques / 3 compras / ACOS 20,9%.

### I.3 — Status do SP-01 · ✅ RESOLVIDA — e o diagnóstico estava errado no nível

O diagnóstico (D e G17) atribuiu a entrega zero a *"provável inelegibilidade/supressão recorrente do ASIN"*. **Não é o ASIN.** Nos Produtos Anunciados de 30d:

| Onde o SP-01 (B0H5Z1XK3V) é anunciado | Janela | Impressões |
|---|---|---:|
| **Manual Bituqueiras Space** | 20/08 – 04/09 | **14** |
| auto SP-01-o116/07 | 11/08 – **17/08** | 172, e nada depois |

O anúncio do SP-01 **está servindo** — na Bituqueiras, inclusive depois da data em que a auto parou. São três camadas, e só a do meio está travada:

1. **Listing / oferta** — **ativo** (confirmado pelo LEO no Seller Central).
2. **Anúncio dentro da auto SP-01-o116/07** — **suspenso** (visível ao abrir a campanha no console).
3. **Anúncio do mesmo SKU na Bituqueiras** — **funcionando**.

Confere com o histórico: contestação negada em 2ª análise, caso encerrado. A marca de política ficou **naquele anúncio**, não no produto.

⚠️ **Por que o diagnóstico não podia ver isso:** no export de 08/09 a auto SP-01 aparece como `Estado = ATIVADO`, `Status = Em inserção`. **O export não expõe suspensão no nível do anúncio** — só o console mostra. Registrar como limitação permanente da fonte.

**Correção de leitura desta auditoria:** em mensagem anterior eu afirmei que a premissa do O4-R03 ("ASIN requalificado ~19–20/08") não se sustentava nos dados. **Estava errado.** A requalificação do ASIN foi real; o que não voltou foi o anúncio dentro daquela campanha. São camadas distintas.

**G17 — motivo corrigido, ação inalterada:** pausar a auto SP-01-o116/07 por **anúncio suspenso por política dentro da campanha** — não é falha de desempenho nem supressão do ASIN. O listing segue ativo e o SP-01 continua anunciado pela Bituqueiras. Pausar **não** tira o SKU do ar em Ads.

**O4-R03 — veredito ajustado:** "executada, sem efeito — bloqueio no nível do anúncio, não da campanha".

### I.1 — Gasto de setembro · ✅ RECEBIDO (console, 01–08/09)

| Métrica | Valor |
|---|---:|
| Custo total | **R$ 108,08** |
| Compras | 3 |
| ROAS | 7,66 |
| CPC médio | R$ 0,79 |
| Vendas atribuídas (derivado) | ≈ R$ 828 |
| ACOS (derivado) | ≈ **13,1%** |

**Controle do teto de R$ 1.000/mês:** o dia 08/09 está incompleto, então a projeção vai como faixa — R$ 13,51/dia (8 dias corridos) a R$ 15,44/dia (7 dias completos) → **R$ 405 a R$ 463 no mês, ou 41% a 46% do teto**. Sem pressão de orçamento.

Comparação com a projeção da Era (R$ 487/mês, a R$ 16,23/dia): setembro está rodando **mais barato** que a Era, que carregava 26–31/08.

⚠️ **Não calibrar régua com este ROAS.** A janela pega o início do 9.9 (07–13/09) e o mecanismo de atribuição de oferta ainda é inferência de 1 pedido. A leitura vale em **14/09**, como o próprio diagnóstico previu.

---

## 9. Divergência nova entre a documentação e a conta — SP-T na Bituqueiras

O `CLAUDE.md` §12 afirma: *"Campanhas SP-01 e SP-T seguem pausadas, com reativação vinculada à resolução do caso 21652133321."*

Mas a **Manual Bituqueiras Space** anuncia **4 SKUs** entre 20/08 e 04/09, e dois deles são justamente esses:

| SKU | ASIN | Impressões | Cliques |
|---|---|---:|---:|
| SP-FF | B0H5X821QS | 11 | 0 |
| **SP-T** | B0H3MGC36H | 12 | 0 |
| **SP-01** | B0H5Z1XK3V | 14 | 0 |
| SP-PP | B0H5X97DR7 | 12 | 2 |

O caso 21652133321 **não foi resolvido** — foi encerrado com contestação negada (25/08). Ou seja: a regra escrita e o estado da conta divergem.

**Impacto financeiro: desprezível** — a Bituqueiras inteira gastou R$ 0,91 em 30 dias. **Impacto de governança: real** — uma regra do `CLAUDE.md` que a operação não cumpre deixa de ser regra.

**Encaminhamento (decisão do LEO):** ou a Bituqueiras passa a excluir SP-01 e SP-T, ou o `CLAUDE.md` é corrigido para dizer que a trava vale para as **campanhas dedicadas** SP-01/SP-T e não para o SKU dentro de outras campanhas. Não decidir agora deixa a contradição aberta, o que o §14 do próprio `CLAUDE.md` proíbe.

---

## 10. Auditoria do PACOTE DE FECHAMENTO (recebido em 08/09)

**Objeto:** `ciclos/O5-08-09_pacote-fechamento-chat-canonico.md`
**Veredito:** ✅ **APROVADO com 3 correções.** Nenhuma altera uma ação; duas corrigem números que iriam para dentro do Registro de Alterações, onde erro fica.

### Conferido e exato

| Item | Afirmação do pacote | Recontagem |
|---|---|---|
| §9 inventário de estratégias | 75 dinâmicas · 4 fixas · 1 só redução (após O5-009) | Export de hoje: **74 · 5 · 1**. Com a L3070-B migrando de fixo para dinâmico → **75 · 4 · 1** ✅ |
| §10 campanhas ativas | 12 (eram 16; O5 pausa 4) | 16 − 4 = 12 ✅ |
| §12.3 frete na Era | 9 observações Qtd=1, razão 46–100%, mediana ~63% | **9 obs · 46,3% a 99,8% · mediana 62,9%** ✅ |
| §3 lances | Extintor 2,60 · 6B 1,50/1,20 · Cinzeiros 1,60/1,30 · Bituqueiras 1,20/1,00 · L3070-B 1,20/1,00 | Todos conferem no relatório de Segmentação ✅ |
| §3 Geral | close 0,45→0,54 · loose 0,54 · substitutes 0,54→0,45 · complements 0,45 | ✅ |
| §8 Era O5→O6 | 09–21/09 = 13 corridos, 9 úteis; 21/09 segunda, 22/09 terça | ✅ (calendário conferido) · 05/10 é a 1ª segunda de outubro ✅ |
| Contagem do Registro | 23 → 21 avaliadas + 2 em maturação | 4 R + 15 O4 + 4 EC = 23 ✅ |
| O5-003 | Gasto da Era ≈ 12% do orçamento | 10,55 / 90 = 11,7% ✅ |
| 3ª compra de setembro | é de 08/09, fora da Era | Era tem 2 compras em setembro (01/09 e 07/09); o console 01–08/09 tem 3 ✅. **Acertou em não inferir o SKU.** |

### C4 — O5-010 traz um CPC no campo de lance

A linha registra `Estado / valor anterior = "Ativa (lance 1,28 médio CPC)"`.

**O lance das 4 segmentações da auto SP-PP-o425/08 é R$ 1,32** (relatório de Segmentação, coluna `Lance do segmento`, idêntico em close/loose/substitutes/complements). O **1,28** é o CPC da Era — R$ 8,98 ÷ 7 cliques = R$ 1,283.

São coisas diferentes: o lance é configuração, o CPC é resultado. Numa linha do Registro, `valor anterior` tem que ser a configuração — senão a O6 vai comparar contra um número que nunca existiu no console.

**Correção:** `Ativa — lance 1,32 nas 4 segmentações`.

### C5 — "100% dos cliques da Era vieram da loose" é falso

O5-010 afirma isso. O relatório de termos, filtrado por janelas dentro da Era, dá:

| Segmentação | Cliques | Custo |
|---|---:|---:|
| loose-match | **6** | R$ 7,66 |
| *(não localizado nos termos)* | 1 | R$ 1,32 |
| **Era (export da campanha)** | **7** | **R$ 8,98** |

São **6 de 7 cliques (86%)**, não 100%. O sétimo clique e R$ 1,32 não aparecem no relatório de termos — pode ser termo não listado ou outra segmentação; **não dá para afirmar de onde veio**.

O próprio pacote já cita corretamente o valor `R$ 7,66 de R$ 8,98` na mesma frase — ou seja, o "100%" contradiz o número que está ao lado dele. A decisão de pausar a loose não muda.

**Correção:** `6 dos 7 cliques da Era (R$ 7,66 de R$ 8,98) vieram da loose-match`.

### C6 — §2 projeta setembro com o ritmo de outra janela

O pacote escreve: *"Setembro 01–08: R$ 108,08 ≈ 11% do teto; **ritmo da Era R$ 16,2/dia → projeção R$ 480–500/mês**."*

Projetar setembro pelo ritmo da **Era** (26/08–07/09) tendo o dado do próprio setembro em mãos é cruzar janelas. Setembro roda **mais barato** que a Era, porque a Era carrega 26–31/08:

| Base | R$/dia | Projeção do mês | % do teto |
|---|---:|---:|---:|
| Ritmo da Era | 16,23 | R$ 487 | 49% |
| **Setembro, 8 dias corridos** | **13,51** | **R$ 405** | **41%** |
| **Setembro, 7 dias completos** | **15,44** | **R$ 463** | **46%** |

**Correção:** projeção de **R$ 405 a R$ 463/mês (41% a 46% do teto)**, com a ressalva de que 08/09 é dia incompleto. A conclusão — folga ampla — não muda.

### Não auditável nesta fonte

**§3, lance da auto EGC = 0,84.** O relatório de Segmentação traz o campo `Lance do segmento` **vazio** nas 4 segmentações da EGC (herdam do grupo de anúncios). O valor vem da O4-012, não da fonte de hoje. Registrar como declarado, não como conferido.

### Lembrete que o pacote não incorporou

A divergência **SP-T / SP-01 na Manual Bituqueiras** (seção 9 desta auditoria) não aparece no pacote. O `CLAUDE.md` §12 diz que as duas seguem pausadas até a resolução do caso 21652133321, e as duas são anunciadas na Bituqueiras. Custo desprezível, mas é contradição de documentação em aberto — e o §14 do `CLAUDE.md` manda fechar antes de finalizar.

---

## 11. C7 — a PI PXM-o311/08 entrega; o diagnóstico disse o contrário (09/09)

Levantado pelo LEO no console, a pedido do O5-016.

**O que o diagnóstico afirmou** (bloco D e O5-016): *"0 impressões na Era com lance 1,10 em 52 alvos"* · *"Sem entrega na Era"* · decisão `INVESTIGAR ENTREGA`.

**O que as fontes dizem:**

| Fonte | Impressões | Cliques | Custo | Compras |
|---|---:|---:|---:|---:|
| Console, vitalício (print do LEO, 09/09) | **2.524** | — | R$ 5,50 | 1 (R$ 203,54 · ROAS 37,01) |
| `ads_vitalicio_segmentacao`, 52 alvos | **2.500** | 7 | R$ 5,50 | 1 |
| `ads_30d_campanhas` (08/08–06/09) | **638** | 1 | R$ 0,59 | 0 |

**Os 52 alvos têm impressão**, e vários entregam até **07/09** — dentro da Era (`B0DFX6CBZ6` 290 impr até 07/09 · `B0FDFDTF3D` 221 até 07/09 · `B0D82G2FKT` 94 até 07/09).

### Causa do erro

As impressões da Era foram derivadas como `cliques ÷ CTR`, porque o export do Gerenciador vem com a coluna zerada. **Com 0 cliques a conta é 0 ÷ 0 — indefinido, não zero.** O valor foi registrado como 0 e virou a premissa de "sem entrega".

O bloco B declarou a derivação como limitação. O que não estava previsto é que ela **falha silenciosamente no caso de zero cliques**: devolve um número que parece medição. **Regra que fica: campanha com 0 cliques no export não tem impressão derivável — o valor é DESCONHECIDO e precisa vir do relatório de segmentação ou do console.**

### Diagnóstico correto

Não é entrega. É **CTR**, com a mesma forma da EGC:

- **Entrega** ✅ 2.500 impressões vitalícias, 638 em 30d
- **CTR** ❌ **0,28% vitalício** (7/2.500) · **0,16% em 30d** (1/638)
- **Conversão** — os 7 cliques vitalícios geraram **1 compra de R$ 203,54** com R$ 5,50 de gasto (**ROAS 37,01**). Amostra de 1 venda: não é taxa, é ocorrência.

**O5-016 muda de `INVESTIGAR ENTREGA` para `CORRIGIR CTR / CRIATIVO`**, sem urgência — custo vitalício de R$ 5,50. Entra na O6 junto com a EGC, que tem o mesmo padrão (entrega destravada, CTR 0,13%).

**Não afeta O5-006.** A pausa da auto PXM-o425 se apoiava em redundância com a PI PXM-o3, entre outras — e a PI está de fato viva e convertendo. A redundância continua real.
