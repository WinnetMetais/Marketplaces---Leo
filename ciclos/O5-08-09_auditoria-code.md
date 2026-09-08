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
